package org.fbme.scenes.controllers.components;

import jetbrains.mps.nodeEditor.cells.EditorCell;
import org.fbme.scenes.controllers.scene.*;
import org.fbme.scenes.viewmodel.ComponentExtsView;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

import java.awt.*;
import java.util.List;
import java.util.*;

public class ComponentsExtensionsFacility<CompT, CompExtT, FormT> {

    private final Map<CompExtT, ComponentExtEntry<CompT, CompExtT, FormT>> myComponentExts = new HashMap<>();

    private final ComponentExtsView<CompT, CompExtT> myExtView;
    final ComponentsFacility<CompT, FormT> myComponentsFacility;
    final ComponentExtControllerFactory<CompExtT, FormT> myControllerFactory;

    public ComponentsExtensionsFacility(ComponentExtsView<CompT, CompExtT> extView, ComponentsFacility<CompT, FormT> componentsFacility, ComponentExtControllerFactory<CompExtT, FormT> controllerFactory, Layer compExtsLayer, Layer tracesLayer) {
        this.myExtView = extView;
        this.myComponentsFacility = componentsFacility;
        this.myControllerFactory = controllerFactory;

        init();

        SceneEditor editor = componentsFacility.myEditor;
        editor.addLayouter(new MyLayouter());
        editor.addCellProvider(compExtsLayer, new MyCellProvider());
        editor.addPainter(tracesLayer, new MyTracesPainter());
    }

    private void init() {
        Set<CompT> viewComponents = myComponentsFacility.myView.getComponents();
        Map<CompExtT, CompT> viewComponentExts = new HashMap<>();
        for (CompT viewComponent : viewComponents) {
            for (CompExtT viewComponentExt : myExtView.getExtensions(viewComponent)) {
                viewComponentExts.put(viewComponentExt, viewComponent);
            }
        }

        for (Map.Entry<CompExtT, CompT> component : viewComponentExts.entrySet()) {
            ComponentExtEntry<CompT, CompExtT, FormT> entry = new ComponentExtEntry<>(this, component.getKey(), component.getValue());
            myComponentExts.put(component.getKey(), entry);
        }
    }

    @NotNull
    public FormT getModelForm(@NotNull CompExtT componentExt) {
        return myComponentExts.get(componentExt).myComponentEntry.myModelForm;
    }

    @Nullable
    public FormT getTransformedForm(@NotNull CompExtT componentExt) {
        return myComponentExts.get(componentExt).myComponentEntry.myTransformedForm;
    }

    public final ComponentExtController<FormT> getController(@NotNull CompExtT extension) {
        return myComponentExts.get(extension).myController;
    }

    private class MyCellProvider implements EditorCellProvider {

        @Override
        public List<EditorCell> getCells() {
            ArrayList<EditorCell> ret = new ArrayList<>();
            for (ComponentExtEntry<CompT, CompExtT, FormT> componentExt : myComponentExts.values()) {
                ret.add(componentExt.myController.getComponentCell());
            }
            return ret;
        }
    }

    private class MyLayouter implements SceneLayouter {

        @Override
        public void relayout() {
            for (ComponentExtEntry<CompT, CompExtT, FormT> componentExt : myComponentExts.values()) {
                ComponentEntry<CompT, FormT> componentEntry = componentExt.myComponentEntry;
                componentExt.myController.updateCellWithForm((componentEntry.myTransformedForm != null ? componentEntry.myTransformedForm : componentEntry.myModelForm));
            }
        }

        @NotNull
        @Override
        public Rectangle getLayoutBounds() {
            return new Rectangle(-1, -1);
        }
    }

    private class MyTracesPainter implements ScenePainter {

        @Override
        public void paint(Graphics2D graphics) {
            for (ComponentExtEntry<CompT, CompExtT, FormT> componentExt : myComponentExts.values()) {
                ComponentExtController<FormT> controller = componentExt.myController;
                ComponentEntry<CompT, FormT> componentEntry = myComponentsFacility.myComponents.get(componentExt.myComponent);
                FormT form = (componentEntry.myTransformedForm != null ? componentEntry.myTransformedForm : componentEntry.myModelForm);
                controller.paintTrace(graphics.create(), form);
            }
        }
    }
}
