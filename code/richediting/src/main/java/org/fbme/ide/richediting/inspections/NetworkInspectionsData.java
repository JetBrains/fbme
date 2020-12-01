package org.fbme.ide.richediting.inspections;

import org.fbme.lib.common.Declaration;
import org.fbme.lib.iec61499.fbnetwork.FBNetworkConnection;
import org.fbme.lib.iec61499.fbnetwork.PortPath;
import org.fbme.scenes.controllers.scene.SceneStateKey;

import java.awt.*;
import java.util.HashMap;

public class NetworkInspectionsData {

    public static final SceneStateKey<NetworkInspectionsData> KEY = new SceneStateKey<>("network-inspections");

    /*package*/ final HashMap<PortPath<? extends Declaration>, Inspection> portInspections = new HashMap<>();
    /*package*/ final HashMap<Declaration, Inspection> componentInspections = new HashMap<>();
    /*package*/ final HashMap<FBNetworkConnection, Color> highlightedConnections = new HashMap<>();

}
