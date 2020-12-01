package org.fbme.ide.richediting.inspections;

import org.fbme.lib.iec61499.ecc.StateTransition;
import org.fbme.scenes.controllers.scene.SceneStateKey;

import java.awt.*;
import java.util.HashMap;

public class ECCInspectionsData {

    public static final SceneStateKey<ECCInspectionsData> KEY = new SceneStateKey<>("ecc-inspections");

    /*package*/ final HashMap<StateTransition, Color> highlightedTransitions = new HashMap<>();
}
