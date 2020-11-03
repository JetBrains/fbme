package org.fbme.lib.iec61499.descriptors;


import org.fbme.lib.iec61499.declarations.AdapterTypeDeclaration;
import org.fbme.lib.common.Declaration;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

import java.util.Collections;
import java.util.List;

public class PlugType implements FBTypeDescriptor {

    private final AdapterTypeDeclaration myDeclaration;

    public PlugType(AdapterTypeDeclaration declaration) {
        myDeclaration = declaration;
    }

    @Override
    public @NotNull String getTypeName() {
        return myDeclaration.getName();
    }

    @Nullable
    @Override
    public Declaration getDeclaration() {
        return myDeclaration;
    }

    @Override
    public @NotNull List<FBPortDescriptor> getEventInputPorts() {
        return FBTypeDescriptorUtils.getEventOutputPorts(myDeclaration);
    }

    @Override
    public @NotNull List<FBPortDescriptor> getEventOutputPorts() {
        return FBTypeDescriptorUtils.getEventInputPorts(myDeclaration);
    }

    @Override
    public @NotNull List<FBPortDescriptor> getDataInputPorts() {
        return FBTypeDescriptorUtils.getDataOutputPorts(myDeclaration);
    }

    @Override
    public @NotNull List<FBPortDescriptor> getDataOutputPorts() {
        return FBTypeDescriptorUtils.getDataInputPorts(myDeclaration);
    }

    @Override
    public @NotNull List<FBPortDescriptor> getSocketPorts() {
        return Collections.emptyList();
    }

    @Override
    public @NotNull List<FBPortDescriptor> getPlugPorts() {
        return Collections.emptyList();
    }

    @Override
    public @NotNull List<Integer> getAssociatedVariablesForInputEvent(int eventNumber) {
        return FBTypeDescriptorUtils.getAssociatedVariablesForOutputEvent(myDeclaration, eventNumber);
    }

    @Override
    public @NotNull List<Integer> getAssociatedVariablesForOutputEvent(int eventNumber) {
        return FBTypeDescriptorUtils.getAssociatedVariablesForInputEvent(myDeclaration, eventNumber);
    }
}
