package org.fbme.scenes.controllers.components;

import jetbrains.mps.nodeEditor.cells.EditorCell;
import jetbrains.mps.openapi.editor.EditorContext;
import jetbrains.mps.openapi.editor.cells.CellAction;
import jetbrains.mps.openapi.editor.cells.CellActionType;
import org.fbme.scenes.controllers.*;
import org.fbme.scenes.controllers.scene.*;
import org.fbme.scenes.viewmodel.ComponentsView;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

import java.awt.*;
import java.util.List;
import java.util.*;

public class ComponentsFacility<CompT, FormT> {

    Map<CompT, ComponentEntry<CompT, FormT>> myComponents = new HashMap<>();

    private static final SceneStateKey<Set<?>> SELECTION_KEY = new SceneStateKey<>("comp-selection");

    final ComponentsView<CompT> myView;
    final SceneEditor myEditor;

    final ComponentControllerFactory<CompT, FormT> myControllerFactory;

    final LayoutModel<CompT> myLayout;
    final SelectionModel<CompT> mySelection;

    final ComponentSynchronizer<CompT, FormT> myComponentSyncronizer;
    final SceneFocusModel mySceneFocus;
    final FocusHandle myFocusHandle;

    private final CellAction myDeleteSelectedComponents = new CellAction() {
        @Override
        public String getDescriptionText() {
            return "Delete selected components";
        }

        @Override
        public boolean executeInCommand() {
            return true;
        }

        @Override
        public boolean canExecute(EditorContext context) {
            return true;
        }

        @Override
        public void execute(EditorContext context) {
            for (CompT component : mySelection.getSelectedComponents()) {
                myView.remove(component);
            }
        }
    };

    private boolean myClickShouldSelect = true;

    public ComponentsFacility(
            SceneEditor editor,
            ComponentsView<CompT> componentsView,
            ComponentControllerFactory<CompT, FormT> controllerFactory,
            ComponentSynchronizer<CompT, FormT> componentSyncronizer,
            LayoutModel<CompT> layout,
            SelectionModel<CompT> selection,
            SceneFocusModel sceneFocus,
            Layer componentsLayer,
            Layer tracesLayer
    ) {
        myEditor = editor;
        myView = componentsView;
        myControllerFactory = controllerFactory;
        myComponentSyncronizer = componentSyncronizer;
        myLayout = layout;
        mySelection = selection;
        mySceneFocus = sceneFocus;
        myFocusHandle = new FocusHandle(() -> {
            mySelection.clear();
            clearSelection();
        });

        init();

        editor.addCellActionProvider(new MyCellActionProvider());
        editor.addLayouter(new MyLayouter());
        editor.addCellProvider(componentsLayer, new MyCellProvider());
        editor.addClickListener(componentsLayer, new MyClickEventListener());
        editor.addDragListener(componentsLayer, new MyDragEventListener());
        editor.addPainter(tracesLayer, new MyPainter());
        editor.addInitializer(new MySelectionInitializer());
    }

    private void init() {
        Set<CompT> viewComponents = myView.getComponents();

        for (CompT component : viewComponents) {
            ComponentEntry<CompT, FormT> entry = new ComponentEntry<>(ComponentsFacility.this, component);
            myComponents.put(component, entry);
            myLayout.addComponent(component, entry.myLayoutSetting);
        }
    }

    private void setSelection(@NotNull CompT component, boolean selected) {
        mySelection.setSelected(component, selected);
        if (selected) {
            mySceneFocus.addFocus(myFocusHandle);
        }
    }

    private void clearSelection() {
        for (ComponentEntry<CompT, FormT> component : myComponents.values()) {
            component.myController.updateCellSelection(false);
        }
    }

    @NotNull
    public ComponentController<FormT> getController(@NotNull CompT component) {
        ComponentEntry<CompT, FormT> entry = myComponents.get(component);
        return entry.myController;
    }

    @NotNull
    public FormT getModelForm(@NotNull CompT component) {
        return myComponents.get(component).myModelForm;
    }

    @Nullable
    public FormT getTransformedForm(@NotNull CompT component) {
        return myComponents.get(component).myTransformedForm;
    }

    public ComponentSynchronizer<CompT, FormT> getComponentSyncronizer() {
        return myComponentSyncronizer;
    }

    private class MyLayouter implements SceneLayouter {

        @Override
        public void relayout() {
            for (ComponentEntry<CompT, FormT> component : myComponents.values()) {
                component.relayout();
            }
        }

