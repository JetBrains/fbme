package org.fbme.ide.richediting.adapters.fbnetwork;

import jetbrains.mps.lang.smodel.generator.smodelAdapter.SNodeOperations;
import jetbrains.mps.nodeEditor.EditorSettings;
import jetbrains.mps.nodeEditor.MPSColors;
import jetbrains.mps.nodeEditor.cells.EditorCell;
import jetbrains.mps.nodeEditor.cells.EditorCell_Collection;
import jetbrains.mps.openapi.editor.EditorContext;
import jetbrains.mps.smodel.adapter.structure.MetaAdapterFactory;
import org.fbme.ide.richediting.adapters.fb.DiagramColors;
import org.fbme.ide.richediting.viewmodel.NetworkConnectionView;
import org.fbme.lib.iec61499.fbnetwork.ConnectionPath;
import org.fbme.lib.iec61499.fbnetwork.EntryKind;
import org.fbme.scenes.controllers.LayoutUtil;
import org.fbme.scenes.controllers.diagram.ConnectionController;
import org.jetbrains.annotations.Nullable;
import org.jetbrains.mps.openapi.language.SConcept;
import org.jetbrains.mps.openapi.model.SNode;

import java.awt.*;
import java.util.function.BiFunction;
import java.util.function.Function;

public class FBConnectionController implements ConnectionController<FBConnectionCursor, FBConnectionPath> {
    private static final int SELECTION_PADDING = 4;
    private static final int ENDPOINT_HOVER_LENGTH = FBConnectionUtils.ENDPOINTS_PADDING;
    private static final int ENDPOINTS_PADDING = FBConnectionUtils.ENDPOINTS_PADDING;

    private final EntryKind myKind;
    private boolean myIsEditable;

    private final EditorCell_Collection myFakeCell;

    private Color myHighlightColor = null;

    public FBConnectionController(EditorContext context, NetworkConnectionView view) {
        myKind = view.getKind();
        myIsEditable = view.isEditable();
        myIsEditable = true;
        SNode associatedNode = view.getAssociatedNode();
        myFakeCell = FakeCells.createCollection(context, associatedNode);
        myFakeCell.addEditorCell(FakeCells.create(context, SNodeOperations.ofConcept(SNodeOperations.getChildren(associatedNode), CONCEPTS.ConnectionPath$IA).iterator().next()));
    }

    public Color getHighlightColor() {
        return myHighlightColor;
    }

    public void setHighlightColor(Color highlightColor) {
        myHighlightColor = highlightColor;
    }

    @Nullable
    @Override
    public EditorCell getConnectionCell() {
        return myFakeCell;
    }

    @Override
    public void paintConnection(FBConnectionPath path, FBConnectionCursor cursor, boolean selected, Graphics graphics) {
        graphics = graphics.create();
        FBConnectionPathPainter painter = new FBConnectionPathPainter(path, cursor, scale(ENDPOINT_HOVER_LENGTH));
        if (myHighlightColor != null) {
            FBConnectionPathPainter.setupHighlightPathPaint(graphics, scale(1));
            graphics.setColor(myHighlightColor);
            painter.paint(graphics, false);
        }
        graphics.setColor(DiagramColors.getColorFor(myKind, myIsEditable));
        if (selected) {
            FBConnectionPathPainter.setupSelectedPathPaint(graphics, scale(1));
        } else {
            FBConnectionPathPainter.setupRegularPathPaint(graphics, scale(1));
        }
        painter.paint(graphics, selected);
    }


    @Override
    public void paintTrace(FBConnectionPath path, Graphics graphics) {
        graphics.setColor(MPSColors.GRAY);
        FBConnectionPathPainter.setupShadowPathPaint(graphics, scale(1));
        new FBConnectionPathPainter(path, null, scale(ENDPOINT_HOVER_LENGTH)).paint(graphics, false);
    }

