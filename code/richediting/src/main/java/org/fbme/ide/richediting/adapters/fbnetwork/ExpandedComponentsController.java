package org.fbme.ide.richediting.adapters.fbnetwork;

import com.intellij.openapi.util.Pair;
import jetbrains.mps.openapi.editor.EditorContext;
import jetbrains.mps.openapi.editor.update.Updater;
import org.fbme.ide.richediting.viewmodel.FunctionBlockView;
import org.fbme.ide.richediting.viewmodel.NetworkComponentView;
import org.fbme.scenes.cells.EditorCell_Scene;
import org.fbme.scenes.controllers.scene.SceneStateKey;

import java.awt.*;
import java.util.HashMap;
import java.util.Map;
import java.util.Set;

public class ExpandedComponentsController {
    private static final SceneStateKey<Map<NetworkComponentView, Point>> EXPANDED_COMPONENTS_KEY = new SceneStateKey<>("expanded-components");
    private static final SceneStateKey<Map<NetworkComponentView, Pair<Set<NetworkComponentView>, Set<NetworkComponentView>>>> AFFECTED_COMPONENTS_KEY = new SceneStateKey<>("affected-components");

    private final EditorContext editorContext;
    private final Map<NetworkComponentView, Point> expandedComponents;
    private final Map<NetworkComponentView, Pair<Set<NetworkComponentView>, Set<NetworkComponentView>>> affectedComponents;
    private final Map<NetworkComponentView, Point> offset;

    public ExpandedComponentsController(EditorCell_Scene scene, EditorContext editorContext) {
        this.editorContext = editorContext;
        Map<NetworkComponentView, Point> expandedComponentsState = scene.loadState(EXPANDED_COMPONENTS_KEY);
        expandedComponents = (expandedComponentsState != null ? expandedComponentsState : new HashMap<>());
        Map<NetworkComponentView, Pair<Set<NetworkComponentView>, Set<NetworkComponentView>>> affectedComponentsState = scene.loadState(AFFECTED_COMPONENTS_KEY);
        affectedComponents = (affectedComponentsState != null ? affectedComponentsState : new HashMap<>());
        scene.storeState(EXPANDED_COMPONENTS_KEY, expandedComponents);
        scene.storeState(AFFECTED_COMPONENTS_KEY, affectedComponents);
        offset = getOffsetMap();
    }

    private static void updateFB(EditorContext editorContext) {
        Updater updater = editorContext.getEditorComponent().getUpdater();
        updater.update();
    }

    private Map<NetworkComponentView, Point> getOffsetMap() {
        HashMap<NetworkComponentView, Point> offsetMap = new HashMap<>();
        affectedComponents.forEach((view, p) -> {
            Set<NetworkComponentView> affectedByX = p.first;
            Set<NetworkComponentView> affectedByY = p.second;

            int dx = expandedComponents.get(view).x;
            int dy = expandedComponents.get(view).y;

            processOffset(offsetMap, affectedByX, dx, Direction.X);
            processOffset(offsetMap, affectedByY, dy, Direction.Y);
        });
        return offsetMap;
    }

    private void processOffset(HashMap<NetworkComponentView, Point> offsetMap, Set<NetworkComponentView> affectedComponents, int delta, Direction direction) {
        for (NetworkComponentView affectedComponent : affectedComponents) {
            Point componentOffset = offsetMap.get(affectedComponent);
            if (componentOffset == null) {
                componentOffset = new Point();
            }
            if (direction == Direction.X) {
                componentOffset.translate(delta, 0);
            } else {
                componentOffset.translate(0, delta);
            }
            offsetMap.put(affectedComponent, componentOffset);
        }
    }

    public void expand(FunctionBlockView view, int dx, int dy) {
        expandedComponents.put(view, new Point(dx, dy));
        updateFB(editorContext);
    }

    public void collapse(FunctionBlockView view) {
        expandedComponents.remove(view);
        updateFB(editorContext);
    }

    public boolean isExpanded(FunctionBlockView view) {
        return expandedComponents.containsKey(view);
    }

    public void addAffectedComponents(FunctionBlockView view, Pair<Set<NetworkComponentView>, Set<NetworkComponentView>> affectedComponents) {
        this.affectedComponents.put(view, affectedComponents);
    }

    public void removeAffectedComponents(FunctionBlockView view) {
        affectedComponents.remove(view);
    }

    public Point getOffsetFor(NetworkComponentView view) {
        return offset.get(view);
    }

    private enum Direction {
        X, Y
    }
}
