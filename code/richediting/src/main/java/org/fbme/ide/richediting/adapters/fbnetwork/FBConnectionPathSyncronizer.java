package org.fbme.ide.richediting.adapters.fbnetwork;

import org.fbme.ide.richediting.viewmodel.NetworkConnectionView;
import org.fbme.lib.iec61499.fbnetwork.ConnectionPath;
import org.fbme.lib.iec61499.fbnetwork.LongConnectionPath;
import org.fbme.scenes.controllers.SceneViewpoint;
import org.fbme.scenes.controllers.diagram.ConnectionPathSyncronizer;
import org.jetbrains.annotations.NotNull;

import java.awt.*;
import java.util.List;
import java.util.function.BiFunction;
import java.util.stream.Collectors;

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
        final ConnectionPath path = connection.getConnectionPath();

        if (path instanceof LongConnectionPath) {
            LongConnectionPath longPath = (LongConnectionPath) path;

            List<Point> editorBendPoints = longPath.getBendPoints().stream().map(point -> {
                int x = myViewpoint.translateToEditorX((int) (point.x * myScale));
                int y = myViewpoint.translateToEditorY((int) (point.y * myScale));
                return new Point(x, y);
            }).collect(Collectors.toList());

            return (sourcePosition, targetPosition) -> new FBConnectionPath(
                    sourcePosition,
                    targetPosition,
                    editorBendPoints
            );
        }

        final int dx1 = (int) (myScale * path.getDX1());
        final int dy = (int) (myScale * path.getDY());
        final int dx2 = (int) (myScale * path.getDX2());

        return (sourcePosition, targetPosition) -> new FBConnectionPath(
                sourcePosition,
                targetPosition,
                path.getKind(),
                sourcePosition.x + myViewpoint.toEditorDimension(dx1),
                sourcePosition.y + myViewpoint.toEditorDimension(dy),
                targetPosition.x - myViewpoint.toEditorDimension(dx2)
        );
    }

    @Override
    public void setPath(@NotNull NetworkConnectionView connection, @NotNull FBConnectionPath path) {
        Point sourcePosition = path.getSourcePosition();
        Point targetPosition = path.getTargetPosition();
        int dx1 = (int) (myViewpoint.fromEditorDimension(path.getX1() - sourcePosition.x) / myScale);
        int dy = (int) (myViewpoint.fromEditorDimension(path.getY() - sourcePosition.y) / myScale);
        int dx2 = (int) (myViewpoint.fromEditorDimension(targetPosition.x - path.getX2()) / myScale);

        if (path.getPathKind() == ConnectionPath.Kind.MoreThanFour) {
            List<Point> modelBendPoints = path.getBendPoints().stream().map(point -> {
                int x = (int) (myViewpoint.translateFromEditorX(point.x) / myScale);
                int y = (int) (myViewpoint.translateFromEditorY(point.y) / myScale);
                return new Point(x, y);
            }).collect(Collectors.toList());

            connection.setPath(new LongConnectionPath(dx1, dy, dx2, modelBendPoints));
        } else {
            connection.setPath(new ConnectionPath(path.getPathKind(), dx1, dy, dx2));
        }
    }
}
