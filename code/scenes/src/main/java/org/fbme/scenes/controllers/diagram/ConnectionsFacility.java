package org.fbme.scenes.controllers.diagram;

import jetbrains.mps.nodeEditor.MPSColors;
import jetbrains.mps.nodeEditor.cells.EditorCell;
import jetbrains.mps.openapi.editor.EditorContext;
import jetbrains.mps.openapi.editor.cells.CellAction;
import jetbrains.mps.openapi.editor.cells.CellActionType;
import org.fbme.scenes.controllers.*;
import org.fbme.scenes.controllers.scene.*;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

import java.awt.*;
import java.util.List;
import java.util.*;
import java.util.function.BiConsumer;
import java.util.function.BiFunction;
import java.util.function.Function;

public class ConnectionsFacility<CompT, PortT, ConnT, CursorT, PathT> {

    private static final SceneStateKey<Set<?>> SELECTION_KEY = new SceneStateKey<>("conn-selection");

    private final Map<ConnT, ConnectionEntry<CompT, PortT, ConnT, CursorT, PathT>> myConnections = new HashMap<>();

    final SceneEditor myScene;
    final ConnectionControllerFactory<ConnT, CursorT, PathT> myControllerFactory;
    final SelectionModel<CompT> myComponentsSelection;
    final ConnectionPathSyncronizer<ConnT, PathT> myConnectionSynchronizer;
    final DiagramController<CompT, PortT, ConnT> myDiagramController;
    final SceneFocusModel mySceneFocus;

    final Set<ConnT> myConnectionsSelection = new HashSet<>();
    ConnectionCursor<ConnT, CursorT> myConnectionCursor;

    private final FocusHandle myFocusHandle = new FocusHandle(() -> {
        myConnectionsSelection.clear();
        clearSelection();
    });

    private final BiFunction<Point, Point, PathT> myNewPathFactory;
    private final BiConsumer<Graphics, PathT> myNewPathPainter;
    private PathT myNewConnectionPath;

    private final CellAction myDeleteSelectedConnections = new CellAction() {
        @Override
        public String getDescriptionText() {
            return "Delete selected connections";
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
            for (ConnectionEntry<CompT, PortT, ConnT, CursorT, PathT> connection : myConnections.values()) {
                if (connection.isSelected()) {
                    myDiagramController.removeEdge(connection.myConnection);
                }
            }
        }
    };


    public ConnectionsFacility(
            SceneEditor scene,
            ConnectionControllerFactory<ConnT, CursorT, PathT> controllerFactory,
            BiFunction<Point, Point, PathT> pathFactory,
            BiConsumer<Graphics, PathT> pathPainter,
            ConnectionPathSyncronizer<ConnT, PathT> connectionSyncronizer,
            ROLayoutModel<CompT> componentsLayout,
            SelectionModel<CompT> componentsSelection,
            DiagramController<CompT, PortT, ConnT> diagramController,
            Layer connectionsLayer,
            Layer tracesLayer,
            SceneFocusModel focus
    ) {
        myScene = scene;
        myControllerFactory = controllerFactory;
        myNewPathFactory = pathFactory;
        myNewPathPainter = pathPainter;
        myComponentsSelection = componentsSelection;
        myConnectionSynchronizer = connectionSyncronizer;
        myDiagramController = diagramController;
        mySceneFocus = focus;

        componentsLayout.addListener(new ROLayoutModel.Listener<>() {
            @Override
            public void onComponentAdded(@NotNull CompT component, int x, int y) {
            }

            @Override
            public void onComponentRemoved(@NotNull CompT component) {
            }

            public void onComponentsMoved(@NotNull Set<CompT> components, int dx, int dy, boolean completed) {
                ConnectionsFacility.this.onComponentsMoved(components, dx, dy, completed);
            }
        });

        init();

        scene.addLayouter(new MyLayouter());
        scene.addInitializer(new MySelectionInitializer());
        scene.addCellProvider(connectionsLayer, new MyCellProvider());
        scene.addCellActionProvider(new MyCellActionProvider());
        scene.addCursorListener(new MyCursorListener());
        scene.addPainter(connectionsLayer, new MyPainter());
        scene.addClickListener(connectionsLayer, new MyClickListener());
        scene.addDragListener(connectionsLayer, new MyDragListener());
        scene.addPainter(tracesLayer, new MyTracesPainter());
    }

