package org.fbme.lib.iec61499

import org.fbme.lib.common.Identifier
import org.fbme.lib.iec61499.declarations.*
import org.fbme.lib.iec61499.ecc.StateAction
import org.fbme.lib.iec61499.ecc.StateDeclaration
import org.fbme.lib.iec61499.ecc.StateTransition
import org.fbme.lib.iec61499.fbnetwork.EndpointCoordinate
import org.fbme.lib.iec61499.fbnetwork.EntryKind
import org.fbme.lib.iec61499.fbnetwork.FBNetworkConnection
import org.fbme.lib.iec61499.fbnetwork.FunctionBlockDeclaration
import org.fbme.lib.iec61499.fbnetwork.subapp.SubapplicationDeclaration

interface IEC61499Factory {
    fun createAdapterTypeDeclaration(identifier: Identifier?): AdapterTypeDeclaration
    fun createAlgorithmDeclaration(identifier: Identifier?): AlgorithmDeclaration
    fun <BodyT : AlgorithmBody> createAlgorithmBody(language: AlgorithmLanguage<BodyT>): BodyT
    fun createApplicationDeclaration(identifier: Identifier?): ApplicationDeclaration
    fun createBasicFBTypeDeclaration(identifier: Identifier?): BasicFBTypeDeclaration
    fun createCompositeFBTypeDeclaration(identifier: Identifier?): CompositeFBTypeDeclaration
    fun createDeviceDeclaration(identifier: Identifier?): DeviceDeclaration
    fun createDeviceTypeDeclaration(identifier: Identifier?): DeviceTypeDeclaration
    fun createParameterAssignment(): ParameterAssignment
    fun createEventAssociation(): EventAssociation
    fun createEventDeclaration(identifier: Identifier?): EventDeclaration
    fun createFBTypeReference(): FBTypeReference
    fun createLink(): Link
    fun createMapping(): Mapping
    fun createParameterDeclaration(identifier: Identifier?): ParameterDeclaration
    fun createResourceDeclaration(identifier: Identifier?): ResourceDeclaration
    fun createResourceTypeDeclaration(identifier: Identifier?): ResourceTypeDeclaration
    fun createResourceTypeReference(): ResourceTypeReference
    fun createSegmentDeclaration(identifier: Identifier?): SegmentDeclaration
    fun createSegmentTypeDeclaration(identifier: Identifier?): SegmentTypeDeclaration
    fun createServiceInterfaceFBTypeDeclaration(identifier: Identifier?): ServiceInterfaceFBTypeDeclaration
    fun createSubapplicationTypeDeclaration(identifier: Identifier?): SubapplicationTypeDeclaration
    fun createSystemDeclaration(identifier: Identifier?): SystemDeclaration
    fun createStateAction(): StateAction
    fun createStateDeclaration(identifier: Identifier?): StateDeclaration
    fun createStateTransition(): StateTransition
    fun createFunctionBlockDeclaration(identifier: Identifier?): FunctionBlockDeclaration
    fun createSubapplicationDeclaration(identifier: Identifier?): SubapplicationDeclaration
    fun createPlugDeclaration(identifier: Identifier?): PlugDeclaration
    fun createSocketDeclaration(identifier: Identifier?): SocketDeclaration
    fun createFBNetworkConnection(connectionKind: EntryKind): FBNetworkConnection
    fun createEndpointCoordinate(): EndpointCoordinate
}