    @Nullable
    @Override
    public Function<Point, FBConnectionPath> getEdgeTransformation(FBConnectionPath path, int ex, int ey) {
        if (!myIsEditable) {
            return null;
        }

        Point s = path.getSourcePosition();
        Point t = path.getTargetPosition();
        int x1 = path.getX1();
        int y = path.getY();
        int x2 = path.getX2();

        switch (path.getPathKind()) {
            case TwoAngles:
                if (checkLineSelection(ey, ex, s.y, x1, t.y)) {
                    return getX1EdgePathTransformation(path);
                }
                break;
            case FourAngles:
                if (Math.abs(ex - x1) < scale(SELECTION_PADDING) && ey > Math.min(s.y, y) && ey < Math.max(s.y, y)) {
                    return getX1EdgePathTransformation(path);
                } else if (Math.abs(ey - y) < scale(SELECTION_PADDING) && ex > Math.min(x1, x2) && ex < Math.max(x1, x2)) {
                    return getYEdgePathTransformation(path);
                } else if (Math.abs(ex - x2) < scale(SELECTION_PADDING) && ey > Math.min(y, t.y) && ey < Math.max(y, t.y)) {
                    return getX2EdgePathTransformation(path);
                }
                break;
        }
        return null;
    }

    @Override
    public boolean isSourceTransformableAt(FBConnectionPath path, int ex, int ey) {
        if (!myIsEditable) {
            return false;
        }

        Point s = path.getSourcePosition();
        int x1 = path.getX1();

        return checkLineSelection(ex, ey, s.x, s.y, Math.max(s.x, Math.min(s.x + scale(ENDPOINT_HOVER_LENGTH), x1)));

    }

    @Override
    public boolean isTargetTransformableAt(FBConnectionPath path, int ex, int ey) {
        if (!myIsEditable) {
            return false;
        }

        Point t = path.getTargetPosition();
        int x1 = path.getX1();
        int x2 = path.getX2();

        switch (path.getPathKind()) {
            case TwoAngles:
                return checkLineSelection(ex, ey, t.x, t.y, Math.min(t.x, Math.max(t.x - scale(ENDPOINT_HOVER_LENGTH), x1)));
            case FourAngles:
                return checkLineSelection(ex, ey, t.x, t.y, Math.min(t.x, Math.max(t.x - scale(ENDPOINT_HOVER_LENGTH), x2)));
        }
        return false;
    }

    @Nullable
    @Override
    public Function<Point, FBConnectionPath> getSourceTransformation(FBConnectionPath path) {
        if (!myIsEditable) {
            return null;
        }

        return getConnectionSourceTransformation(path);
    }

    @Nullable
    @Override
    public Function<Point, FBConnectionPath> getTargetTransformation(FBConnectionPath path) {
        if (!myIsEditable) {
            return null;
        }

        return getConnectionTargetTransformation(path);
    }

    @Nullable
    @Override
    public BiFunction<Point, Point, FBConnectionPath> getEndpointsTransformation(final FBConnectionPath path) {
        if (!myIsEditable) {
            return null;
        }

        return (sourcePosition, targetPosition) -> {
            Point originalSourcePosition = path.getSourcePosition();
            int dx = sourcePosition.x - originalSourcePosition.x;
            int dy = sourcePosition.y - originalSourcePosition.y;
            return new FBConnectionPath(sourcePosition, targetPosition, path.getPathKind(), path.getX1() + dx, path.getY() + dy, path.getX2() + dx);
        };
    }

    private boolean checkLineSelection(int sx, int sy, int lx1, int ly, int lx2) {
        if (Math.abs(sy - ly) < scale(SELECTION_PADDING)) {
            if (lx1 < lx2) {
                return lx1 < sx && sx < lx2;
            } else {
                return lx1 > sx && sx > lx2;
            }
        }
        return false;
    }

