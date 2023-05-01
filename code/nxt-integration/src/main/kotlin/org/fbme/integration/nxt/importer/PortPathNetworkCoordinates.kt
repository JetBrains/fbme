package org.fbme.integration.nxt.importer;

import org.fbme.lib.iec61499.fbnetwork.PortPath;

import java.awt.*;

public class PortPathNetworkCoordinates {
    private final PortPath<?> portPath;
    private final Point point;

    public PortPathNetworkCoordinates(PortPath<?> portPath, Point point) {
        this.portPath = portPath;
        this.point = point;
    }

    public PortPath<?> getPortPath() {
        return portPath;
    }

    public Point getPoint() {
        return point;
    }
}
