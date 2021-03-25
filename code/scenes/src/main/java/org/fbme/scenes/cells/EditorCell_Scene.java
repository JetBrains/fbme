package org.fbme.scenes.cells;

import com.intellij.openapi.application.ApplicationManager;
import com.intellij.util.ui.MouseEventAdapter;
import jetbrains.mps.editor.runtime.TextBuilderImpl;
import jetbrains.mps.editor.runtime.style.StyleAttributes;
import jetbrains.mps.nodeEditor.EditorComponent;
import jetbrains.mps.nodeEditor.MPSColors;
import jetbrains.mps.nodeEditor.cellLayout.AbstractCellLayout;
import jetbrains.mps.nodeEditor.cellMenu.AbstractNodeSubstituteInfo;
import jetbrains.mps.nodeEditor.cellMenu.NodeSubstitutePatternEditor;
import jetbrains.mps.nodeEditor.cellProviders.AbstractCellListHandler;
import jetbrains.mps.nodeEditor.cells.EditorCell_Collection;
import jetbrains.mps.nodeEditor.cells.ParentSettings;
import jetbrains.mps.openapi.editor.EditorContext;
import jetbrains.mps.openapi.editor.TextBuilder;
import jetbrains.mps.openapi.editor.cells.*;
import jetbrains.mps.smodel.action.AbstractSubstituteAction;
import org.fbme.scenes.controllers.DragEventHandler;
import org.fbme.scenes.controllers.LayoutUtil;
import org.fbme.scenes.controllers.SceneViewpoint;
import org.fbme.scenes.controllers.scene.*;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import org.jetbrains.mps.openapi.model.SNode;
import org.jetbrains.mps.util.Condition;

import javax.swing.*;
import java.awt.*;
import java.awt.event.MouseAdapter;
import java.awt.event.MouseEvent;
import java.awt.event.MouseWheelEvent;
import java.awt.event.MouseWheelListener;
import java.util.List;
import java.util.*;

public class EditorCell_Scene extends EditorCell_Collection implements SceneEditor {

    private DragEventHandler myDragEventHandler = null;

    private int myCompletionPositionX = 0;
    private int myCompletionPositionY = 0;

    private final Set<LayerImpl> myLayers = new TreeSet<>();
    private final Set<LayerImpl> myReversedLayers = new TreeSet<>(Comparator.reverseOrder());

    private final Set<CursorListner> myCursorListeners = new LinkedHashSet<>();
    private final Set<SceneLayouter> myLayouters = new LinkedHashSet<>();
    private final Set<SceneCompletionProvider> myCompletionProviders = new LinkedHashSet<>();
    private final Set<SceneInitializer> myInitializers = new LinkedHashSet<>();

    private final SceneLayout myLayout;
    private final InheritedViewpoint myViewpoint;

    public EditorCell_Scene(EditorContext editorContext, SNode node, SceneLayout sceneLayout) {
        super(editorContext, node, CELL_LAYOUT);
        myLayout = sceneLayout;
        getStyle().addListener(event -> {
            if (event.getChangedAttributes().contains(StyleAttributes.FONT_SIZE)) {
                for (EditorCell cell : CellTraversalUtil.iterateTree(EditorCell_Scene.this, EditorCell_Scene.this, true)) {
                    cell.requestRelayout();
                }
                relayout();
            }
        });
        setSubstituteInfo(new MySubtituteInfo(editorContext));
        if (myLayout == SceneLayout.WINDOWED) {
            myHeight = 600;
            myViewpoint = null;
        } else {
            myX = 10;
            myY = 15;
            myViewpoint = new InheritedViewpoint();
            addInitializer(new SceneInitializer() {
                @Override
                public void onAdd() {
                    ViewpointAndScaleData data = loadState(ViewpointAndScaleData.KEY);
                    if (data != null) {
                        LayoutUtil.setFontSize(getStyle(), data.lineSize);
                    }
                }

                @Override
                public void onRemove() {
                    storeState(ViewpointAndScaleData.KEY, new ViewpointAndScaleData(myViewpoint.myShiftX, myViewpoint.myShiftY, LayoutUtil.getFontSize(getStyle())));
                }
            });
        }
    }

    @NotNull
    @Override
    public Layer createLayer(float priority) {
        LayerImpl layer = new LayerImpl(priority);
        myLayers.add(layer);
        myReversedLayers.add(layer);
        return layer;
    }

