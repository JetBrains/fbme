package org.fbme.lib.iec61499.descriptors;


import org.fbme.lib.iec61499.declarations.AdapterTypeDeclaration;
import org.fbme.lib.iec61499.declarations.NamedDeclaration;
import org.jetbrains.annotations.Nullable;

import java.util.Collections;
import java.util.List;

public class PlugType implements FBTypeDescriptor {

    private final AdapterTypeDeclaration myAdapter;

    public PlugType(AdapterTypeDeclaration adapter) {
        myAdapter = adapter;
    }

    @Override
    public String getTypeName() {
        return myAdapter.getTypeName();
    }

    @Override
    public List<FBPortDescriptor> getEventInputPorts() {
        return myAdapter.getEventOutputPorts();
    }

    @Override
    public List<FBPortDescriptor> getEventOutputPorts() {
        return myAdapter.getEventInputPorts();
    }

    @Override
    public List<FBPortDescriptor> getDataInputPorts() {
        return myAdapter.getDataOutputPorts();
    }

    @Override
    public List<FBPortDescriptor> getDataOutputPorts() {
        return myAdapter.getDataInputPorts();
    }

    @Override
    public List<FBPortDescriptor> getSocketPorts() {
        return Collections.emptyList();
    }

    @Override
    public List<FBPortDescriptor> getPlugPorts() {
        return Collections.emptyList();
    }

    @Override
    public List<Integer> getAssociatedVariablesForInputEvent(int eventNumber) {
        return myAdapter.getAssociatedVariablesForOutputEvent(eventNumber);
    }

    @Override
    public List<Integer> getAssociatedVariablesForOutputEvent(int eventNumber) {
        return myAdapter.getAssociatedVariablesForInputEvent(eventNumber);
    }

    @Nullable
    @Override
    public NamedDeclaration getDeclaration() {
        return myAdapter;
    }
}
