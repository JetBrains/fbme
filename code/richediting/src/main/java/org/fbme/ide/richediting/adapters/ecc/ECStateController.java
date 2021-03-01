package org.fbme.ide.richediting.adapters.ecc;

import com.intellij.ui.JBColor;
import jetbrains.mps.editor.runtime.TextBuilderImpl;
import jetbrains.mps.editor.runtime.style.Measure;
import jetbrains.mps.editor.runtime.style.Padding;
import jetbrains.mps.editor.runtime.style.StyleAttributes;
import jetbrains.mps.nodeEditor.EditorSettings;
import jetbrains.mps.nodeEditor.MPSColors;
import jetbrains.mps.nodeEditor.cellLayout.AbstractCellLayout;
import jetbrains.mps.nodeEditor.cells.*;
import jetbrains.mps.openapi.editor.EditorContext;
import jetbrains.mps.openapi.editor.TextBuilder;
import jetbrains.mps.openapi.editor.cells.CellActionType;
import jetbrains.mps.openapi.editor.style.StyleAttribute;
import org.fbme.ide.iec61499.repository.PlatformElement;
import org.fbme.ide.richediting.adapters.fb.DiagramColors;
import org.fbme.ide.richediting.adapters.fb.FBTypeCellComponent;
import org.fbme.ide.richediting.viewmodel.FunctionBlockView;
import org.fbme.lib.iec61499.ecc.StateAction;
import org.fbme.lib.iec61499.ecc.StateDeclaration;
import org.fbme.lib.iec61499.fbnetwork.EntryKind;
import org.fbme.scenes.controllers.LayoutUtil;
import org.fbme.scenes.controllers.components.ComponentController;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.mps.openapi.model.SNode;

import java.awt.*;
import java.util.Objects;
import java.util.function.Function;

public class ECStateController implements ComponentController<Point> {
    private final StateCell myStateNameCell;
    private final EditorCell_Collection myCellCollection;

    private final StateDeclaration myState;

    private final boolean myEditable;

    public ECStateController(EditorContext context, StateDeclaration state) {
        myState = state;
        myEditable = true;
        SNode node = ((PlatformElement) myState).getNode();
        myCellCollection = createRootCell(context, node);
        myStateNameCell = createStateCell(context, node);
        myCellCollection.addEditorCell(myStateNameCell);
//        if (myState.getActions().size() == 1) {
//            String text = myState.getActions().get(0).getAlgorithm().getTarget().getName();
//            AlgorithmCell cell = new AlgorithmCell(context, node, text);
//            myCellCollection.addEditorCell(cell);
//        }
//        for (StateAction action : myState.getActions()) {
//            String text = action.getAlgorithm().getPresentation();
//            AlgorithmCell cell = new AlgorithmCell(context, node, text);
//            myCellCollection.addEditorCell(cell);
//        }
        myCellCollection.setBig(true);
        relayout();
    }

    private EditorCell_Collection createRootCell(EditorContext context, SNode node) {
        return new EditorCell_Collection(context, node, new AbstractCellLayout() {
            public void doLayout(jetbrains.mps.openapi.editor.cells.EditorCell_Collection cells) {
                assert cells == myCellCollection;
                relayout();
            }

            public TextBuilder doLayoutText(Iterable<jetbrains.mps.openapi.editor.cells.EditorCell> p0) {
                return new TextBuilderImpl();
            }
        });
    }

    public void relayout() {
        myStateNameCell.relayout();
        myCellCollection.setWidth(myStateNameCell.getWidth());
        myCellCollection.setHeight(getLineSize());
        myStateNameCell.moveTo(myCellCollection.getX() + myStateNameCell.getWidth() / 2 - myStateNameCell.getWidth() / 2, myCellCollection.getY());
    }

    private int getLineSize() {
        return LayoutUtil.getLineSize(myCellCollection.getStyle());
    }

