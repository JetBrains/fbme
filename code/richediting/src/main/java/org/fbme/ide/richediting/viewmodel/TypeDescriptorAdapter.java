package org.fbme.ide.richediting.viewmodel;

import org.fbme.lib.common.Declaration;
import org.fbme.lib.iec61499.descriptors.FBPortDescriptor;
import org.fbme.lib.iec61499.descriptors.FBTypeDescriptor;
import org.fbme.lib.iec61499.fbnetwork.EntryKind;
import org.jetbrains.annotations.NotNull;

import java.util.ArrayList;
import java.util.List;

public class TypeDescriptorAdapter implements FBTypeDescriptor {
    private final FBTypeDescriptor myOriginal;
    private final BrokenPorts myBrokenPorts;

    public TypeDescriptorAdapter(FBTypeDescriptor original) {
        myOriginal = original;
        myBrokenPorts = new BrokenPorts();
    }

    public BrokenPorts getBrokenPorts() {
        return myBrokenPorts;
    }

    @Override
    public Declaration getDeclaration() {
        return myOriginal.getDeclaration();
    }

    @NotNull
    @Override
    public String getTypeName() {
        return myOriginal.getTypeName();
    }

    @NotNull
    @Override
    public List<FBPortDescriptor> getEventInputPorts() {
        List<FBPortDescriptor> ports = myOriginal.getEventInputPorts();
        ArrayList<FBPortDescriptor> list = new ArrayList<>(ports);
        int i = ports.size();
        for (String eventName : myBrokenPorts.inputEvents) {
            list.add(new FBPortDescriptor(eventName, EntryKind.EVENT, i++, true, false, null));
        }
        return list;
    }

    @NotNull
    @Override
    public List<FBPortDescriptor> getEventOutputPorts() {
        List<FBPortDescriptor> ports = myOriginal.getEventOutputPorts();
        ArrayList<FBPortDescriptor> list = new ArrayList<>(ports);
        int i = ports.size();
        for (String eventName : myBrokenPorts.outputEvents) {
            list.add(new FBPortDescriptor(eventName, EntryKind.EVENT, i++, false, false, null));
        }
        return list;
    }

    @NotNull
    @Override
    public List<FBPortDescriptor> getDataInputPorts() {
        List<FBPortDescriptor> ports = myOriginal.getDataInputPorts();
        ArrayList<FBPortDescriptor> list = new ArrayList<>(ports);
        int i = ports.size();
        for (String eventName : myBrokenPorts.inputDatas) {
            list.add(new FBPortDescriptor(eventName, EntryKind.DATA, i++, true, false, null));
        }
        return list;
    }

    @NotNull
    @Override
    public List<FBPortDescriptor> getDataOutputPorts() {
        List<FBPortDescriptor> ports = myOriginal.getDataOutputPorts();
        ArrayList<FBPortDescriptor> list = new ArrayList<>(ports);
        int i = ports.size();
        for (String eventName : myBrokenPorts.outputDatas) {
            list.add(new FBPortDescriptor(eventName, EntryKind.DATA, i++, false, false, null));
        }
        return list;
    }

    @NotNull
    @Override
    public List<FBPortDescriptor> getSocketPorts() {
        List<FBPortDescriptor> ports = myOriginal.getSocketPorts();
        ArrayList<FBPortDescriptor> list = new ArrayList<>(ports);
        int i = ports.size();
        for (String eventName : myBrokenPorts.sockets) {
            list.add(new FBPortDescriptor(eventName, EntryKind.ADAPTER, i++, true, false, null));
        }
        return list;
    }

    @NotNull
    @Override
    public List<FBPortDescriptor> getPlugPorts() {
        List<FBPortDescriptor> ports = myOriginal.getPlugPorts();
        ArrayList<FBPortDescriptor> list = new ArrayList<>(ports);
        int i = ports.size();
        for (String eventName : myBrokenPorts.plugs) {
            list.add(new FBPortDescriptor(eventName, EntryKind.ADAPTER, i++, true, false, null));
        }
        return list;
    }

    @NotNull
    @Override
    public List<Integer> getAssociatedVariablesForInputEvent(int eventNumber) {
        return myOriginal.getAssociatedVariablesForInputEvent(eventNumber);
    }

    @NotNull
    @Override
    public List<Integer> getAssociatedVariablesForOutputEvent(int eventNumber) {
        return myOriginal.getAssociatedVariablesForOutputEvent(eventNumber);
    }

    public static class BrokenPorts {
        public final List<String> inputEvents = new ArrayList<>();
        public final List<String> outputEvents = new ArrayList<>();
        public final List<String> inputDatas = new ArrayList<>();
        public final List<String> outputDatas = new ArrayList<>();
        public final List<String> plugs = new ArrayList<>();
        public final List<String> sockets = new ArrayList<>();
    }
}
