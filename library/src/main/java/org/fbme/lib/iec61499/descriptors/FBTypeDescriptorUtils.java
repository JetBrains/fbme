package org.fbme.lib.iec61499.descriptors;

import org.fbme.lib.iec61499.declarations.*;
import org.fbme.lib.iec61499.fbnetwork.EntryKind;
import org.jetbrains.annotations.NotNull;

import java.util.ArrayList;
import java.util.List;

class FBTypeDescriptorUtils {

    private FBTypeDescriptorUtils() {
    }

    public static @NotNull List<FBPortDescriptor> getEventInputPorts(@NotNull FBInterfaceDeclaration declaration) {
        List<FBPortDescriptor> res = new ArrayList<>();
        List<EventDeclaration> inputEvents = declaration.getInputEvents();
        for (int i = 0; i < inputEvents.size(); i++) {
            EventDeclaration eventDeclaration = inputEvents.get(i);
            res.add(new FBPortDescriptor(eventDeclaration.getName(), EntryKind.EVENT, i, true, true));
        }
        return res;
    }

    public static @NotNull List<FBPortDescriptor> getEventOutputPorts(@NotNull FBInterfaceDeclaration declaration) {
        List<FBPortDescriptor> res = new ArrayList<>();
        List<EventDeclaration> outputEvents = declaration.getOutputEvents();
        for (int i = 0; i < outputEvents.size(); i++) {
            EventDeclaration eventDeclaration = outputEvents.get(i);
            res.add(new FBPortDescriptor(eventDeclaration.getName(), EntryKind.EVENT, i, false, true));
        }
        return res;
    }

    public static @NotNull List<FBPortDescriptor> getDataInputPorts(@NotNull FBInterfaceDeclaration declaration) {
        List<FBPortDescriptor> res = new ArrayList<>();
        List<ParameterDeclaration> inputParameters = declaration.getInputParameters();
        for (int i = 0; i < inputParameters.size(); i++) {
            ParameterDeclaration parameterDeclaration = inputParameters.get(i);
            res.add(new FBPortDescriptor(parameterDeclaration.getName(), EntryKind.DATA, i, true, true));
        }
        return res;
    }


    public static @NotNull List<FBPortDescriptor> getDataOutputPorts(@NotNull FBInterfaceDeclaration declaration) {
        List<FBPortDescriptor> res = new ArrayList<>();
        List<ParameterDeclaration> outputParameters = declaration.getOutputParameters();
        for (int i = 0; i < outputParameters.size(); i++) {
            ParameterDeclaration parameterDeclaration = outputParameters.get(i);
            res.add(new FBPortDescriptor(parameterDeclaration.getName(), EntryKind.DATA, i, false, true));
        }
        return res;
    }

    public static @NotNull List<FBPortDescriptor> getSocketPorts(@NotNull FBInterfaceDeclarationWithAdapters declaration) {
        List<FBPortDescriptor> res = new ArrayList<>();
        List<PlugDeclaration> outputParameters = declaration.getPlugs();
        for (int i = 0; i < outputParameters.size(); i++) {
            PlugDeclaration plugDeclaration = outputParameters.get(i);
            res.add(new FBPortDescriptor(plugDeclaration.getName(), EntryKind.ADAPTER, i, true, true));
        }
        return res;
    }

    public static @NotNull List<FBPortDescriptor> getPlugPorts(@NotNull FBInterfaceDeclarationWithAdapters declaration) {
        List<FBPortDescriptor> res = new ArrayList<>();
        List<SocketDeclaration> outputParameters = declaration.getSockets();
        for (int i = 0; i < outputParameters.size(); i++) {
            SocketDeclaration socketDeclaration = outputParameters.get(i);
            res.add(new FBPortDescriptor(socketDeclaration.getName(), EntryKind.ADAPTER, i, false, true));
        }
        return res;
    }

    public static @NotNull List<Integer> getAssociatedVariablesForInputEvent(@NotNull FBInterfaceDeclaration declaration, int eventNumber) {
        List<ParameterDeclaration> inputParameters = declaration.getInputParameters();
        List<Integer> list = new ArrayList<>();
        for (EventAssociation eventAssociation : declaration.getInputEvents().get(eventNumber).getAssociations()) {
            int parameterIndex = inputParameters.indexOf(eventAssociation.getParameterReference().getTarget());
            list.add(parameterIndex);
        }
        return list;
    }

    public static @NotNull List<Integer> getAssociatedVariablesForOutputEvent(@NotNull FBInterfaceDeclaration declaration, int eventNumber) {
        List<ParameterDeclaration> outputParameters = declaration.getOutputParameters();
        List<Integer> list = new ArrayList<>();
        for (EventAssociation eventAssociation : declaration.getOutputEvents().get(eventNumber).getAssociations()) {
            int parameterIndex = outputParameters.indexOf(eventAssociation.getParameterReference().getTarget());
            list.add(parameterIndex);
        }
        return list;
    }
}
