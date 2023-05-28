package org.fbme.ide.richediting.utils.fb

import jetbrains.mps.openapi.editor.EditorContext
import org.fbme.ide.iec61499.repository.PlatformElement
import org.fbme.ide.iec61499.repository.PlatformRepositoryProvider
import org.fbme.ide.richediting.utils.ProjectProvider
import org.fbme.ide.richediting.utils.exceptions.CreationException
import org.fbme.lib.common.Identifier
import org.fbme.lib.common.StringIdentifier
import org.fbme.lib.iec61499.IEC61499Factory
import org.fbme.lib.iec61499.declarations.BasicFBTypeDeclaration
import org.fbme.lib.iec61499.declarations.CompositeFBTypeDeclaration
import kotlin.jvm.Throws

object FBFactory {
    @Throws(CreationException::class)
    fun createCompositeFunBlock(name: String, context: EditorContext): CompositeFBTypeDeclaration {
        return createBlock(name, context) {
            iec61499Factory, identifier -> iec61499Factory.createCompositeFBTypeDeclaration(identifier)
        }
    }

    @Throws(CreationException::class)
    fun createBasicFunBlock(name: String, context: EditorContext): BasicFBTypeDeclaration {
        return createBlock(name, context) {
            iec61499Factory, identifier -> iec61499Factory.createBasicFBTypeDeclaration(identifier)
        }
    }

    @Throws(CreationException::class)
    private fun <T> createBlock(
            name: String,
            context: EditorContext,
            creator: (iec61499Factory: IEC61499Factory, identifier: Identifier) -> T
    ) : T {
        val identifier = StringIdentifier(name)

        val project = ProjectProvider.getInstance(context) ?: throw CreationException("Can't get project from context")

        val repository = PlatformRepositoryProvider.getInstance(project)
        val model = context.model

        val createdType = creator(repository.iec61499Factory, identifier)
        model.addRootNode((createdType as PlatformElement).node)

        return createdType
    }
}
