package org.fbme.ide.richediting.adapters.fbnetwork;

import com.intellij.openapi.util.Pair;
import jetbrains.mps.openapi.editor.EditorContext;
import jetbrains.mps.openapi.editor.update.Updater;
import org.fbme.ide.richediting.viewmodel.FunctionBlockView;
import org.fbme.ide.richediting.viewmodel.NetworkComponentView;
import org.fbme.ide.richediting.viewmodel.NetworkConnectionView;
import org.fbme.scenes.cells.EditorCell_Scene;
import org.fbme.scenes.controllers.scene.SceneStateKey;

import java.awt.*;
import java.util.HashMap;
import java.util.Map;
import java.util.Set;

public class ExpandedComponentsController {
    private static final SceneStateKey<Map<NetworkComponentView, Point>> EXPANDED_COMPONENTS_KEY = new SceneStateKey<>("expanded-components");
    private static final SceneStateKey<Map<NetworkComponentView, Pair<Set<NetworkComponentView>, Set<NetworkComponentView>>>> AFFECTED_COMPONENTS_KEY = new SceneStateKey<>("affected-components");
    private static final SceneStateKey<Map<NetworkComponentView, Set<Pair<NetworkConnectionView, Integer>>>> AFFECTED_SECTIONS_KEY = new SceneStateKey<>("affected-sections");

    private final EditorContext editorContext;
    private final Map<NetworkComponentView, Point> expandedComponents;
    private final Map<NetworkComponentView, Pair<Set<NetworkComponentView>, Set<NetworkComponentView>>> affectedComponents;
    private final Map<NetworkComponentView, Set<Pair<NetworkConnectionView, Integer>>> affectedSections;
    private final Map<NetworkComponentView, Point> componentOffsetMap;
    private final Map<Pair<NetworkConnectionView, Integer>, Integer> sectionOffsetMap;

    public ExpandedComponentsController(EditorCell_Scene scene, EditorContext editorContext) {
        this.editorContext = editorContext;
        Map<NetworkComponentView, Point> expandedComponentsState = scene.loadState(EXPANDED_COMPONENTS_KEY);
        expandedComponents = (expandedComponentsState != null ? expandedComponentsState : new HashMap<>());
        Map<NetworkComponentView, Pair<Set<NetworkComponentView>, Set<NetworkComponentView>>> affectedComponentsState = scene.loadState(AFFECTED_COMPONENTS_KEY);
        affectedComponents = (affectedComponentsState != null ? affectedComponentsState : new HashMap<>());
        Map<NetworkComponentView, Set<Pair<NetworkConnectionView, Integer>>> affectedSectionsState = scene.loadState(AFFECTED_SECTIONS_KEY);
        affectedSections = (affectedSectionsState != null ? affectedSectionsState : new HashMap<>());
        scene.storeState(EXPANDED_COMPONENTS_KEY, expandedComponents);
        scene.storeState(AFFECTED_COMPONENTS_KEY, affectedComponents);
        scene.storeState(AFFECTED_SECTIONS_KEY, affectedSections);
        componentOffsetMap = getComponentOffsetMap();
        sectionOffsetMap = getSectionOffsetMap();
    }

    private static void updateFB(EditorContext editorContext) {
        Updater updater = editorContext.getEditorComponent().getUpdater();
        updater.update();
    }

    private Map<Pair<NetworkConnectionView, Integer>, Integer> getSectionOffsetMap() {
        HashMap<Pair<NetworkConnectionView, Integer>, Integer> offsetMap = new HashMap<>();
        affectedSections.forEach((view, sections) -> {
            processSections(offsetMap, view, sections);
        });
        return offsetMap;
    }

    private void processSections(Map<Pair<NetworkConnectionView, Integer>, Integer> offsetMap, NetworkComponentView view, Set<Pair<NetworkConnectionView, Integer>> sections) {
        int dx = expandedComponents.get(view).x;
        int dy = expandedComponents.get(view).y;

        for (Pair<NetworkConnectionView, Integer> section : sections) {
            int sectionOffset = offsetMap.getOrDefault(section, 0);
            boolean isHorizontal = section.second % 2 == 0;

            offsetMap.put(section, sectionOffset + (isHorizontal ? dy : dx));
        }
    }

    private Map<NetworkComponentView, Point> getComponentOffsetMap() {
        HashMap<NetworkComponentView, Point> offsetMap = new HashMap<>();
        affectedComponents.forEach((view, p) -> {
            processComponents(offsetMap, view, p);
        });
        return offsetMap;
    }

    private void processComponents(Map<NetworkComponentView, Point> offsetMap, NetworkComponentView view, Pair<Set<NetworkComponentView>, Set<NetworkComponentView>> p) {
        Set<NetworkComponentView> affectedByX = p.first;
        Set<NetworkComponentView> affectedByY = p.second;

        int dx = expandedComponents.get(view).x;
        int dy = expandedComponents.get(view).y;

        processComponentOffset(offsetMap, affectedByX, dx, Direction.X);
        processComponentOffset(offsetMap, affectedByY, dy, Direction.Y);
    }

    private void processComponentOffset(Map<NetworkComponentView, Point> offsetMap, Set<NetworkComponentView> affectedComponents, int delta, Direction direction) {
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

    public void addExpandedComponent(FunctionBlockView view, int dx, int dy) {
        expandedComponents.put(view, new Point(dx, dy));
    }

    public void removeExpandedComponent(FunctionBlockView view) {
        expandedComponents.remove(view);
    }

    public void update() {
        updateFB(editorContext);
    }

    public boolean isExpanded(FunctionBlockView view) {
        return expandedComponents.containsKey(view);
    }

    public void addAffectedComponents(FunctionBlockView view, Pair<Set<NetworkComponentView>, Set<NetworkComponentView>> affectedComponents) {
        this.affectedComponents.put(view, affectedComponents);
        processComponents(this.componentOffsetMap, view, affectedComponents);
    }

    public void removeAffectedComponents(FunctionBlockView view) {
        affectedComponents.remove(view);
    }

    public Point getOffsetFor(NetworkComponentView view) {
        return componentOffsetMap.get(view);
    }

    public Integer getOffsetForSection(Pair<NetworkConnectionView, Integer> section) {
        return sectionOffsetMap.get(section);
    }

    public void addAffectedSections(FunctionBlockView view, Set<Pair<NetworkConnectionView, Integer>> affectedSections) {
        this.affectedSections.put(view, affectedSections);
        processSections(this.sectionOffsetMap, view, affectedSections);
    }

    public void removeAffectedSections(FunctionBlockView component) {
        affectedSections.remove(component);
    }

    private enum Direction {
        X, Y
    }
}
