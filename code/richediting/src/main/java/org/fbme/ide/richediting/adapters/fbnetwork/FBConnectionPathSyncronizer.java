package org.fbme.ide.richediting.adapters.fbnetwork;

import com.intellij.openapi.util.Pair;
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
    private final ExpandedComponentsController expandedComponentsController;

    public FBConnectionPathSyncronizer(SceneViewpoint viewpoint, float scale, ExpandedComponentsController expandedComponentsController) {
        myViewpoint = viewpoint;
        myScale = scale;
        this.expandedComponentsController = expandedComponentsController;
    }

    @NotNull
    @Override
    public BiFunction<Point, Point, FBConnectionPath> getPath(@NotNull NetworkConnectionView connection) {
        final ConnectionPath path = connection.getConnectionPath();

        if (path instanceof LongConnectionPath) {
            LongConnectionPath longPath = (LongConnectionPath) path;

            return (sourcePosition, targetPosition) -> {
                List<Point> editorBendPoints = longPath.getBendPoints().stream().map(point -> {
                    int x = myViewpoint.translateToEditorX((int) (point.x * myScale));
                    int y = myViewpoint.translateToEditorY((int) (point.y * myScale));
                    return new Point(x, y);
                }).collect(Collectors.toList());

                FBConnectionPath fbConnectionPath = new FBConnectionPath(
                        sourcePosition,
                        targetPosition,
                        editorBendPoints
                );
                return getFBConnectionPathWithOffset(connection, sourcePosition, targetPosition, fbConnectionPath);
            };
        }

        final int dx1 = (int) (myScale * path.getDX1());
        final int dy = (int) (myScale * path.getDY());
        final int dx2 = (int) (myScale * path.getDX2());

        return (sourcePosition, targetPosition) -> {
            FBConnectionPath fbConnectionPath = new FBConnectionPath(
                    sourcePosition,
                    targetPosition,
                    path.getKind(),
                    sourcePosition.x + myViewpoint.toEditorDimension(dx1),
                    sourcePosition.y + myViewpoint.toEditorDimension(dy),
                    targetPosition.x - myViewpoint.toEditorDimension(dx2)
            );
            return getFBConnectionPathWithOffset(connection, sourcePosition, targetPosition, fbConnectionPath);
        };
    }

    @NotNull
    private FBConnectionPath getFBConnectionPathWithOffset(@NotNull NetworkConnectionView connection, Point sourcePosition, Point targetPosition, FBConnectionPath fbConnectionPath) {
        List<Point> bendPoints = fbConnectionPath.getBendPoints();
        List<Point> newBendPoints = FBConnectionController.deepCopy(bendPoints);
        for (int i = 1; i < newBendPoints.size(); i++) {
            Point u = newBendPoints.get(i - 1);
            Point v = newBendPoints.get(i);

            Pair<NetworkConnectionView, Integer> section = new Pair<>(connection, i);
            Integer offset = expandedComponentsController.getOffsetForSection(section);

            if (offset != null) {
                offset = myViewpoint.toEditorDimension(offset);
                boolean isHorizontal = i % 2 == 0;
                if (isHorizontal) {
                    u.translate(0, offset);
                    v.translate(0, offset);
                } else {
                    u.translate(offset, 0);
                    v.translate(offset, 0);
                }
            }
        }

        return new FBConnectionPath(sourcePosition, targetPosition, newBendPoints);
    }

    @Override
    public void setPath(@NotNull NetworkConnectionView connection, @NotNull FBConnectionPath path) {
        Point sourcePosition = path.getSourcePosition();
        Point targetPosition = path.getTargetPosition();
        int dx1 = (int) (myViewpoint.fromEditorDimension(path.getX1() - sourcePosition.x) / myScale);
        int dy = (int) (myViewpoint.fromEditorDimension(path.getY() - sourcePosition.y) / myScale);
        int dx2 = (int) (myViewpoint.fromEditorDimension(targetPosition.x - path.getX2()) / myScale);

        if (path.getPathKind() == ConnectionPath.Kind.MoreThanFour) {
            List<Point> bendPoints = path.getBendPoints();
            List<Point> newBendPoints = bendPoints.stream().map(point -> {
                int x = (int) (myViewpoint.translateFromEditorX(point.x) / myScale);
                int y = (int) (myViewpoint.translateFromEditorY(point.y) / myScale);
                return new Point(x, y);
            }).collect(Collectors.toList());

            for (int i = 1; i < newBendPoints.size(); i++) {
                Point u = newBendPoints.get(i - 1);
                Point v = newBendPoints.get(i);

                Pair<NetworkConnectionView, Integer> section = new Pair<>(connection, i);
                Integer offset = expandedComponentsController.getOffsetForSection(section);
                if (offset != null) {
                    boolean isHorizontal = i % 2 == 0;

                    float scaledOffset = offset / myScale;

                    if (isHorizontal) {
                        u.y -= scaledOffset;
                        v.y -= scaledOffset;
                    } else {
                        u.x -= scaledOffset;
                        v.x -= scaledOffset;
                    }
                }
            }
            connection.setPath(new LongConnectionPath(dx1, dy, dx2, newBendPoints));
        } else {
            connection.setPath(new ConnectionPath(path.getPathKind(), dx1, dy, dx2));
        }
    }
}
