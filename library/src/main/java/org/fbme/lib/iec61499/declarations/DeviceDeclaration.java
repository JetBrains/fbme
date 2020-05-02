package org.fbme.lib.iec61499.declarations;

import org.fbme.lib.iec61499.descriptors.DeviceTypeDescriptor;
import org.fbme.lib.iec61499.fbnetwork.FBNetwork;
import org.jetbrains.annotations.Nullable;

import java.util.List;

public interface DeviceDeclaration extends NamedDeclaration {

    SystemDeclaration getSystem();

    DeviceTypeDescriptor getType();

    List<ParameterAssigment> getParameters();

    List<ResourceDeclaration> getResources();

    @Nullable
    FBNetwork getNetwork();
}
