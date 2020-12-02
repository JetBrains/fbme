package org.fbme.ide.platform.debugger;

import jetbrains.mps.util.containers.ConcurrentHashSet;

import java.util.Set;

public class DeviceConnectorRegistry {

    private static final DeviceConnectorRegistry INSTANCE = new DeviceConnectorRegistry();

    public static DeviceConnectorRegistry getInstance() {
        return INSTANCE;
    }

    private final Set<DeviceConnector> myConnectors = new ConcurrentHashSet<>();

    private DeviceConnectorRegistry() {
    }

    public void register(DeviceConnector connector) {
        myConnectors.add(connector);
    }

    public void unregister(DeviceConnector connector) {
        myConnectors.remove(connector);
    }


    public Set<DeviceConnector> getConnectors() {
        return myConnectors;
    }
}