    private void init() {
        Set<ConnT> viewConnections = myDiagramController.getConnections();

        for (ConnT connection : viewConnections) {
            myConnections.put(connection, new ConnectionEntry<>(ConnectionsFacility.this, connection));
        }
    }


    private void clearSelection() {
        for (ConnectionEntry<CompT, PortT, ConnT, CursorT, PathT> connection : myConnections.values()) {
            connection.myController.updateCellSelection(false);
        }
    }


    public void onComponentsMoved(Set<CompT> components, int dx, int dy, boolean completed) {
        List<PortT> ports = new ArrayList<>();
        for (CompT component : components) {
            ports.addAll(myDiagramController.getPorts(component));
        }

        for (Map.Entry<ConnT, ConnectionEntry<CompT, PortT, ConnT, CursorT, PathT>> connection : myConnections.entrySet()) {
            ConnT connecitonView = connection.getKey();
            ConnectionEntry<CompT, PortT, ConnT, CursorT, PathT> entry = connection.getValue();

            PortT sourcePort = myDiagramController.getSource(connecitonView);
            PortT targetPort = myDiagramController.getTarget(connecitonView);

            boolean sourceMoved = ports.contains(sourcePort);
            boolean targetMoved = ports.contains(targetPort);
            if (sourceMoved && targetMoved) {
                BiFunction<Point, Point, PathT> endpointsTransformation = entry.myController.getEndpointsTransformation(entry.myModelPath);

                Point sourcePosition = myDiagramController.getPortController(sourcePort).getModelEndpointPosition();
                Point targetPosition = myDiagramController.getPortController(targetPort).getModelEndpointPosition();
                sourcePosition.translate(dx, dy);
                targetPosition.translate(dx, dy);

                PathT translatedPath = endpointsTransformation.apply(sourcePosition, targetPosition);
                changePath(entry, connecitonView, translatedPath, completed);
                continue;
            }
            if (targetMoved) {
                Point targetPosition = myDiagramController.getPortController(targetPort).getModelEndpointPosition();
                targetPosition.translate(dx, dy);
                Function<Point, PathT> targetTransformation = entry.myController.getTargetTransformation(entry.myModelPath);
                PathT translatedPath = targetTransformation.apply(targetPosition);
                changePath(entry, connecitonView, translatedPath, completed);
                continue;
            }
            if (sourceMoved) {
                Point sourcePosition = myDiagramController.getPortController(sourcePort).getModelEndpointPosition();
                sourcePosition.translate(dx, dy);
                Function<Point, PathT> sourceTransformation = entry.myController.getSourceTransformation(entry.myModelPath);
                PathT translatedPath = sourceTransformation.apply(sourcePosition);
                changePath(entry, connecitonView, translatedPath, completed);
            }
        }
    }

    private void changePath(ConnectionEntry<CompT, PortT, ConnT, CursorT, PathT> entry, ConnT connecitonView, PathT translatedPath, boolean completed) {
        if (completed) {
            myConnectionSynchronizer.setPath(connecitonView, translatedPath);
            entry.myTransformedPath = null;
        } else {
            entry.myTransformedPath = translatedPath;
        }
    }

    public class MySelectionInitializer implements SceneInitializer {

        @Override
        public void onAdd() {
            @SuppressWarnings("unchecked")
            Set<ConnT> selection = (Set<ConnT>) myScene.loadState(SELECTION_KEY);
            if (selection != null) {
                myConnectionsSelection.addAll(selection);
                if (!(selection.isEmpty())) {
                    mySceneFocus.addFocus(myFocusHandle);
                }
            }
        }

        @Override
        public void onRemove() {
            myScene.storeState(SELECTION_KEY, new HashSet<>(myConnectionsSelection));
        }
    }

    private class MyCursorListener implements CursorListner {

