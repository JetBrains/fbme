package org.fbme.lib.iec61499.descriptors;

import org.fbme.lib.common.Declaration;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

import java.util.List;

public interface FBTypeDescriptor {

    @NotNull String getTypeName();

    @Nullable Declaration getDeclaration();

    @NotNull List<FBPortDescriptor> getEventInputPorts();

    @NotNull List<FBPortDescriptor> getEventOutputPorts();

    @NotNull List<FBPortDescriptor> getDataInputPorts();

    @NotNull List<FBPortDescriptor> getDataOutputPorts();

    @NotNull List<FBPortDescriptor> getSocketPorts();

    @NotNull List<FBPortDescriptor> getPlugPorts();

    @NotNull List<Integer> getAssociatedVariablesForInputEvent(int eventNumber);

    @NotNull List<Integer> getAssociatedVariablesForOutputEvent(int eventNumber);
}