    @Override
    public void removeLayer(@NotNull Layer layer) {
        myLayers.remove(layer);
        myReversedLayers.remove(layer);
    }

    @Override
    public void addClickListener(@NotNull Layer layer, @NotNull ClickEventListener listener) {
        if (myLayers.contains(layer)) {
            ((LayerImpl) layer).addClickListener(listener);
        }
    }

    @Override
    public void removeClickListener(@NotNull ClickEventListener listener) {
        for (LayerImpl layer : myLayers) {
            layer.removeClickListener(listener);
        }
    }

    @Override
    public void addDragListener(@NotNull Layer layer, @NotNull DragEventListener listener) {
        if (myLayers.contains(layer)) {
            ((LayerImpl) layer).addDragListener(listener);
        }
    }

    @Override
    public void removeDragListener(@NotNull DragEventListener listener) {
        for (LayerImpl layer : myLayers) {
            layer.removeDragListener(listener);
        }
    }

    @Override
    public void addCursorListener(@NotNull CursorListner listener) {
        myCursorListeners.add(listener);
    }

    @Override
    public void removeCursorListener(@NotNull CursorListner listener) {
        myCursorListeners.remove(listener);
    }

    @Override
    public void addMouseWheelListener(@NotNull Layer layer, @NotNull MouseWheelListener listener) {
        if (myLayers.contains(layer)) {
            ((LayerImpl) layer).addMouseWheelListener(listener);
        }
    }

    @Override
    public void removeMouseWheelListener(@NotNull MouseWheelListener listener) {
        for (LayerImpl layer : myLayers) {
            layer.removeMouseWheelListener(listener);
        }
    }

    @Override
    public void addLayouter(@NotNull SceneLayouter layouter) {
        myLayouters.add(layouter);
    }

    @Override
    public void removeLayouter(@NotNull SceneLayouter layouter) {
        myLayouters.remove(layouter);
    }

    @Override
    public void addCellProvider(@NotNull Layer layer, @NotNull EditorCellProvider provider) {
        if (myLayers.contains(layer)) {
            ((LayerImpl) layer).addCellProvider(provider);
            for (jetbrains.mps.nodeEditor.cells.EditorCell cell : provider.getCells()) {
                addEditorCell(cell);
            }
            requestRelayout();
        }
    }

    @Override
    public void removeCellProvider(@NotNull EditorCellProvider provider) {
        for (LayerImpl layer : myLayers) {
            layer.removeCellProvider(provider);
        }
        for (jetbrains.mps.nodeEditor.cells.EditorCell cell : provider.getCells()) {
            removeCell(cell);
        }
    }

    @Override
    public void addCompletionProvider(@NotNull SceneCompletionProvider provider) {
        myCompletionProviders.add(provider);
    }

    @Override
    public void removeCompletionProvider(@NotNull SceneCompletionProvider provider) {
        myCompletionProviders.remove(provider);
    }

    @Override
    public void addCellActionProvider(@NotNull SceneCellActionProvider provider) {
        Object tag = new Object();
        this.putUserObject(AbstractCellListHandler.ELEMENT_CELL_ACTIONS_SET, tag);
        this.putUserObject(AbstractCellListHandler.ELEMENT_CELL_BACKSPACE_SET, tag);
        this.putUserObject(AbstractCellListHandler.ELEMENT_CELL_DELETE_SET, tag);
        this.putUserObject(AbstractCellListHandler.ELEMENT_CELL_COMPLETE_SET, tag);

        for (CellActionType actionType : provider.getProvidedActionsTypes()) {
            CellAction currentAction = getAction(actionType);
            CellAction providedAction = provider.getAction(actionType);
            if (!(currentAction instanceof CompositeCellAction)) {
                CompositeCellAction composite = new CompositeCellAction();
                composite.add(providedAction);
                setAction(actionType, composite);
                return;
            }
            ((CompositeCellAction) currentAction).add(providedAction);
        }
    }

    @Override
    public void removeCellActionProvider(@NotNull SceneCellActionProvider provider) {
        for (CellActionType actionType : provider.getProvidedActionsTypes()) {
            CellAction currentAction = getAction(actionType);
            CellAction providedAction = provider.getAction(actionType);
            if (currentAction instanceof CompositeCellAction) {
                CompositeCellAction composite = (CompositeCellAction) currentAction;
                composite.add(providedAction);
                if (composite.isInvalid()) {
                    setAction(actionType, null);
                }
            }
        }
    }

