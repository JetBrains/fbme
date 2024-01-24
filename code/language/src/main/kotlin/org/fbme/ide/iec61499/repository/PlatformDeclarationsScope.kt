package org.fbme.ide.iec61499.repository

import jetbrains.mps.smodel.ModelImports
import org.fbme.lib.common.Identifier
import org.fbme.lib.iec61499.DeclarationsScope
import org.fbme.lib.iec61499.declarations.*
import org.fbme.lib.iec61499.fbnetwork.FunctionBlockDeclaration
import org.jetbrains.mps.openapi.model.SModel
import org.jetbrains.mps.openapi.model.SNode
import org.jetbrains.mps.openapi.model.SNodeReference

internal class PlatformDeclarationsScope(
    private val repository: PlatformRepository,
    private val model: SModel?,
) : DeclarationsScope {

    override fun findCompositeFBTypeDeclaration(identifier: Identifier): CompositeFBTypeDeclaration? {
        return findNode(identifier)?.let { repository.adapterOrNull(it) }
    }

    override fun findCATBlockTypeDeclaration(identifier: Identifier): CATBlockTypeDeclaration? {
        return findNode(identifier)?.let {repository.getAdapter(it, CATBlockTypeDeclaration::class.java)}
    }

    override fun findBasicFBTypeDeclaration(identifier: Identifier): BasicFBTypeDeclaration? {
        return findNode(identifier)?.let { repository.adapterOrNull(it) }
    }

    override fun findServiceFBTypeDeclaration(identifier: Identifier): ServiceInterfaceFBTypeDeclaration? {
        return findNode(identifier)?.let { repository.adapterOrNull(it) }
    }

    override fun findAdapterTypeDeclaration(identifier: Identifier): AdapterTypeDeclaration? {
        return findNode(identifier)?.let { repository.adapterOrNull(it) }
    }

    override fun findSubapplicationTypeDeclaration(identifier: Identifier): SubapplicationTypeDeclaration? {
        return findNode(identifier)?.let { repository.adapterOrNull(it) }
    }

    override fun findSystemDeclaration(identifier: Identifier): SystemDeclaration? {
        return findNode(identifier)?.let { repository.adapterOrNull(it) }
    }

    override fun findDeviceDeclaration(identifier: Identifier): DeviceDeclaration? {
        return findNode(identifier)?.let { repository.adapterOrNull(it) }
    }

    override fun findResourceDeclaration(identifier: Identifier): ResourceDeclaration? {
        return findNode(identifier)?.let { repository.adapterOrNull(it) }
    }

    override fun findFunctionBlockDeclaration(identifier: Identifier): FunctionBlockDeclaration? {
        return findNode(identifier)?.let { repository.adapterOrNull(it) }
    }

    override fun findAllFBTypeDeclarations(): List<FBTypeDeclaration> {
        return repository.mpsRepository.modules
            .flatMap { it.models }
            .filter {
                model == null ||
                        model.reference == it.reference ||
                        ModelImports(model).importedModels.contains(it.reference)
            }
            .flatMap { it.rootNodes }
            .mapNotNull { repository.adapterOrNull<FBTypeDeclaration>(it) }
    }

    private fun findNode(identifier: Identifier): SNode? {
        val node = getNodeReference(identifier).resolve(repository.mpsRepository) ?: return null

        model ?: return node

        val reference = requireNotNull(node.model).reference
        return node.takeIf { model.reference == reference || ModelImports(model).importedModels.contains(reference) }
    }

    private fun getNodeReference(identifier: Identifier): SNodeReference {
        if (identifier is PlatformIdentifier) {
            return identifier.reference
        }
        throw IllegalArgumentException("Only PlatformIdentifier is supported. Got " + identifier.javaClass)
    }
}
