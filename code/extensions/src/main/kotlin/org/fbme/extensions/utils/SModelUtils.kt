package org.fbme.extensions.utils

import jetbrains.mps.smodel.ModelImports
import jetbrains.mps.smodel.SNodeUtil
import org.fbme.ide.iec61499.repository.PlatformElement
import org.fbme.ide.iec61499.repository.PlatformRepository
import org.fbme.lib.common.Declaration
import org.fbme.lib.iec61499.declarations.FBTypeDeclaration
import org.jetbrains.mps.openapi.model.SModel

class SModelUtils(
    private val owner: PlatformRepository,
) {
    fun getFBTypeFrom4diacModel(
        currentModel: SModel,
        nodeName: String,
    ): FBTypeDeclaration = owner.adapter(
        ModelImports(currentModel).importedModels
            .first { it.modelName == MODEL_4DIAC_NAME }
            .resolve(owner.mpsRepository)
            .rootNodes
            .first { it.name == nodeName }
    )

    inline fun <reified T: Declaration> findOneDeclarationOrNull(
        name: String,
        model: SModel,
    ): T? = findDeclarations(setOf(name), model).singleOrNull() as? T

    fun findDeclarations(
        names: Collection<String>,
        model: SModel,
    ): List<Declaration> = model.rootNodes.asSequence()
        .mapNotNull {
            if (it.name !in names) {
                null
            } else {
                owner.adapter<Declaration>(it)
            }
        }
        .toList()

    fun addDeclarationToModel(declaration: Declaration?, model: SModel, virtualPackage: String? = null) =
        addDeclarationsToModel(declaration, model = model, virtualPackage = virtualPackage)

    fun addDeclarationsToModel(
        vararg declarations: Declaration?,
        model: SModel,
        virtualPackage: String? = null,
    ) {
        val distinctDeclarations = declarations.filterNotNull().associateBy { it.name }
        val existedNodes = model.rootNodes.filter { it.name in distinctDeclarations }
        for (node in existedNodes) {
            node.delete()
        }

        for (declaration in distinctDeclarations.values) {
            val node = (declaration as PlatformElement).node
            if (!virtualPackage.isNullOrEmpty()) {
                node.setProperty(SNodeUtil.property_BaseConcept_virtualPackage, virtualPackage)
            }
            model.addRootNode(node)
        }
    }
}

private const val MODEL_4DIAC_NAME = "iec61499.4diac.stdlib"