        @NotNull
        @Override
        public Rectangle getLayoutBounds() {
            Rectangle bounds = new Rectangle(-1, -1);
            for (ComponentEntry<CompT, FormT> component : myComponents.values()) {
                bounds = bounds.union(component.getLayoutBounds());
            }
            return bounds;
        }
    }

    private class MyPainter implements ScenePainter {

        @Override
        public void paint(Graphics2D graphics) {
            for (Map.Entry<CompT, ComponentEntry<CompT, FormT>> component : myComponents.entrySet()) {
                if (myLayout.getTracePosition(component.getKey()) != null) {
                    ComponentEntry<CompT, FormT> entry = component.getValue();
                    entry.myController.paintTrace(graphics.create(), entry.myModelForm);
                }
            }
        }
    }

    private class MyCellProvider implements EditorCellProvider {

        @Override
        public List<EditorCell> getCells() {
            List<EditorCell> cells = new ArrayList<>();
            for (ComponentEntry<CompT, FormT> component : myComponents.values()) {
                EditorCell cell = component.myController.getComponentCell();
                cells.add(cell);
            }
            return cells;
        }
    }

    private class MyCellActionProvider implements SceneCellActionProvider {

        @NotNull
        @Override
        public List<CellActionType> getProvidedActionsTypes() {
            return Collections.singletonList(CellActionType.BACKSPACE);
        }

        @Nullable
        @Override
        public CellAction getAction(@NotNull CellActionType action) {
            if (action == CellActionType.BACKSPACE) {
                return myDeleteSelectedComponents;
            }
            return null;
        }
    }

    private class MySelectionInitializer implements SceneInitializer {

        @Override
        public void onAdd() {
            @SuppressWarnings("unchecked")
            Set<CompT> selection = (Set<CompT>) myEditor.loadState(SELECTION_KEY);
            if (selection != null) {
                for (CompT selected : selection) {
                    setSelection(selected, true);
                }
            }
        }

        @Override
        public void onRemove() {
            myEditor.storeState(SELECTION_KEY, mySelection.getSelectedComponents());
        }
    }

    private class MyClickEventListener implements ClickEventListener {

        @Override
        public void onMouseClicked(ClickEvent event) {
            CompT component = myLayout.findAt(event.awt.getX(), event.awt.getY());
            if (component != null) {
                setSelection(component, myClickShouldSelect);
                myComponents.get(component).relayout();
                event.consume();
            }
        }
    }

    private void syncOnMovement(CompT component, int dx, int dy) {
        ComponentEntry<CompT, FormT> entry = myComponents.get(component);
        entry.myTransformedForm = entry.myController.translateForm(entry.myModelForm, dx, dy);
    }

    private void syncOnMovementCompletion(CompT component) {
        myComponents.get(component).myTransformedForm = null;
    }

    private class MyDragEventListener implements DragEventListener {

        @Override
        public void onDragStarted(DragEvent event) {
            CompT component = myLayout.findAt(event.awt.getX(), event.awt.getY());
            if (component != null) {
                Set<CompT> movingComponents = new HashSet<>();
                movingComponents.add(component);
                if (event.awt.isMetaDown()) {
                    movingComponents.addAll(mySelection.getSelectedComponents());
                } else {
                    mySceneFocus.clearFocus();
                    mySelection.clear();
                }
                myClickShouldSelect = !(mySelection.isSelected(component));
                setSelection(component, true);
                myComponents.get(component).relayout();
                MyDragEventHandler handler = new MyDragEventHandler(movingComponents, myLayout.moveComponents(movingComponents), new Point(event.awt.getX(), event.awt.getY()));
                event.consume(handler);
                myEditor.fireRepaint();
            }
        }
    }

    private class MyDragEventHandler implements DragEventHandler {

        private final LayoutMovememntHandle myHandle;
        private final Point myOrigin;
        private final Set<CompT> myMovedComponents;

        public MyDragEventHandler(Set<CompT> components, LayoutMovememntHandle handle, Point origin) {
            myHandle = handle;
            myOrigin = origin;
            myMovedComponents = components;
        }

        @Override
        public void dragTo(int x, int y) {
            int dx = x - myOrigin.x;
            int dy = y - myOrigin.y;
            myHandle.moveTo(dx, dy);

            myEditor.fireRelayout();

            for (CompT component : myMovedComponents) {
                syncOnMovement(component, dx, dy);
            }
        }

        @Override
        public void completeAt(int x, int y) {
            myHandle.moveTo(x - myOrigin.x, y - myOrigin.y);
            myHandle.complete();

            myEditor.fireRelayout();

            for (CompT component : myMovedComponents) {
                syncOnMovementCompletion(component);
            }
        }
    }
}
