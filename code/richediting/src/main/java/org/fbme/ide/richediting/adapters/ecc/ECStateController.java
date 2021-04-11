package org.fbme.ide.richediting.adapters.ecc;

import com.intellij.ui.JBColor;
import jetbrains.mps.editor.runtime.TextBuilderImpl;
import jetbrains.mps.editor.runtime.style.Measure;
import jetbrains.mps.editor.runtime.style.Padding;
import jetbrains.mps.editor.runtime.style.StyleAttributes;
import jetbrains.mps.nodeEditor.MPSColors;
import jetbrains.mps.nodeEditor.cellLayout.AbstractCellLayout;
import jetbrains.mps.nodeEditor.cells.*;
import jetbrains.mps.openapi.editor.EditorContext;
import jetbrains.mps.openapi.editor.TextBuilder;
import org.fbme.ide.iec61499.repository.PlatformElement;
import org.fbme.ide.richediting.adapters.ecc.cells.AlgorithmCellStatic;
import org.fbme.ide.richediting.editor.RichEditorStyleAttributes;
import org.fbme.lib.iec61499.declarations.AlgorithmDeclaration;
import org.fbme.lib.iec61499.declarations.EventDeclaration;
import org.fbme.lib.iec61499.ecc.StateAction;
import org.fbme.lib.iec61499.ecc.StateDeclaration;
import org.fbme.lib.iec61499.fbnetwork.PortPath;
import org.fbme.scenes.controllers.LayoutUtil;
import org.fbme.scenes.controllers.components.ComponentController;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.mps.openapi.model.SNode;

import java.awt.*;
import java.util.List;
import java.util.ArrayList;
import java.util.Objects;
import java.util.function.Function;

public class ECStateController implements ComponentController<Point> {
    private final StateCell myStateNameCell;
    private final EditorCell_Collection myCellCollection;
    private final List<AlgorithmBlock> myAlgorithmCells;

    private final StateDeclaration myState;

    private final boolean myEditable;

    private static final Color STATE_COLOR = new Color(196, 215, 233);
    private static final Color ALGORITHM_COLOR = new Color(199, 222, 193);
    private static final Color OUTPUT_COLOR = new Color(235, 221, 185);

    public ECStateController(EditorContext context, StateDeclaration state) {
        myState = state;
        myEditable = true;
        myAlgorithmCells = new ArrayList<>();
        SNode node = ((PlatformElement) myState).getNode();
        myCellCollection = createRootCell(context, node);
        myStateNameCell = createStateCell(context, node);
        myCellCollection.addEditorCell(myStateNameCell);

        for (StateAction action : myState.getActions()) {
            AlgorithmDeclaration target = action.getAlgorithm().getTarget();
            PortPath<EventDeclaration> outputTarget = action.getEvent().getTarget();
            AlgorithmCellStatic actionCell;
            if (target != null) {
                actionCell = new AlgorithmCellStatic(context, node, target.getName(), ALGORITHM_COLOR, action, myCellCollection);
            } else {
                actionCell = new AlgorithmCellStatic(context, node, "", ALGORITHM_COLOR, action, myCellCollection);
            }
            myCellCollection.addEditorCell(actionCell);
            AlgorithmCellStatic outputCell;
            if (outputTarget != null) {
                outputCell = new AlgorithmCellStatic(context, node, action.getEvent().getPresentation(), OUTPUT_COLOR, action, myCellCollection);
            } else {
                outputCell = new AlgorithmCellStatic(context, node, "", OUTPUT_COLOR, action, myCellCollection);
            }
            myCellCollection.addEditorCell(outputCell);
            myAlgorithmCells.add(new AlgorithmBlock(actionCell, outputCell));
        }
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

        int padding = 2;
        int width = myStateNameCell.getWidth();
        int height = getLineSize();
        for (AlgorithmBlock block: myAlgorithmCells) {
            block.getAction().relayout();
            width = Math.max(width, block.getAction().getWidth());
            if (block.getAction().getText().isEmpty()) {
                block.getAction().setHeight(block.getAction().getHeight() / 3 * 2);
            }
            height += (block.getAction().getHeight() + padding);

            block.getOutput().relayout();
            width = Math.max(width, block.getOutput().getWidth());
            if (block.getOutput().getText().isEmpty()) {
                block.getOutput().setHeight(block.getOutput().getHeight() / 3 * 2);
            }
            height += (block.getOutput().getHeight() + padding);
        }
        myCellCollection.setWidth(width);
        myCellCollection.setHeight(height);

        myStateNameCell.setWidth(width + AlgorithmCellStatic.ACTIVE_WEIGHT_PADDING);
        for (AlgorithmBlock block: myAlgorithmCells) {
            block.getAction().setWidth(width);
            block.getOutput().setWidth(width);
        }

        myStateNameCell.moveTo(myCellCollection.getX() + width / 2 - myStateNameCell.getWidth() / 2, myCellCollection.getY());
        int currentHight = myStateNameCell.getHeight() + padding;

        for (AlgorithmBlock algorithmBlock : myAlgorithmCells) {
            algorithmBlock.getAction().moveTo(myCellCollection.getX() + width / 2 - myStateNameCell.getWidth() / 2, myCellCollection.getY() + currentHight);
            currentHight += (algorithmBlock.getAction().getHeight() + padding);
            algorithmBlock.getOutput().moveTo(myCellCollection.getX() + width / 2 - myStateNameCell.getWidth() / 2, myCellCollection.getY() + currentHight);
            currentHight += (algorithmBlock.getOutput().getHeight() + padding);
        }
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
            getStyle().set(StyleAttributes.BACKGROUND_COLOR, STATE_COLOR);
            setPadding(0.5, Measure.SPACES);
        }

        private void setPadding(double value, Measure measure) {
            getStyle().set(StyleAttributes.PADDING_LEFT, new Padding(value, measure));
            getStyle().set(StyleAttributes.PADDING_BOTTOM, new Padding(0.1 * value, measure));
            getStyle().set(StyleAttributes.PADDING_RIGHT, new Padding(value, measure));
        }
    }

    private static class AlgorithmBlock {
        private final AlgorithmCellStatic action;
        private final AlgorithmCellStatic output;
        AlgorithmBlock(AlgorithmCellStatic action, AlgorithmCellStatic output) {
            this.action = action;
            this.output = output;
        }

        public AlgorithmCellStatic getAction() {
            return action;
        }

        public AlgorithmCellStatic getOutput() {
            return output;
        }
    }
}
