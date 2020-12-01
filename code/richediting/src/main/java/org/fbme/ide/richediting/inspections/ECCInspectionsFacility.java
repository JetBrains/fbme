package org.fbme.ide.richediting.inspections;

import org.fbme.ide.richediting.adapters.ecc.ECTransitionController;
import org.fbme.lib.iec61499.ecc.ECC;
import org.fbme.lib.iec61499.ecc.StateTransition;
import org.fbme.scenes.controllers.scene.SceneEditor;
import org.fbme.scenes.controllers.scene.SceneInitializer;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

import java.awt.*;
import java.util.HashSet;
import java.util.Map;
import java.util.Set;
import java.util.function.Function;

public class ECCInspectionsFacility {

    @NotNull
    private final ECC myECC;

    @NotNull
    private final SceneEditor myEditor;

    @NotNull
    private final Function<StateTransition, ECTransitionController> myTransitionProvider;

    private final Set<StateTransition> myHighlightedTransitions = new HashSet<>();

    public ECCInspectionsFacility(@NotNull ECC ecc, @NotNull SceneEditor editor, @NotNull Function<StateTransition, ECTransitionController> connectionProvider) {
        myECC = ecc;
        myEditor = editor;
        myTransitionProvider = connectionProvider;
        myEditor.addInitializer(new MyInitializer());
    }

    public void setHighlightingForTransition(@NotNull StateTransition transition, @Nullable Color color) {
        ECTransitionController controller = myTransitionProvider.apply(transition);
        if (color != null) {
            myHighlightedTransitions.add(transition);
        } else {
            myHighlightedTransitions.remove(transition);
        }
        controller.setHighlightColor(color);
        myEditor.fireRepaint();
    }

    public void clear() {
        for (StateTransition transition : myHighlightedTransitions) {
            ECTransitionController controller = myTransitionProvider.apply(transition);
            controller.setHighlightColor(null);
        }
        myHighlightedTransitions.clear();
        myEditor.fireRepaint();
    }

    private class MyInitializer implements SceneInitializer {

        @Override
        public void onAdd() {
            ECCInspectionsData inspectionsData = myEditor.loadState(ECCInspectionsData.KEY);
            if (inspectionsData != null) {
                loadState(inspectionsData);
            }
            InspectionManagerImpl.getInstance(myEditor.getContext().getEditorComponent()).registerECC(myECC, ECCInspectionsFacility.this);
        }

        @Override
        public void onRemove() {
            ECCInspectionsData data = new ECCInspectionsData();
            storeState(data);
            myEditor.storeState(ECCInspectionsData.KEY, data);
            InspectionManager manager = InspectionManagerImpl.getInstance(myEditor.getContext().getEditorComponent());
            if (manager != null) {
                manager.unregisterECC(myECC);
            }
        }
    }

    private void loadState(ECCInspectionsData data) {
        for (Map.Entry<StateTransition, Color> transition : data.highlightedTransitions.entrySet()) {
            myHighlightedTransitions.add(transition.getKey());
            ECTransitionController controller = myTransitionProvider.apply(transition.getKey());
            controller.setHighlightColor(transition.getValue());
        }
        if (!data.highlightedTransitions.isEmpty()) {
            myEditor.fireRepaint();
        }
    }

    private void storeState(ECCInspectionsData data) {
        for (StateTransition connection : myHighlightedTransitions) {
            ECTransitionController controller = myTransitionProvider.apply(connection);
            data.highlightedTransitions.put(connection, controller.getHighlightColor());
        }
    }

}