    @Override
    public boolean isSelectableAt(FBConnectionPath path, int ex, int ey) {
        Point s = path.getSourcePosition();
        Point t = path.getTargetPosition();
        int x1 = path.getX1();
        int y = path.getY();
        int x2 = path.getX2();

        switch (path.getPathKind()) {
            case TwoAngles:
                return checkLineSelection(ex, ey, s.x, s.y, x1) || checkLineSelection(ey, ex, s.y, x1, t.y) || checkLineSelection(ex, ey, x1, t.y, t.x);
            case FourAngles:
                return checkLineSelection(ex, ey, s.x, s.y, x1) || checkLineSelection(ey, ex, s.y, x1, y) || checkLineSelection(ex, ey, x1, y, x2) || checkLineSelection(ey, ex, y, x2, t.y) || checkLineSelection(ex, ey, x2, t.y, t.x);
        }
        return false;
    }

    @Override
    public FBConnectionCursor getCursorAt(FBConnectionPath path, int ex, int ey) {
        if (!myIsEditable) {
            return null;
        }

        Point s = path.getSourcePosition();
        Point t = path.getTargetPosition();
        int x1 = path.getX1();
        int y = path.getY();
        int x2 = path.getX2();

        switch (path.getPathKind()) {
            case TwoAngles:
                if (checkLineSelection(ex, ey, s.x, s.y, x1)) {
                    if (s.x + scale(ENDPOINT_HOVER_LENGTH) < x1) {
                        return FBConnectionCursor.SOURCE_ENDPOINT;
                    } else {
                        return FBConnectionCursor.SOURCE_EDGE;
                    }
                } else if (checkLineSelection(ey, ex, s.y, x1, t.y)) {
                    return FBConnectionCursor.X1_EDGE;
                } else if (checkLineSelection(ex, ey, x1, t.y, t.x)) {
                    if (t.x - scale(ENDPOINT_HOVER_LENGTH) > x1) {
                        return FBConnectionCursor.TARGET_ENDPOINT;
                    } else {
                        return FBConnectionCursor.TARGET_EDGE;
                    }
                }
            case FourAngles:
                if (checkLineSelection(ex, ey, s.x, s.y, x1)) {
                    if (s.x + scale(ENDPOINT_HOVER_LENGTH) < x1) {
                        return FBConnectionCursor.SOURCE_ENDPOINT;
                    } else {
                        return FBConnectionCursor.SOURCE_EDGE;
                    }
                } else if (checkLineSelection(ey, ex, s.y, x1, y)) {
                    return FBConnectionCursor.X1_EDGE;
                } else if (checkLineSelection(ex, ey, x1, y, x2)) {
                    return FBConnectionCursor.Y_EDGE;
                } else if (checkLineSelection(ey, ex, y, x2, t.y)) {
                    return FBConnectionCursor.X2_EDGE;
                } else if (checkLineSelection(ex, ey, x2, t.y, t.x)) {
                    if (t.x - scale(ENDPOINT_HOVER_LENGTH) > x2) {
                        return FBConnectionCursor.TARGET_ENDPOINT;
                    } else {
                        return FBConnectionCursor.TARGET_EDGE;
                    }
                }
        }
        return null;
    }

    @Override
    public Rectangle getBounds(FBConnectionPath path) {
        Point s = path.getSourcePosition();
        Point t = path.getTargetPosition();
        int x1 = path.getX1();
        int y = path.getY();
        int x2 = path.getX2();

        int xmin = 0;
        int xmax = -1;
        int ymin = 0;
        int ymax = -1;
        switch (path.getPathKind()) {
            case Straight:
                xmin = Math.min(s.x, t.x);
                xmax = Math.max(s.x, t.x);
                ymin = Math.min(s.y, t.y);
                ymax = Math.max(s.y, t.y);
                break;
            case TwoAngles:
                xmin = Math.min(Math.min(s.x, t.x), x1);
                xmax = Math.max(Math.max(s.x, t.x), x1);
                ymin = Math.min(s.y, t.y);
                ymax = Math.max(s.y, t.y);
                break;
            case FourAngles:
                xmin = Math.min(Math.min(s.x, t.x), Math.min(x1, x2));
                xmax = Math.max(Math.max(s.x, t.x), Math.max(x1, x2));
                ymin = Math.min(Math.min(s.y, t.y), y);
                ymax = Math.max(Math.max(s.y, t.y), y);
        }
        return new Rectangle(xmin, ymin, xmax - xmin, ymax - ymin);
    }

