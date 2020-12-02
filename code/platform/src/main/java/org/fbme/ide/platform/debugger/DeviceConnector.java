package org.fbme.ide.platform.debugger;

import jetbrains.mps.smodel.structure.ExtensionPoint;
import org.fbme.lib.iec61499.declarations.DeviceDeclaration;
import org.jetbrains.annotations.Nullable;
import org.jetbrains.mps.openapi.model.SNode;

import java.io.IOException;
import java.util.List;

public interface DeviceConnector {

    @Nullable
    DeviceConnection tryConnect(DeviceDeclaration device) throws IOException;
}
