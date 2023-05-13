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
    private val myRepository: PlatformRepository,
    private val myModel: SModel?
) : DeclarationsScope {
    override fun findCompositeFBTypeDeclaration(identifier: Identifier): CompositeFBTypeDeclaration? {
        return findNode(identifier)?.let { myRepository.getAdapter(it, CompositeFBTypeDeclaration::class.java) }
    }

    override fun findCATBlockTypeDeclaration(identifier: Identifier): CATBlockTypeDeclaration? {
        return findNode(identifier)?.let {myRepository.getAdapter(it, CATBlockTypeDeclaration::class.java)}
    }

    override fun findBasicFBTypeDeclaration(identifier: Identifier): BasicFBTypeDeclaration? {
        return findNode(identifier)?.let { myRepository.getAdapter(it, BasicFBTypeDeclaration::class.java) }
    }

    override fun findServiceFBTypeDeclaration(identifier: Identifier): ServiceInterfaceFBTypeDeclaration? {
        return findNode(identifier)?.let { myRepository.getAdapter(it, ServiceInterfaceFBTypeDeclaration::class.java) }
    }

    override fun findAdapterTypeDeclaration(identifier: Identifier): AdapterTypeDeclaration? {
        return findNode(identifier)?.let { myRepository.getAdapter(it, AdapterTypeDeclaration::class.java) }
    }

    override fun findSubapplicationTypeDeclaration(identifier: Identifier): SubapplicationTypeDeclaration? {
        return findNode(identifier)?.let { myRepository.getAdapter(it, SubapplicationTypeDeclaration::class.java) }
    }

    override fun findSystemDeclaration(identifier: Identifier): SystemDeclaration? {
        return findNode(identifier)?.let { myRepository.getAdapter(it, SystemDeclaration::class.java) }
    }

    override fun findDeviceDeclaration(identifier: Identifier): DeviceDeclaration? {
        return findNode(identifier)?.let { myRepository.getAdapter(it, DeviceDeclaration::class.java) }
    }

    override fun findResourceDeclaration(identifier: Identifier): ResourceDeclaration? {
        return findNode(identifier)?.let { myRepository.getAdapter(it, ResourceDeclaration::class.java) }
    }

    override fun findFunctionBlockDeclaration(identifier: Identifier): FunctionBlockDeclaration? {
        return findNode(identifier)?.let { myRepository.getAdapter(it, FunctionBlockDeclaration::class.java) }
    }

    override fun findAllFBTypeDeclarations(): List<FBTypeDeclaration> {
        return myRepository.mpsRepository.modules
            .flatMap { it.models }
            .filter {
                myModel == null ||
                    myModel.reference == it.reference ||
                    ModelImports(myModel).importedModels.contains(it.reference)
            }
            .flatMap { it.rootNodes }
            .mapNotNull { myRepository.getAdapter(it, FBTypeDeclaration::class.java) }
    }

    private fun findNode(identifier: Identifier): SNode? {
        val node = getNodeReference(identifier).resolve(myRepository.mpsRepository) ?: return null
        if (myModel == null) {
            return node
        }
        val reference = requireNotNull(node.model).reference
        return node.takeIf { myModel.reference == reference || ModelImports(myModel).importedModels.contains(reference) }
    }

    private fun getNodeReference(identifier: Identifier): SNodeReference {
        if (identifier is PlatformIdentifier) {
            return identifier.reference
        }
        throw IllegalArgumentException("Only PlatformIdentifier is supported. Got " + identifier.javaClass)
    }
}