    private Function<Point, FBConnectionPath> getConnectionSourceTransformation(FBConnectionPath originalPath) {
        final PathSourceChangeDiffCalculator calculator = new PathSourceChangeDiffCalculator(originalPath);
        return calculator::calculatePath;
    }

    private Function<Point, FBConnectionPath> getConnectionTargetTransformation(FBConnectionPath originalPath) {
        final PathTargetChangeDiffCalculator calculator = new PathTargetChangeDiffCalculator(originalPath);
        return calculator::calculatePath;
    }

    private Function<Point, FBConnectionPath> getX1EdgePathTransformation(final FBConnectionPath originalPath) {
        return eventPosition -> {
            if (originalPath.getPathKind() == ConnectionPath.Kind.FourAngles) {
                int x2 = originalPath.getX2();
                if (Math.abs(eventPosition.x - x2) < scale(SELECTION_PADDING)) {

                    return new FBConnectionPath(originalPath.getSourcePosition(), originalPath.getTargetPosition(), ConnectionPath.Kind.TwoAngles, x2, 0, 0);
                }
            }
            return new FBConnectionPath(originalPath.getSourcePosition(), originalPath.getTargetPosition(), originalPath.getPathKind(), eventPosition.x, originalPath.getY(), originalPath.getX2());
        };
    }

    private Function<Point, FBConnectionPath> getX2EdgePathTransformation(final FBConnectionPath originalPath) {
        return eventPosition -> {
            if (originalPath.getPathKind() == ConnectionPath.Kind.FourAngles) {
                int x1 = originalPath.getX1();
                if (Math.abs(eventPosition.x - x1) < scale(SELECTION_PADDING)) {

                    return new FBConnectionPath(originalPath.getSourcePosition(), originalPath.getTargetPosition(), ConnectionPath.Kind.TwoAngles, x1, 0, 0);
                }
            }
            return new FBConnectionPath(originalPath.getSourcePosition(), originalPath.getTargetPosition(), originalPath.getPathKind(), originalPath.getX1(), originalPath.getY(), eventPosition.x);
        };
    }

    private static Function<Point, FBConnectionPath> getYEdgePathTransformation(final FBConnectionPath originalPath) {
        return eventPosition -> new FBConnectionPath(originalPath.getSourcePosition(), originalPath.getTargetPosition(), originalPath.getPathKind(), originalPath.getX1(), eventPosition.y, originalPath.getX2());
    }

    private class PathTargetChangeDiffCalculator {
        private final FBConnectionPath myOriginalPath;

        private PathTargetChangeDiffCalculator(FBConnectionPath originalPath) {
            myOriginalPath = originalPath;
        }

