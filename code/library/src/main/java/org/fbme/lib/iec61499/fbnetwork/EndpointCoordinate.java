package org.fbme.lib.iec61499.fbnetwork;

import org.fbme.lib.common.CompositeReference;
import org.fbme.lib.common.Element;

public interface EndpointCoordinate extends Element {
    int getX();

    void setX(int x);

    int getY();

    void setY(int y);

    CompositeReference<PortPath<?>> getPortReference();
}
