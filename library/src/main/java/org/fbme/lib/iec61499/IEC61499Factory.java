package org.fbme.lib.iec61499;

import org.fbme.lib.common.Identifier;
import org.fbme.lib.iec61499.declarations.*;
import org.fbme.lib.iec61499.ecc.StateAction;
import org.fbme.lib.iec61499.ecc.StateDeclaration;
import org.fbme.lib.iec61499.ecc.StateTransition;
import org.fbme.lib.iec61499.fbnetwork.EntryKind;
import org.fbme.lib.iec61499.fbnetwork.FBNetworkConnection;
import org.fbme.lib.iec61499.fbnetwork.FunctionBlockDeclaration;
import org.fbme.lib.iec61499.fbnetwork.subapp.SubapplicationDeclaration;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

public interface IEC61499Factory {

    @NotNull AdapterTypeDeclaration createAdapterTypeDeclaration(@Nullable Identifier identifier);

    @NotNull AlgorithmDeclaration createAlgorithmDeclaration(@Nullable Identifier identifier);

    <BodyT extends AlgorithmBody> @NotNull BodyT createAlgorithmBody(@NotNull AlgorithmLanguage<BodyT> language);

    @NotNull ApplicationDeclaration createApplicationDeclaration(@Nullable Identifier identifier);

    @NotNull BasicFBTypeDeclaration createBasicFBTypeDeclaration(@Nullable Identifier identifier);

    @NotNull CompositeFBTypeDeclaration createCompositeFBTypeDeclaration(@Nullable Identifier identifier);

    @NotNull DeviceDeclaration createDeviceDeclaration(@Nullable Identifier identifier);

    @NotNull DeviceTypeDeclaration createDeviceTypeDeclaration(@Nullable Identifier identifier);

    @NotNull ParameterAssignment createParameterAssignment();

    @NotNull EventAssociation createEventAssociation();

    @NotNull EventDeclaration createEventDeclaration(@Nullable Identifier identifier);

    @NotNull FBTypeReference createFBTypeReference();

    @NotNull Link createLink();

    @NotNull Mapping createMapping();

    @NotNull ParameterDeclaration createParameterDeclaration(@Nullable Identifier identifier);

    @NotNull ResourceDeclaration createResourceDeclaration(@Nullable Identifier identifier);

    @NotNull ResourceTypeDeclaration createResourceTypeDeclaration(@Nullable Identifier identifier);

    @NotNull ResourceTypeReference createResourceTypeReference();

    @NotNull SegmentDeclaration createSegmentDeclaration(@Nullable Identifier identifier);

    @NotNull SegmentTypeDeclaration createSegmentTypeDeclaration(@Nullable Identifier identifier);

    @NotNull ServiceInterfaceFBTypeDeclaration createServiceInterfaceFBTypeDeclaration(@Nullable Identifier identifier);

    @NotNull SubapplicationTypeDeclaration createSubapplicationTypeDeclaration(@Nullable Identifier identifier);

    @NotNull SystemDeclaration createSystemDeclaration(@Nullable Identifier identifier);

    @NotNull StateAction createStateAction();

    @NotNull StateDeclaration createStateDeclaration(@Nullable Identifier identifier);

    @NotNull StateTransition createStateTransition();

    @NotNull FunctionBlockDeclaration createFunctionBlockDeclaration(@Nullable Identifier identifier);

    @NotNull SubapplicationDeclaration createSubapplicationDeclaration(@Nullable Identifier identifier);

    @NotNull PlugDeclaration createPlugDeclaration(@Nullable Identifier identifier);

    @NotNull SocketDeclaration createSocketDeclaration(@Nullable Identifier identifier);

    @NotNull FBNetworkConnection createFBNetworkConnection(@NotNull EntryKind connectionKind);
}
