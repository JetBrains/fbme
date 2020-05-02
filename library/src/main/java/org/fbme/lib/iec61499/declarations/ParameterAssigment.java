package org.fbme.lib.iec61499.declarations;

import org.fbme.lib.iec61499.descriptors.ParameterDescriptor;

public interface ParameterAssigment {

    Declaration getContainer();

    ParameterDescriptor getParameter();

    String getValue();
}
