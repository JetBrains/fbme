package org.fbme.lib.iec61499.descriptors;

import org.fbme.lib.iec61499.declarations.FBInterfaceDeclarationWithAdapters;
import org.fbme.lib.common.Declaration;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

import java.util.List;

public class FBType implements FBTypeDescriptor {

    private final FBInterfaceDeclarationWithAdapters myDeclaration;

    public FBType(FBInterfaceDeclarationWithAdapters declaration) {
        myDeclaration = declaration;
    }

    @Override
    public @NotNull String getTypeName() {
        return myDeclaration.getName();
    }

    @Override
    public @Nullable Declaration getDeclaration() {
        return myDeclaration;
    }

    @Override
    public @NotNull List<FBPortDescriptor> getEventInputPorts() {
        return FBTypeDescriptorUtils.getEventInputPorts(myDeclaration);
    }

    @Override
    public @NotNull List<FBPortDescriptor> getEventOutputPorts() {
        return FBTypeDescriptorUtils.getEventOutputPorts(myDeclaration);
    }

    @Override
    public @NotNull List<FBPortDescriptor> getDataInputPorts() {
        return FBTypeDescriptorUtils.getDataInputPorts(myDeclaration);
    }

    @Override
    public @NotNull List<FBPortDescriptor> getDataOutputPorts() {
        return FBTypeDescriptorUtils.getDataOutputPorts(myDeclaration);
    }

    @Override
    public @NotNull List<FBPortDescriptor> getSocketPorts() {
        return FBTypeDescriptorUtils.getSocketPorts(myDeclaration);
    }

    @Override
    public @NotNull List<FBPortDescriptor> getPlugPorts() {
        return FBTypeDescriptorUtils.getPlugPorts(myDeclaration);
    }

    @Override
    public @NotNull List<Integer> getAssociatedVariablesForInputEvent(int eventNumber) {
        return FBTypeDescriptorUtils.getAssociatedVariablesForInputEvent(myDeclaration, eventNumber);
    }

    @Override
    public @NotNull List<Integer> getAssociatedVariablesForOutputEvent(int eventNumber) {
        return FBTypeDescriptorUtils.getAssociatedVariablesForOutputEvent(myDeclaration, eventNumber);
    }
}
