package org.fbme.lib.iec61499;

import org.fbme.lib.iec61499.declarations.*;
import org.fbme.lib.iec61499.ecc.ECAction;
import org.fbme.lib.iec61499.ecc.ECState;
import org.fbme.lib.iec61499.ecc.ECTransition;
import org.fbme.lib.iec61499.fbnetwork.EntryKind;
import org.fbme.lib.iec61499.fbnetwork.FBNetworkConnection;
import org.fbme.lib.iec61499.fbnetwork.FunctionBlockDeclaration;
import org.fbme.lib.iec61499.fbnetwork.subapp.SubapplicationDeclaration;
import org.jetbrains.annotations.NotNull;

public interface DeclarationFactory {

    @NotNull AdapterTypeDeclaration createAdapterTypeDeclaration();

    @NotNull ApplicationDeclaration createApplicationDeclaration();

    @NotNull BasicFBTypeDeclaration createBasicFBTypeDeclaration();

    @NotNull CompositeFBTypeDeclaration createCompositeFBTypeDeclaration();

    @NotNull DeviceDeclaration createDeviceDeclaration();

    @NotNull DeviceTypeDeclaration createDeviceTypeDeclaration();

    @NotNull ParameterAssignment createParameterAssignment();

    @NotNull EventDeclaration createEventDeclaration();

    @NotNull EventAssociation createEventAssociation();

    @NotNull ParameterDeclaration createParameterDeclaration();

    @NotNull ResourceDeclaration createResourceDeclaration();

    @NotNull ResourceTypeDeclaration createResourceTypeDeclaration();

    @NotNull ServiceInterfaceFBTypeDeclaration createServiceInterfaceFBTypeDeclaration();

    @NotNull SubapplicationTypeDeclaration createSubapplicationTypeDeclaration();

    @NotNull SystemDeclaration createSystemDeclaration();

    @NotNull ECAction createECAction();

    @NotNull ECState createECState();

    @NotNull ECTransition createECTransition();

    @NotNull FunctionBlockDeclaration createFunctionBlockDeclaration();

    @NotNull SubapplicationDeclaration createSubapplicationDeclaration();

    @NotNull PlugDeclaration createPlugDeclaration();

    @NotNull SocketDeclaration createSocketDeclaration();

    @NotNull FBNetworkConnection createFBNetworkConnection(@NotNull EntryKind connectionKind);
}
