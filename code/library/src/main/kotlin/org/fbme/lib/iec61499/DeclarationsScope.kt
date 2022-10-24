package org.fbme.lib.iec61499

import org.fbme.lib.common.Identifier
import org.fbme.lib.iec61499.declarations.*
import org.fbme.lib.iec61499.fbnetwork.FunctionBlockDeclaration

interface DeclarationsScope {
    fun findCompositeFBTypeDeclaration(identifier: Identifier): CompositeFBTypeDeclaration?
    fun findBasicFBTypeDeclaration(identifier: Identifier): BasicFBTypeDeclaration?
    fun findServiceFBTypeDeclaration(identifier: Identifier): ServiceInterfaceFBTypeDeclaration?
    fun findAdapterTypeDeclaration(identifier: Identifier): AdapterTypeDeclaration?
    fun findSubapplicationTypeDeclaration(identifier: Identifier): SubapplicationTypeDeclaration?
    fun findSystemDeclaration(identifier: Identifier): SystemDeclaration?
    fun findDeviceDeclaration(identifier: Identifier): DeviceDeclaration?
    fun findResourceDeclaration(identifier: Identifier): ResourceDeclaration?
    fun findFunctionBlockDeclaration(identifier: Identifier): FunctionBlockDeclaration?
    fun findAllFBTypeDeclarations(): List<FBTypeDeclaration>
}
