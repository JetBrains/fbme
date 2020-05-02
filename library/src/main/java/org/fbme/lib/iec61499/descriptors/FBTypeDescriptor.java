package org.fbme.lib.iec61499.descriptors;


import org.fbme.lib.iec61499.declarations.NamedDeclaration;
import org.jetbrains.annotations.Nullable;

import java.util.List;

public interface FBTypeDescriptor {

    String getTypeName();

    @Nullable
    NamedDeclaration getDeclaration();

    List<FBPortDescriptor> getEventInputPorts();

    List<FBPortDescriptor> getEventOutputPorts();

    List<FBPortDescriptor> getDataInputPorts();

    List<FBPortDescriptor> getDataOutputPorts();

    List<FBPortDescriptor> getSocketPorts();

    List<FBPortDescriptor> getPlugPorts();

    List<Integer> getAssociatedVariablesForInputEvent(int eventNumber);

    List<Integer> getAssociatedVariablesForOutputEvent(int eventNumber);
}