    @Override
    public void addPainter(@NotNull Layer layer, @NotNull ScenePainter painter) {
        if (myLayers.contains(layer)) {
            ((LayerImpl) layer).addPainter(painter);
        }
    }

    @Override
    public void removePainter(@NotNull ScenePainter painter) {
        for (LayerImpl layer : myLayers) {
            layer.removePainter(painter);
        }
    }

    @Override
    public void addInitializer(@NotNull SceneInitializer initializer) {
        myInitializers.add(initializer);
    }

    @Override
    public void removeInitializer(@NotNull SceneInitializer initializer) {
        myInitializers.remove(initializer);
    }

    @Override
    public <T> void storeState(SceneStateKey<T> key, T state) {
        SceneStateManager sm = SceneStateManager.getInstance(getEditorComponent());
        if (sm != null) {
            sm.storeState(this, key, state);
        }
    }

    @Override
    public <T> T loadState(SceneStateKey<T> key) {
        SceneStateManager sm = SceneStateManager.getInstance(getEditorComponent());
        if (sm != null) {
            return sm.loadState(this, key);
        }
        return null;
    }

    @Override
    protected void paintSelectionIfRequired(Graphics g, ParentSettings parentSettings) {
    }

    @Override
    protected void paintChildCells(Graphics g, ParentSettings settings) {
        // painted in paintContent(...)
    }

    @Override
    protected void paintContent(Graphics graphics, ParentSettings settings) {
        Graphics2D g = ((Graphics2D) graphics.create());
        if (myLayout == SceneLayout.WINDOWED) {
            g.setColor(MPSColors.BLACK);
            Rectangle bounds = getBounds();
            g.draw(bounds);
            g.setClip(bounds.intersection(g.getClip().getBounds()));
        }

        for (LayerImpl layer : myLayers) {
            for (ScenePainter painter : layer.getPainters()) {
                painter.paint(g);
            }
            for (EditorCellProvider cellProvider : layer.getCellProviders()) {
                for (jetbrains.mps.nodeEditor.cells.EditorCell cell : cellProvider.getCells()) {
                    cell.paintCell(g, settings);
                }
            }
        }
    }

    @Override
    public void onAdd() {
        super.onAdd();

        if (getEditorComponent() instanceof EditorComponent) {
            EditorComponent editor = (EditorComponent) getEditorComponent();

            editor.addMouseListener(myMouseListener);
            editor.addMouseMotionListener(myMouseListener);
            installMouseWheelListener(editor);
        }

        for (SceneInitializer initializer : myInitializers) {
            initializer.onAdd();
        }
    }

    @Override
    public void onRemove() {
        for (SceneInitializer initializer : myInitializers) {
            initializer.onRemove();
        }

        if (getEditorComponent() instanceof EditorComponent) {
            EditorComponent editor = (EditorComponent) getEditorComponent();

            editor.removeMouseListener(myMouseListener);
            editor.removeMouseMotionListener(myMouseListener);
            uninstallMouseWheelListener();
        }

        super.onRemove();
    }

    private void installMouseWheelListener(EditorComponent editor) {
        if (parentScrollPane != null) {
            uninstallMouseWheelListener();
        }
        parentScrollPane = (JScrollPane) editor.getViewport().getParent();
        MouseWheelListener[] mouseWheelListeners = parentScrollPane.getMouseWheelListeners();
        for (MouseWheelListener l : mouseWheelListeners) {
            parentScrollPane.removeMouseWheelListener(l);
        }
        parentScrollPane.addMouseWheelListener(myMouseWheelListener);
        for (MouseWheelListener l : mouseWheelListeners) {
            parentScrollPane.addMouseWheelListener(l);
        }
    }

    private void uninstallMouseWheelListener() {
        if (parentScrollPane == null) {
            return;
        }
        parentScrollPane.removeMouseWheelListener(myMouseWheelListener);
        parentScrollPane = null;
    }

    private JScrollPane parentScrollPane;

    private final MouseWheelListener myMouseWheelListener = new MouseWheelListener() {
        @Override
        public void mouseWheelMoved(MouseWheelEvent event) {
            event = ((MouseWheelEvent) MouseEventAdapter.convert(event, (EditorComponent) getEditorComponent()));
            if (!(getBounds().contains(event.getX(), event.getY()))) {
                parentScrollPane.setWheelScrollingEnabled(true);
                return;
            }
            for (LayerImpl layer : myLayers) {
                for (MouseWheelListener listener : layer.getMouseWheelListeners()) {
                    listener.mouseWheelMoved(event);
                    if (event.isConsumed()) {
                        parentScrollPane.setWheelScrollingEnabled(false);
                        return;
                    }
                }
            }
        }
    };