    @Override
    public boolean canStartMoveAt(Point position, int x, int y) {
        return myEditable;
    }

    @NotNull
    @Override
    public EditorCell getComponentCell() {
        return myCellCollection;
    }

    @NotNull
    @Override
    public Rectangle getBounds(Point position) {
        return new Rectangle(position.x, position.y, myCellCollection.getWidth(), myCellCollection.getHeight());
    }

    @NotNull
    @Override
    public Point translateForm(Point originalPosition, int dx, int dy) {
        Point point = new Point(originalPosition);
        point.translate(dx, dy);
        return point;
    }

    @Override
    public Function<Point, Point> transformFormAt(Point originalForm, int x, int y) {
        return null;
    }

    @Override
    public void updateCellWithForm(Point position) {
        myCellCollection.moveTo(position.x, position.y);
        myCellCollection.relayout();
    }

    @Override
    public void updateCellSelection(boolean selected) {
        // do nothing
    }

    @Override
    public void paintTrace(Graphics g, Point position) {
        // do nothing
    }

    private StateCell createStateCell(EditorContext editorContext, SNode node) {
        ModelAccessor modelAccessor = new ModelAccessor() {
            public String getText() {
                String name = myState.getName();
                return Objects.equals(name, "") ? null : name;
            }

            public void setText(String text) {
                // надо бы менять еще во всех transitions??
                myState.setName(text == null ? "" : text);
            }

            public boolean isValidText(String text) {
                return text != null && !text.equals("");
            }
        };
        return new StateCell(editorContext, modelAccessor, node);
    }

    private class StateCell extends EditorCell_Property {
        public StateCell(EditorContext editorContext, ModelAccessor accessor, SNode node) {
            super(editorContext, accessor, node);
            getStyle().set(StyleAttributes.TEXT_COLOR, myEditable ? MPSColors.BLACK : MPSColors.DARK_GRAY);
            getStyle().set(StyleAttributes.BACKGROUND_COLOR, new Color(196, 215, 233));
            setPadding(0.5, Measure.SPACES);
        }

        private void setPadding(double value, Measure measure) {
            getStyle().set(StyleAttributes.PADDING_LEFT, new Padding(value, measure));
            getStyle().set(StyleAttributes.PADDING_BOTTOM, new Padding(0.1 * value, measure));
            getStyle().set(StyleAttributes.PADDING_RIGHT, new Padding(value, measure));
        }
    }

    private class AlgorithmCell extends EditorCell_Basic {
        private final TextLine myNameText;

        public AlgorithmCell(EditorContext editorContext, SNode node, String text) {
            super(editorContext, node);
            EntryKind entryKind = EntryKind.DATA;
            getStyle().set(StyleAttributes.TEXT_COLOR, DiagramColors.getColorFor(entryKind, false));
            getStyle().set(StyleAttributes.BACKGROUND_COLOR, new Color(159, 219, 177));
            myNameText = new TextLine(text, getStyle(), false);
            relayoutImpl();
        }

        @Override
        protected void relayoutImpl() {
            int lineSize = getLineSize();
            myNameText.relayout();
            setWidth(myNameText.getWidth());
            setHeight(lineSize);
        }

        private Rectangle getBounds(Point position) {
            return new Rectangle(position.x, position.y, myWidth, myHeight);
        }

        @Override
        protected void paintSelectionIfRequired(Graphics g, ParentSettings parentSettings) {
            // do nothing
        }

        @Override
        protected void paintContent(Graphics graphics, ParentSettings settings) {
            Graphics2D g = (Graphics2D) graphics.create();

//            int lineSize = getLineSize();
//            int textWidth = myNameText.getWidth();
//            Shape shape = getRectangle(lineSize, textWidth);
//            myNameText.getPaddingLeft();
//            g.setPaint(new Color(179, 240, 255));
//            g.fill(shape);
            myNameText.paint(graphics, myX, myY, JBColor.BLACK);
        }
    }
}
