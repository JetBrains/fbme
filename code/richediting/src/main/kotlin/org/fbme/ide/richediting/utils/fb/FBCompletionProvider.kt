package org.fbme.ide.richediting.utils.fb

import com.intellij.openapi.project.Project
import com.intellij.openapi.ui.InputValidator
import com.intellij.openapi.ui.Messages
import com.intellij.util.alsoIfNull
import jetbrains.mps.openapi.editor.EditorContext
import org.fbme.ide.iec61499.repository.PlatformElement
import org.fbme.ide.iec61499.repository.PlatformRepositoryProvider
import org.fbme.ide.richediting.RicheditingMpsBridge
import org.fbme.ide.richediting.utils.Notifier
import org.fbme.ide.richediting.utils.ProjectProvider
import org.fbme.ide.richediting.utils.exceptions.CreationException
import org.fbme.lib.common.StringIdentifier
import org.fbme.lib.iec61499.declarations.FBTypeDeclaration
import org.fbme.lib.iec61499.instances.NetworkInstance
import org.fbme.scenes.viewmodel.PositionalCompletionItem
import java.util.LinkedList

object FBCompletionProvider {
    fun getCompletionItems(
            networkInstance: NetworkInstance,
            context: EditorContext
    ): List<PositionalCompletionItem> {
        val result: MutableList<PositionalCompletionItem> = LinkedList()

        val project = ProjectProvider.getInstance(context).alsoIfNull {
            Notifier.showWarning("Can't get project from context!")
        } ?: return result

        val scale = RicheditingMpsBridge.getEditorScale(project)
        val repository = PlatformRepositoryProvider.getInstance(project)
        val factory = repository.iec61499Factory
        val network = networkInstance.networkDeclaration
        val scope = repository.getDeclarationScopeFor(
                (network as PlatformElement).node.model
        )

        val allFBTypes = scope.findAllFBTypeDeclarations()
        val existedFBNames = allFBTypes.map { it.name }.toSet()

        val invokeFun: (type: FBTypeDeclaration) -> (String?, Int, Int) -> Unit = { type ->
            { _: String?, x: Int, y: Int ->
                val declaration = factory.createFunctionBlockDeclaration(StringIdentifier(type.name))
                declaration.x = (x / scale).toInt()
                declaration.y = (y / scale).toInt()
                declaration.typeReference.setTarget(type)
                network.functionBlocks.add(declaration)
            }
        }

        val createNewType: (
                type: String,
                factory: (name: String, context: EditorContext) -> FBTypeDeclaration
                ) -> PositionalCompletionItem = {
                    typeName, factoryFun ->
            createPositionalCompletionItem(
                    "New $typeName FB",
                    "Creates empty $typeName FB"
            ){
                parameter: String?, x: Int, y: Int ->
                val type = createNewCompositeBlock(
                        project.project,
                        context,
                        existedFBNames,
                        factoryFun
                ) ?: return@createPositionalCompletionItem
                invokeFun(type)(parameter, x, y)
            }
        }

        allFBTypes.sortedBy { it.name }.forEach { type ->
            result.add(createPositionalCompletionItem(type.name, invokeFun = invokeFun(type)))
        }

        result.add(createNewType("basic", FBFactory::createBasicFunBlock))
        result.add(createNewType("composite", FBFactory::createCompositeFunBlock))

        return result
    }

    private fun createNewCompositeBlock(
            project: Project,
            context: EditorContext,
            existedFBNames: Set<String>,
            factory: (name: String, context: EditorContext) -> FBTypeDeclaration
    ): FBTypeDeclaration? {
        val inputValidator = object : InputValidator {
            override fun checkInput(text: String?): Boolean = !existedFBNames.contains(text)

            override fun canClose(text: String?): Boolean = true
        }
        val name = Messages.showInputDialog(
                project,
                "Enter name for new functional block",
                null, Messages.getQuestionIcon(),
                null,
                inputValidator
        ) ?: return null

        return try {
            factory(name, context)
        } catch (e: CreationException) {
            Notifier.showWarning("Can't create new functional block!", project)
            null
        }
    }

    private fun createPositionalCompletionItem(
            name: String,
            description: String? = null,
            invokeFun: (pattern: String?, x: Int, y: Int) -> Unit
    ): PositionalCompletionItem {
        return object : PositionalCompletionItem {
            override fun getMatchingText(pattern: String?): String = name

            override val descriptionText: String = description ?: ""

            override fun invoke(pattern: String?, x: Int, y: Int) = invokeFun(pattern, x, y)
        }
    }
}