    @Override
    public SceneViewpoint getImplicitViewpoint() {
        return myViewpoint;
    }

    private final MouseAdapter myMouseListener = new MouseAdapter() {

        @Override
        public void mousePressed(MouseEvent event) {
            if (event.isPopupTrigger()) {
                return;
            }
            if (myDragEventHandler != null) {
                myDragEventHandler = null;
            }

            if (!(getBounds().contains(event.getX(), event.getY()))) {
                return;
            }

            DragEvent dragEvent = new DragEvent(event, handler -> myDragEventHandler = handler);

            for (LayerImpl layer : myReversedLayers) {
                for (DragEventListener listener : layer.getDragListeners()) {
                    listener.onDragStarted(dragEvent);
                    if (dragEvent.isConsumed()) {
                        return;
                    }
                }
            }
        }

        @Override
        public void mouseClicked(MouseEvent event) {
            if (!(getBounds().contains(event.getX(), event.getY()))) {
                return;
            }
            if (event.isPopupTrigger()) {
                return;
            }

            ClickEvent clickEvent = new ClickEvent(event, () -> { });

            for (LayerImpl layer : myReversedLayers) {
                for (ClickEventListener listener : layer.getClickListeners()) {
                    listener.onMouseClicked(clickEvent);
                    if (clickEvent.isConsumed()) {
                        return;
                    }
                }
            }

            if (event.getClickCount() == 2) {
                EditorComponent ec = (EditorComponent) getContext().getEditorComponent();
                myCompletionPositionX = event.getX();
                myCompletionPositionY = event.getY();
                ec.activateNodeSubstituteChooser(EditorCell_Scene.this, true);
            }
        }

        @Override
        public void mouseMoved(MouseEvent event) {
            for (CursorListner listener : myCursorListeners) {
                listener.onCursorMoved(new CursorEvent(event));
            }
        }

        @Override
        public void mouseReleased(MouseEvent event) {
            if (event.isPopupTrigger()) {
                return;
            }
            if (myDragEventHandler == null) {
                return;
            }

            myDragEventHandler.completeAt(event.getX(), event.getY());
            myDragEventHandler = null;
        }

        @Override
        public void mouseDragged(MouseEvent event) {
            if (myDragEventHandler == null) {
                return;
            }

            myDragEventHandler.dragTo(event.getX(), event.getY());
        }
    };

    private Rectangle getBounds() {
        return new Rectangle(myX, myY, myWidth, myHeight);
    }

    @Override
    public NodeSubstitutePatternEditor createSubstitutePatternEditor() {
        return new NodeSubstitutePatternEditor() {
            @Override
            public void activate(Window owner, Point location, Dimension size, boolean show) {
                EditorComponent component = ((EditorComponent) getContext().getEditorComponent());
                Point anchor = component.getLocationOnScreen();
                location.move(anchor.x + myCompletionPositionX, anchor.y + myCompletionPositionY);
                super.activate(owner, location, new Dimension(300, 0), show);
            }

            @Override
            public void setLocation(Point point) {
                EditorComponent component = ((EditorComponent) getContext().getEditorComponent());
                Point anchor = component.getLocationOnScreen();
                point.move(anchor.x + myCompletionPositionX, anchor.y + myCompletionPositionY);
                super.setLocation(point);
            }

        };
    }

    private class MySubtituteInfo extends AbstractNodeSubstituteInfo {

        private MySubtituteInfo(EditorContext editorContext) {
            super(editorContext);
        }

        @Override
        protected List<SubstituteAction> createActions() {
            List<SubstituteAction> result = new ArrayList<>();
            for (SceneCompletionProvider provider : myCompletionProviders) {
                for (SceneCompletionAction action : provider.getActions()) {
                    result.add(new AbstractSubstituteAction(getSNode()) {
                        public String getMatchingText(String pattern) {
                            return action.getMatchingText(pattern);
                        }

                        public String getDescriptionText(String pattern) {
                            return action.getDescriptionText();
                        }

                        @Override
                        protected SNode doSubstitute(@Nullable EditorContext editorContext, String pattern) {
                            action.invoke(pattern, myCompletionPositionX, myCompletionPositionY);
                            return null;
                        }
                    });
                }
            }
            return result;
        }
    }