        @Override
        public void onCursorMoved(CursorEvent event) {
            int x = event.awt.getX();
            int y = event.awt.getY();
            for (Map.Entry<ConnT, ConnectionEntry<CompT, PortT, ConnT, CursorT, PathT>> connection : myConnections.entrySet()) {
                ConnectionEntry<CompT, PortT, ConnT, CursorT, PathT> entry = connection.getValue();
                CursorT cursor = entry.myController.getCursorAt(entry.myModelPath, x, y);
                if (cursor != null) {
                    ConnectionCursor<ConnT, CursorT> freshConnectionCursor = new ConnectionCursor<>(connection.getKey(), cursor);
                    if (!(freshConnectionCursor.equals(myConnectionCursor))) {
                        myScene.fireRepaint();
                        myConnectionCursor = freshConnectionCursor;
                    }
                    return;
                }
            }
            if (myConnectionCursor != null) {
                myScene.fireRepaint();
                myConnectionCursor = null;
            }
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
                return myDeleteSelectedConnections;
            }
            return null;
        }
    }

    private class MyLayouter implements SceneLayouter {

        @Override
        public void relayout() {
            for (ConnectionEntry<CompT, PortT, ConnT, CursorT, PathT> connection : myConnections.values()) {
                connection.relayout();
            }
        }

        @NotNull
        @Override
        public Rectangle getLayoutBounds() {
            Rectangle bounds = new Rectangle(-1, -1);
            for (ConnectionEntry<CompT, PortT, ConnT, CursorT, PathT> connection : myConnections.values()) {
                bounds = bounds.union(connection.getLayoutBounds());
            }
            return bounds;
        }
    }

    private class MyPainter implements ScenePainter {

        @Override
        public void paint(Graphics2D graphics) {
            for (ConnectionEntry<CompT, PortT, ConnT, CursorT, PathT> connection : myConnections.values()) {
                PathT path = connection.myTransformedPath;
                boolean selected = true;
                if (path == null) {
                    path = connection.myModelPath;
                    selected = false;
                }
                connection.myController.paintConneciton(path, connection.getCursor(), selected || connection.isSelected(), graphics.create());
            }
            if (myNewConnectionPath != null) {
                graphics.setColor(MPSColors.DARK_GRAY);
                myNewPathPainter.accept(graphics.create(), myNewConnectionPath);
            }
        }
    }

    private class MyTracesPainter implements ScenePainter {

        @Override
        public void paint(Graphics2D graphics) {
            for (ConnectionEntry<CompT, PortT, ConnT, CursorT, PathT> connection : myConnections.values()) {
                if (connection.myTransformedPath != null) {
                    connection.myController.paintTrace(connection.myModelPath, graphics.create());
                }
            }
        }
    }

    private class MyClickListener implements ClickEventListener {

        @Override
        public void onMouseClicked(ClickEvent event) {
            boolean focusCleared = false;
            for (ConnectionEntry<CompT, PortT, ConnT, CursorT, PathT> connection : myConnections.values()) {
                if (connection.myController.isSelectableAt(connection.myModelPath, event.awt.getX(), event.awt.getY())) {
                    if (!(focusCleared) && !(event.awt.isMetaDown())) {
                        myConnectionsSelection.clear();
                        mySceneFocus.clearFocus();
                        focusCleared = true;
                    }
                    if (myConnectionsSelection.contains(connection.myConnection)) {
                        myConnectionsSelection.remove(connection.myConnection);
                    } else {
                        myConnectionsSelection.add(connection.myConnection);
                        mySceneFocus.addFocus(myFocusHandle);
                    }
                    event.consume();
                    myScene.fireRepaint();
                }
            }
        }
    }

    private class MyCellProvider implements EditorCellProvider {


        @Override
        public List<EditorCell> getCells() {
            List<EditorCell> cells = new ArrayList<>();
            for (ConnectionEntry<CompT, PortT, ConnT, CursorT, PathT> connection : myConnections.values()) {
                EditorCell cell = connection.myController.getConnectionCell();
                if (cell != null) {
                    cells.add(cell);
                }
            }
            return cells;
        }
    }

    private class MyDragListener implements DragEventListener {

        @Override
        public void onDragStarted(DragEvent event) {
            if (!(myDiagramController.isDiagramEditable())) {
                return;
            }
            int x = event.awt.getX();
            int y = event.awt.getY();
            for (ConnectionEntry<CompT, PortT, ConnT, CursorT, PathT> connection : myConnections.values()) {
                ConnectionController<CursorT, PathT> controller = connection.myController;
                Function<Point, PathT> pathTransformation = controller.getEdgeTransformation(connection.myModelPath, x, y);
                if (pathTransformation != null) {
                    event.consume(new ConnectionPathChangeDragEventHandler(x, y, pathTransformation, connection));
                    return;
                }
                if (controller.isSourceTransformableAt(connection.myModelPath, x, y)) {
                    event.consume(new ConnectionSourceChangeDragEventHandler(x, y, controller.getSourceTransformation(connection.myModelPath), connection));
                    return;
                }
                if (controller.isTargetTransformableAt(connection.myModelPath, x, y)) {
                    event.consume(new ConnectionTargetChangeDragEventHandler(x, y, controller.getTargetTransformation(connection.myModelPath), connection));
                    return;
                }
            }
            PortT port = myDiagramController.findPort(x, y);
            if (port != null) {
                PortController setting = myDiagramController.getPortController(port);
                if (setting.canBeSourcedAt(x, y)) {
                    event.consume(new NewConnectionFromSourceDragEventHandler(port));
                } else if (setting.canBeTargetedAt(x, y)) {
                    event.consume(new NewConnectionFromTargetDragEventHandler(port));
                }
            }
        }
    }


    private Point sourcePoint(int x, int y) {
        PortT port = myDiagramController.findPort(x, y);
        Point source = new Point(x, y);
        if (port != null) {
            PortController portSettings = myDiagramController.getPortController(port);
            if (portSettings.canBeSourcedAt(x, y)) {
                source = portSettings.getModelEndpointPosition();
            }
        }
        return source;
    }

    private Point targetPoint(int x, int y) {
        PortT port = myDiagramController.findPort(x, y);
        Point target = new Point(x, y);
        if (port != null) {
            PortController portSettings = myDiagramController.getPortController(port);
            if (portSettings.canBeTargetedAt(x, y)) {
                target = portSettings.getModelEndpointPosition();
            }
        }
        return target;
    }


    private class NewConnectionFromSourceDragEventHandler implements DragEventHandler {
        private final PortT mySource;
        private final Point mySourceLocation;

        private NewConnectionFromSourceDragEventHandler(PortT source) {
            mySource = source;
            mySourceLocation = myDiagramController.getPortController(source).getModelEndpointPosition();
            dragTo(mySourceLocation.x, mySourceLocation.y);
        }

        @Override
        public void dragTo(int x, int y) {
            Point target = targetPoint(x, y);
            myNewConnectionPath = myNewPathFactory.apply(mySourceLocation, target);
            myScene.fireRepaint();
        }

        @Override
        public void completeAt(int x, int y) {
            final PortT target = myDiagramController.findPort(x, y);
            if (target != null) {
                final PortController targetSettings = myDiagramController.getPortController(target);
                if (targetSettings.canBeTargetedAt(x, y)) {
                    myScene.getContext().getRepository().getModelAccess().executeCommandInEDT(() -> {
                        ConnT edge = myDiagramController.addEdge(mySource, target);
                        if (edge == null) {
                            return;
                        }
                        myConnectionSynchronizer.setPath(edge, myNewPathFactory.apply(mySourceLocation, targetSettings.getModelEndpointPosition()));
                    });
                }
            }
            myNewConnectionPath = null;
            myScene.fireRepaint();
        }
    }

    private class NewConnectionFromTargetDragEventHandler implements DragEventHandler {
        private final PortT myTarget;
        private final Point myTargetLocation;

        private NewConnectionFromTargetDragEventHandler(PortT target) {
            myTarget = target;
            myTargetLocation = myDiagramController.getPortController(target).getModelEndpointPosition();
            dragTo(myTargetLocation.x, myTargetLocation.y);
        }

        @Override
        public void dragTo(int x, int y) {
            Point source = sourcePoint(x, y);
            myNewConnectionPath = myNewPathFactory.apply(source, myTargetLocation);
            myScene.fireRepaint();
        }

        @Override
        public void completeAt(int x, int y) {
            final PortT source = myDiagramController.findPort(x, y);
            if (source != null) {
                final PortController sourceSettings = myDiagramController.getPortController(source);
                if (sourceSettings.canBeSourcedAt(x, y)) {
                    myScene.getContext().getRepository().getModelAccess().executeCommandInEDT(() -> {
                        ConnT edge = myDiagramController.addEdge(source, myTarget);
                        if (edge == null) {
                            return;
                        }
                        myConnectionSynchronizer.setPath(edge, myNewPathFactory.apply(sourceSettings.getModelEndpointPosition(), myTargetLocation));
                    });
                }
            }
            myNewConnectionPath = null;
            myScene.fireRepaint();
        }
    }

    private class ConnectionPathChangeDragEventHandler implements DragEventHandler {
        private final Function<Point, PathT> myPathTransformation;
        private final ConnectionEntry<CompT, PortT, ConnT, CursorT, PathT> myEntry;

        private ConnectionPathChangeDragEventHandler(
                int initialX,
                int initialY,
                Function<Point, PathT> pathTransformation,
                ConnectionEntry<CompT, PortT, ConnT, CursorT, PathT> entry
        ) {
            myPathTransformation = pathTransformation;
            myEntry = entry;
            dragTo(initialX, initialY);
        }

        @Override
        public void dragTo(int x, int y) {
            myEntry.myTransformedPath = myPathTransformation.apply(new Point(x, y));
            myScene.fireRelayout();
        }

        @Override
        public void completeAt(final int x, final int y) {
            myScene.getContext().getRepository().getModelAccess().executeCommandInEDT(() -> myConnectionSynchronizer.setPath(myEntry.myConnection, myPathTransformation.apply(new Point(x, y))));
            myEntry.myTransformedPath = null;
        }
    }

    private class ConnectionSourceChangeDragEventHandler implements DragEventHandler {
        private final Function<Point, PathT> myPathTransformation;
        private final ConnectionEntry<CompT, PortT, ConnT, CursorT, PathT> myEntry;

        private ConnectionSourceChangeDragEventHandler(
                int initialX,
                int initialY,
                Function<Point, PathT> pathTransformation,
                ConnectionEntry<CompT, PortT, ConnT, CursorT, PathT> entry
        ) {
            myPathTransformation = pathTransformation;
            myEntry = entry;
            dragTo(initialX, initialY);
        }

        @Override
        public void dragTo(int x, int y) {
            Point source = sourcePoint(x, y);
            myEntry.myTransformedPath = myPathTransformation.apply(source);
            myScene.fireRelayout();
        }

        @Override
        public void completeAt(int x, int y) {
            final PortT port = myDiagramController.findPort(x, y);
            if (port != null) {
                final PortController portSettings = myDiagramController.getPortController(port);
                if (portSettings.canBeSourcedAt(x, y)) {
                    myScene.getContext().getRepository().getModelAccess().executeCommandInEDT(() -> {
                        myConnectionSynchronizer.setPath(myEntry.myConnection, myPathTransformation.apply(portSettings.getModelEndpointPosition()));
                        myDiagramController.setSource(myEntry.myConnection, port);
                    });
                }
            }
            myEntry.myTransformedPath = null;
        }
    }

    private class ConnectionTargetChangeDragEventHandler implements DragEventHandler {
        private final Function<Point, PathT> myPathTransformation;
        private final ConnectionEntry<CompT, PortT, ConnT, CursorT, PathT> myEntry;

        private ConnectionTargetChangeDragEventHandler(int initialX, int initialY, Function<Point, PathT> pathTransformation, ConnectionEntry<CompT, PortT, ConnT, CursorT, PathT> entry) {
            myPathTransformation = pathTransformation;
            myEntry = entry;
            dragTo(initialX, initialY);
        }

        @Override
        public void dragTo(int x, int y) {
            Point target = targetPoint(x, y);
            myEntry.myTransformedPath = myPathTransformation.apply(target);
            myScene.fireRelayout();
        }

        @Override
        public void completeAt(int x, int y) {
            final PortT port = myDiagramController.findPort(x, y);
            if (port != null) {
                final PortController portSettings = myDiagramController.getPortController(port);
                if (portSettings.canBeTargetedAt(x, y)) {
                    myScene.getContext().getRepository().getModelAccess().executeCommandInEDT(() -> {
                        myConnectionSynchronizer.setPath(myEntry.myConnection, myPathTransformation.apply(portSettings.getModelEndpointPosition()));
                        myDiagramController.setTarget(myEntry.myConnection, port);
                    });
                }
            }
            myEntry.myTransformedPath = null;
            myScene.fireRelayout();
        }
    }

    @NotNull
    public ConnectionController<CursorT, PathT> getController(@NotNull ConnT connection) {
        ConnectionEntry<CompT, PortT, ConnT, CursorT, PathT> entry = myConnections.get(connection);
        return entry.myController;
    }
}
