package org.fbme.lib.iec61499.descriptors;


import org.fbme.lib.iec61499.declarations.DeviceTypeDeclaration;

import java.util.List;

public interface DeviceTypeDescriptor {

    DeviceTypeDeclaration getDeclaration();

    String getTypeName();

    List<ParameterDescriptor> getParameters();
}