        private FBConnectionPath calculatePath(Point newTarget) {
            Point s = myOriginalPath.getSourcePosition();
            Point t = myOriginalPath.getTargetPosition();

            int ntx = newTarget.x;
            int nty = newTarget.y;

            int x1 = myOriginalPath.getX1();
            int y = myOriginalPath.getY();
            int x2 = myOriginalPath.getX2();

            ConnectionPath.Kind kind = myOriginalPath.getPathKind();

            switch (kind) {
                case TwoAngles:
                    if (ntx >= s.x + 2 * scale(ENDPOINTS_PADDING)) {
                        kind = ConnectionPath.Kind.TwoAngles;
                        if (t.x != s.x) {
                            x1 = s.x + (ntx - s.x) * (x1 - s.x) / (t.x - s.x);
                        } else {
                            x2 = (s.x + ntx) / 2;
                        }
                    } else {
                        kind = ConnectionPath.Kind.FourAngles;

                        x1 = s.x + scale(ENDPOINTS_PADDING);
                        x2 = ntx - scale(ENDPOINTS_PADDING);
                        y = (s.y + nty) / 2;
                        if (y >= s.y && y - scale(ENDPOINTS_PADDING) < s.y) {
                            y = s.y + scale(ENDPOINTS_PADDING);
                        } else if (y < s.y && y + scale(ENDPOINTS_PADDING) > s.y) {
                            y = s.y - scale(ENDPOINTS_PADDING);
                        }
                    }
                    break;
                case FourAngles:
                    if (ntx >= x1 + t.x - x2) {
                        kind = ConnectionPath.Kind.TwoAngles;
                        if (t.x - x2 != x1 - s.x) {
                            x1 = s.x + (ntx - s.x) * (x1 - s.x) / (t.x - x2 + x1 - s.x);
                        } else {
                            x1 = ntx;
                        }
                    } else {
                        kind = ConnectionPath.Kind.FourAngles;
                        x2 = ntx - (t.x - x2);
                    }
                    break;
            }
            return new FBConnectionPath(s, newTarget, kind, x1, y, x2);
        }
    }

    public class PathSourceChangeDiffCalculator {
        private final FBConnectionPath myOriginalPath;

        private PathSourceChangeDiffCalculator(FBConnectionPath originalPath) {
            myOriginalPath = originalPath;
        }

        private FBConnectionPath calculatePath(Point newSource) {
            Point s = myOriginalPath.getSourcePosition();
            Point t = myOriginalPath.getTargetPosition();

            int nsx = newSource.x;
            int nsy = newSource.y;

            int x1 = myOriginalPath.getX1();
            int y = myOriginalPath.getY();
            int x2 = myOriginalPath.getX2();

            ConnectionPath.Kind kind = myOriginalPath.getPathKind();

            switch (kind) {
                case TwoAngles:
                    if (nsx <= t.x - 2 * scale(ENDPOINTS_PADDING)) {
                        kind = ConnectionPath.Kind.TwoAngles;
                        if (t.x != s.x) {
                            x1 = t.x - (t.x - nsx) * (t.x - x1) / (t.x - s.x);
                        } else {
                            x1 = (t.x + nsx) / 2;
                        }
                    } else {
                        kind = ConnectionPath.Kind.FourAngles;

                        x1 = nsx + scale(ENDPOINTS_PADDING);
                        x2 = t.x - scale(ENDPOINTS_PADDING);
                        y = (t.y + nsy) / 2;
                        if (y >= t.y && y - scale(ENDPOINTS_PADDING) < t.y) {
                            y = t.y + scale(ENDPOINTS_PADDING);
                        } else if (y < t.y && y + scale(ENDPOINTS_PADDING) > t.y) {
                            y = t.y - scale(ENDPOINTS_PADDING);
                        }
                    }
                    break;
                case FourAngles:
                    if (nsx <= x2 + s.x - x1) {
                        kind = ConnectionPath.Kind.TwoAngles;
                        if (t.x - s.x != x2 - x1) {
                            x1 = nsx + (t.x - nsx) * (x1 - s.x) / (t.x - x2 + x1 - s.x);
                        } else {
                            x1 = nsx;
                        }
                    } else {
                        kind = ConnectionPath.Kind.FourAngles;
                        x1 = nsx + x1 - s.x;
                    }
                    break;
            }
            return new FBConnectionPath(newSource, t, kind, x1, y, x2);
        }
    }

    private int getFontSize() {
        return LayoutUtil.getFontSize(myFakeCell.getStyle());
    }

    private int scale(int size) {
        return size * getFontSize() / EditorSettings.getInstance().getFontSize();
    }

    private static final class CONCEPTS {
        /*package*/ static final SConcept ConnectionPath$IA = MetaAdapterFactory.getConcept(0x6594f3404d734027L, 0xb7d3c6ca2e70a53bL, 0x3bbd127730611f52L, "org.fbme.ide.iec61499.lang.structure.ConnectionPath");
    }
}
