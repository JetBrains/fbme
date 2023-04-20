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
        return myRepository.getAdapter(findNode(identifier), CompositeFBTypeDeclaration::class.java)
    }

    override fun findBasicFBTypeDeclaration(identifier: Identifier): BasicFBTypeDeclaration? {
        return myRepository.getAdapter(findNode(identifier), BasicFBTypeDeclaration::class.java)
    }

    override fun findServiceFBTypeDeclaration(identifier: Identifier): ServiceInterfaceFBTypeDeclaration? {
        return myRepository.getAdapter(findNode(identifier), ServiceInterfaceFBTypeDeclaration::class.java)
    }

    override fun findAdapterTypeDeclaration(identifier: Identifier): AdapterTypeDeclaration? {
        return myRepository.getAdapter(findNode(identifier), AdapterTypeDeclaration::class.java)
    }

    override fun findSubapplicationTypeDeclaration(identifier: Identifier): SubapplicationTypeDeclaration? {
        return myRepository.getAdapter(findNode(identifier), SubapplicationTypeDeclaration::class.java)
    }

    override fun findSystemDeclaration(identifier: Identifier): SystemDeclaration? {
        return myRepository.getAdapter(findNode(identifier), SystemDeclaration::class.java)
    }

    override fun findDeviceDeclaration(identifier: Identifier): DeviceDeclaration? {
        return myRepository.getAdapter(findNode(identifier), DeviceDeclaration::class.java)
    }

    override fun findResourceDeclaration(identifier: Identifier): ResourceDeclaration? {
        return myRepository.getAdapter(findNode(identifier), ResourceDeclaration::class.java)
    }

    override fun findFunctionBlockDeclaration(identifier: Identifier): FunctionBlockDeclaration? {
        return myRepository.getAdapter(findNode(identifier), FunctionBlockDeclaration::class.java)
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
