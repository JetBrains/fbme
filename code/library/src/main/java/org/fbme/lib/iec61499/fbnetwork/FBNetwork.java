package org.fbme.lib.iec61499.fbnetwork;

import org.fbme.lib.common.Declaration;
import org.fbme.lib.common.Element;
import org.fbme.lib.iec61499.declarations.*;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

import java.util.ArrayList;
import java.util.List;

public interface FBNetwork extends Element {

    @NotNull /*readonly*/ List<FunctionBlockDeclarationBase> getContextComponents();

    @NotNull /*readonly*/ List<ParameterDeclaration> getContextDataSources();

    @NotNull /*readonly*/ List<ParameterDeclaration> getContextDataDestinations();

    @NotNull /*readonly*/ List<EventDeclaration> getContextEventSources();

    @NotNull /*readonly*/ List<EventDeclaration> getContextEventDestinations();

    @NotNull List<FunctionBlockDeclaration> getFunctionBlocks();

    @NotNull List<FBNetworkConnection> getDataConnections();

    @NotNull List<FBNetworkConnection> getEventConnections();

    @NotNull List<FBNetworkConnection> getAdapterConnections();

    @Nullable FBNetwork getPrototype();

    static @Nullable FBNetwork extractNetwork(@Nullable Declaration declaration) {
        if (declaration instanceof CompositeFBTypeDeclaration) {
            return ((CompositeFBTypeDeclaration) declaration).getNetwork();
        }
        if (declaration instanceof SubapplicationTypeDeclaration) {
            return ((SubapplicationTypeDeclaration) declaration).getNetwork();
        }
        if (declaration instanceof ApplicationDeclaration) {
            return ((ApplicationDeclaration) declaration).getNetwork();
        }
        if (declaration instanceof ResourceDeclaration) {
            return ((ResourceDeclaration) declaration).getNetwork();
        }
        if (declaration instanceof ResourceTypeDeclaration) {
            return ((ResourceTypeDeclaration) declaration).getNetwork();
        }
        return null;
    }

    default List<FunctionBlockDeclarationBase> getAllComponents() {
        ArrayList<FunctionBlockDeclarationBase> components = new ArrayList<>();
        components.addAll(getFunctionBlocks());
        components.addAll(getContextComponents());
        FBNetwork prototype = getPrototype();
        if (prototype != null) {
            components.addAll(prototype.getAllComponents());
        }
        return components;
    }
}
