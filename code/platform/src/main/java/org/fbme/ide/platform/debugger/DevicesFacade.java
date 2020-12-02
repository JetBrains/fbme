package org.fbme.ide.platform.debugger;

import jetbrains.mps.internal.collections.runtime.CollectionSequence;
import jetbrains.mps.internal.collections.runtime.Sequence;
import jetbrains.mps.lang.smodel.generator.smodelAdapter.SNodeOperations;
import jetbrains.mps.smodel.structure.ExtensionPoint;
import org.apache.log4j.Level;
import org.apache.log4j.LogManager;
import org.apache.log4j.Logger;
import org.fbme.lib.common.Identifier;
import org.fbme.lib.iec61499.declarations.DeviceDeclaration;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import org.jetbrains.mps.openapi.model.SNode;
import org.jetbrains.mps.openapi.model.SNodeReference;

import java.io.IOException;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;

public class DevicesFacade {
    private static final Logger LOG = LogManager.getLogger(DevicesFacade.class);

    private static DevicesFacade INSTANCE;

    private final Map<Identifier, DeviceConnection> myConnections = new ConcurrentHashMap<>();

    public static DevicesFacade getInstance() {
        return INSTANCE;
    }

    @Nullable
    public DeviceConnection attach(@NotNull DeviceDeclaration device) {
        DeviceConnection connection = myConnections.get(device.getIdentifier());
        if (connection == null || !connection.isAlive()) {
            connection = createConnection(device);
            myConnections.put(device.getIdentifier(), connection);
        }
        return connection;
    }

    public void invalidate(@NotNull DeviceDeclaration device) {
        myConnections.remove(device.getIdentifier());
    }

    private DeviceConnection createConnection(DeviceDeclaration device) {
        for (DeviceConnector connector : DeviceConnectorRegistry.getInstance().getConnectors()) {
            try {
                DeviceConnection c = connector.tryConnect(device);
                if (c != null) {
                    return c;
                }
            } catch (IOException e) {
                if (LOG.isEnabledFor(Level.ERROR)) {
                    LOG.error(connector + " thrown on device connecting via DevicesFacade#attach", e);
                }
            }
        }
        return null;
    }

    public void start() {
        INSTANCE = this;
    }

    public void stop() {
        INSTANCE = null;
        for (DeviceConnection connection : myConnections.values()) {
            try {
                connection.close();
            } catch (IOException e) {
                if (LOG.isEnabledFor(Level.ERROR)) {
                    LOG.error(connection + " thrown on closing via DevicesFacade#stop", e);
                }
            }
        }
        myConnections.clear();
    }
}
