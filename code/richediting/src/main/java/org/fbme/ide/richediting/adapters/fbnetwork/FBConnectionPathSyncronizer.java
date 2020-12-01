package org.fbme.ide.richediting.adapters.fbnetwork;

import org.fbme.ide.richediting.viewmodel.NetworkConnectionView;
import org.fbme.lib.iec61499.fbnetwork.ConnectionPath;
import org.fbme.scenes.controllers.SceneViewpoint;
import org.fbme.scenes.controllers.diagram.ConnectionPathSyncronizer;
import org.jetbrains.annotations.NotNull;

import java.awt.*;
import java.util.function.BiFunction;

public class FBConnectionPathSyncronizer implements ConnectionPathSyncronizer<NetworkConnectionView, FBConnectionPath> {

    private final SceneViewpoint myViewpoint;
    private final float myScale;

    public FBConnectionPathSyncronizer(SceneViewpoint viewpoint, float scale) {
        myViewpoint = viewpoint;
        myScale = scale;
    }

    @NotNull
    @Override
    public BiFunction<Point, Point, FBConnectionPath> getPath(@NotNull NetworkConnectionView connection) {
        final ConnectionPath pathView = connection.getConnectionPath();
        final int dx1 = (int) (myScale * pathView.getDX1());
        final int dy = (int) (myScale * pathView.getDY());
        final int dx2 = (int) (myScale * pathView.getDX2());
        return (soucrePosition, targetPosition) -> new FBConnectionPath(soucrePosition, targetPosition, pathView.getKind(), soucrePosition.x + myViewpoint.toEditorDimension(dx1), soucrePosition.y + myViewpoint.toEditorDimension(dy), targetPosition.x - myViewpoint.toEditorDimension(dx2));
    }

    @Override
    public void setPath(@NotNull NetworkConnectionView connection, @NotNull FBConnectionPath path) {
        Point sourcePosition = path.getSourcePosition();
        Point targetPosition = path.getTargetPosition();
        int dx1 = (int) (myViewpoint.fromEditorDimension(path.getX1() - sourcePosition.x) / myScale);
        int dy = (int) (myViewpoint.fromEditorDimension(path.getY() - sourcePosition.y) / myScale);
        int dx2 = (int) (myViewpoint.fromEditorDimension(targetPosition.x - path.getX2()) / myScale);

        connection.setPath(new ConnectionPath(path.getPathKind(), dx1, dy, dx2));
    }
}
