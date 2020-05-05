package org.fbme.lib.iec61499.descriptors;

import org.fbme.lib.iec61499.declarations.FBInterfaceDeclarationWithAdapters;
import org.fbme.lib.iec61499.declarations.NamedDeclaration;
import org.jetbrains.annotations.Nullable;

import java.util.List;

public class FBType implements FBTypeDescriptor {

    private final FBInterfaceDeclarationWithAdapters myDeclaration;

    public FBType(FBInterfaceDeclarationWithAdapters declaration) {
        myDeclaration = declaration;
    }

    @Override
    public String getTypeName() {
        return myDeclaration.getName();
    }

    @Override
    public @Nullable NamedDeclaration getDeclaration() {
        return myDeclaration;
    }

    @Override
    public List<FBPortDescriptor> getEventInputPorts() {
        return FBTypeDescriptorUtils.getEventInputPorts(myDeclaration);
    }

    @Override
    public List<FBPortDescriptor> getEventOutputPorts() {
        return FBTypeDescriptorUtils.getEventOutputPorts(myDeclaration);
    }

    @Override
    public List<FBPortDescriptor> getDataInputPorts() {
        return FBTypeDescriptorUtils.getDataInputPorts(myDeclaration);
    }

    @Override
    public List<FBPortDescriptor> getDataOutputPorts() {
        return FBTypeDescriptorUtils.getDataOutputPorts(myDeclaration);
    }

    @Override
    public List<FBPortDescriptor> getSocketPorts() {
        return FBTypeDescriptorUtils.getSocketPorts(myDeclaration);
    }

    @Override
    public List<FBPortDescriptor> getPlugPorts() {
        return FBTypeDescriptorUtils.getPlugPorts(myDeclaration);
    }

    @Override
    public List<Integer> getAssociatedVariablesForInputEvent(int eventNumber) {
        return FBTypeDescriptorUtils.getAssociatedVariablesForInputEvent(myDeclaration, eventNumber);
    }

    @Override
    public List<Integer> getAssociatedVariablesForOutputEvent(int eventNumber) {
        return FBTypeDescriptorUtils.getAssociatedVariablesForOutputEvent(myDeclaration, eventNumber);
    }
}