    @Override
    public void setX(int x) {
        requestRelayout();
        super.setX(x);
    }

    @Override
    public void setY(int y) {
        requestRelayout();
        super.setY(y);
    }

    @Override
    public void fireRelayout() {
        requestRelayout();
        fireRepaint();
    }

    @Override
    public void fireRepaint() {
        ApplicationManager.getApplication().invokeLater(() -> {
            EditorComponent editorComponent = (EditorComponent) getEditorComponent();
            editorComponent.repaint(EditorCell_Scene.this);
        });
    }

    @Override
    public EditorCell findNearestLeafOnLine(int x, int y, Condition<EditorCell> condition) {
        return null;
    }

    @Override
    public EditorCell findLeaf(int x, int y) {
        EditorCell leaf = super.findLeaf(x, y);
        if (leaf != null) {
            return leaf;
        }
        if (getBounds().contains(x, y)) {
            return this;
        }
        return null;
    }

    private static final AbstractCellLayout CELL_LAYOUT = new AbstractCellLayout() {
        public void doLayout(jetbrains.mps.openapi.editor.cells.EditorCell_Collection cell) {
            if (cell instanceof EditorCell_Scene) {
                EditorCell_Scene scene = (EditorCell_Scene) cell;

                if (scene.myLayout == SceneLayout.WINDOWED) {
                    doRelayout(scene);
                    Rectangle bounds = calculateBounds(scene);
                    scene.myWidth = bounds.width + bounds.x - scene.myX + 15;
                    scene.myHeight = bounds.height + bounds.y - scene.myY + 10;
                } else {
                    Rectangle bounds = calculateBounds(scene);
                    updateViewport(scene, bounds);
                    doRelayout(scene);
                    bounds = calculateBounds(scene);
                    scene.myWidth = bounds.width + bounds.x - scene.myX + 15;
                    scene.myHeight = bounds.height + bounds.y - scene.myY + 10;
                    if (scene.myWidth < 900) {
                        scene.myWidth = 900;
                    }
                    if (scene.myHeight < 600) {
                        scene.myHeight = 600;
                    }
                }
            }
        }

        private void updateViewport(EditorCell_Scene scene, Rectangle bounds) {
            InheritedViewpoint viewpoint = scene.myViewpoint;
            int deltaX;
            int deltaY;
            if (bounds.x < scene.myX) {
                deltaX = scene.myX - bounds.x;
                viewpoint.myShiftX += deltaX;
            }
            if (bounds.y < scene.myY) {
                deltaY = scene.myY - bounds.y;
                viewpoint.myShiftY += deltaY;
            }
        }

        private Rectangle calculateBounds(EditorCell_Scene scene) {
            Rectangle bounds = new Rectangle(-1, -1);
            for (SceneLayouter layouter : scene.myLayouters) {
                bounds = bounds.union(layouter.getLayoutBounds());
            }
            for (jetbrains.mps.nodeEditor.cells.EditorCell c : scene.getCells()) {
                bounds = bounds.union(new Rectangle(c.getX(), c.getY(), c.getWidth(), c.getHeight()));
            }
            return bounds;
        }

        private void doRelayout(EditorCell_Scene scene) {
            for (LayerImpl layer : scene.myLayers) {
                for (EditorCellProvider provider : layer.getCellProviders()) {
                    provider.relayoutCells();
                }
            }
            for (SceneLayouter layouter : scene.myLayouters) {
                layouter.relayout();
            }
        }

        @Override
        public void move(jetbrains.mps.openapi.editor.cells.EditorCell_Collection cell, int deltaX, int deltaY) {
            if (cell instanceof EditorCell_Scene) {
                EditorCell_Scene scene = (EditorCell_Scene) cell;

                for (SceneLayouter layouter : scene.myLayouters) {
                    layouter.relayout();
                }

                if (scene.myLayout == SceneLayout.WINDOWED) {
//                    scene.myWidth = EditorSettings.getInstance().getVerticalBoundWidth() - scene.myX;
                }
            }

        }

        public TextBuilder doLayoutText(Iterable<EditorCell> cell) {
            // do nothing
            return new TextBuilderImpl();
        }
    };

    private class InheritedViewpoint implements SceneViewpoint {
        private int myShiftX;
        private int myShiftY;

        @Override
        public Point getEditorShift() {
            return new Point(myShiftX, myShiftY);
        }

        @Override
        public float getEditorScale() {
            return ((float) LayoutUtil.getLineSize(getStyle())) / 100;
        }
    }

}
