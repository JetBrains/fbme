package org.fbme.scenes.controllers.diagram;

import org.fbme.scenes.controllers.SelectionModel;
import org.jetbrains.annotations.Nullable;

import java.awt.*;
import java.util.Set;
import java.util.function.BiFunction;

class ConnectionEntry<CompT, PortT, ConnT, CursorT, PathT> {
    private final ConnectionsFacility<CompT, PortT, ConnT, CursorT, PathT> myConnFacility;
    final ConnT myConnection;

    final ConnectionController<CursorT, PathT> myController;

    PathT myModelPath;
    PathT myTransformedPath;

    private final BiFunction<Point, Point, PathT> myPathProvider;

    ConnectionEntry(ConnectionsFacility<CompT, PortT, ConnT, CursorT, PathT> connFacility, ConnT connection) {
        myConnFacility = connFacility;
        myConnection = connection;
        myController = myConnFacility.myControllerFactory.create(myConnFacility.myScene.getContext(), myConnection);
        myPathProvider = myConnFacility.myConnectionSynchronizer.getPath(myConnection);
        DiagramController<CompT, PortT, ConnT> diagramController = myConnFacility.myDiagramController;
        PortController sourcePort = diagramController.getPortController(diagramController.getSource(myConnection));
        PortController targetPort = diagramController.getPortController(diagramController.getTarget(myConnection));
        myModelPath = myPathProvider.apply(sourcePort.getModelEndpointPosition(), targetPort.getModelEndpointPosition());
    }


    void relayout() {
        DiagramController<CompT, PortT, ConnT> diagramController = myConnFacility.myDiagramController;
        PortController sourcePort = diagramController.getPortController(diagramController.getSource(myConnection));
        PortController targetPort = diagramController.getPortController(diagramController.getTarget(myConnection));
        myModelPath = myPathProvider.apply(sourcePort.getModelEndpointPosition(), targetPort.getModelEndpointPosition());
        myController.updateCellWithPath((myTransformedPath != null ? myTransformedPath : myModelPath));
        myController.updateCellSelection(isSelected());
    }

    Rectangle getLayoutBounds() {
        Rectangle bounds = myController.getBounds(myModelPath);
        if (myTransformedPath != null) {
            bounds = bounds.union(myController.getBounds(myTransformedPath));
        }
        return bounds;
    }

    @Nullable
    CursorT getCursor() {
        if (myConnFacility.myConnectionCursor == null || myConnFacility.myConnectionCursor.getConnection() != myConnection) {
            return null;
        }
        return myConnFacility.myConnectionCursor.getCursor();
    }

    boolean isSelected() {
        Set<ConnT> myConnectionsSelection = myConnFacility.myConnectionsSelection;
        SelectionModel<CompT> componentsSelection = myConnFacility.myComponentsSelection;
        DiagramController<CompT, PortT, ConnT> diagramController = myConnFacility.myDiagramController;
        return myConnectionsSelection.contains(myConnection) ||
                componentsSelection.isSelected(diagramController.getComponent(diagramController.getSource(myConnection))) ||
                componentsSelection.isSelected(diagramController.getComponent(diagramController.getTarget(myConnection)));
    }
}
