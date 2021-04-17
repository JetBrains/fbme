package org.fbme.ide.richediting.adapters.ecc;

import jetbrains.mps.editor.runtime.TextBuilderImpl;
import jetbrains.mps.nodeEditor.cellLayout.AbstractCellLayout;
import jetbrains.mps.nodeEditor.cells.*;
import jetbrains.mps.openapi.editor.EditorContext;
import jetbrains.mps.openapi.editor.TextBuilder;
import org.fbme.ide.iec61499.repository.PlatformElement;
import org.fbme.ide.richediting.adapters.ecc.cell.ActionCell;
import org.fbme.ide.richediting.adapters.ecc.cell.AlgorithmCell;
import org.fbme.ide.richediting.adapters.ecc.cell.OutputCell;
import org.fbme.ide.richediting.adapters.ecc.cell.StateCell;
import org.fbme.lib.iec61499.ecc.StateAction;
import org.fbme.lib.iec61499.ecc.StateDeclaration;
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

    public ECStateController(EditorContext context, StateDeclaration state) {
        myState = state;
        myEditable = true;
        myAlgorithmCells = new ArrayList<>();
        SNode node = ((PlatformElement) myState).getNode();
        myCellCollection = createRootCell(context, node);
        myStateNameCell = createStateCell(context, node);
        myCellCollection.addEditorCell(myStateNameCell);

        for (StateAction action : myState.getActions()) {
            AlgorithmDeclaration algorithmDeclaration = action.getAlgorithm().getTarget();
            jetbrains.mps.openapi.editor.cells.EditorCell bodyCell = null;
            ActionCell actionCell;
            if (algorithmDeclaration != null) {
                SNode algorithmNode = ((PlatformElement) algorithmDeclaration.getBody()).getNode();
                bodyCell = context.getEditorComponent().getUpdater().getCurrentUpdateSession().updateChildNodeCell(algorithmNode);
                actionCell = new AlgorithmCell(context, node, action, myCellCollection, bodyCell);
                myCellCollection.addEditorCell(actionCell);
                myCellCollection.addEditorCell(bodyCell);
            } else {
                actionCell = new AlgorithmCell(context, node, action, myCellCollection, null);
                myCellCollection.addEditorCell(actionCell);
            }

            ActionCell outputCell = new OutputCell(context, node, action, myCellCollection);
            myCellCollection.addEditorCell(outputCell);
            myAlgorithmCells.add(new AlgorithmBlock(actionCell, outputCell, bodyCell));
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
            block.relayout();
            width = block.newWidth(width);
            height += block.getHeight(padding);
        }

        myCellCollection.setWidth(width);
        myCellCollection.setHeight(height);

        myStateNameCell.setWidth(width + ActionCell.ACTIVE_WEIGHT_PADDING);
        for (AlgorithmBlock block: myAlgorithmCells) {
            block.setWidth(width);
        }

        int dx = myCellCollection.getX() + width / 2 - myStateNameCell.getWidth() / 2;
        myStateNameCell.moveTo(dx, myCellCollection.getY());

        int currentHeight = myStateNameCell.getHeight() + padding;
        for (AlgorithmBlock algorithmBlock : myAlgorithmCells) {
            int dy = myCellCollection.getY();
            currentHeight = algorithmBlock.moveTo(dx, dy, padding, currentHeight);
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

    private static class AlgorithmBlock {
        private final ActionCell action;
        private final ActionCell output;
        private final EditorCell_Collection bodyCell;
        AlgorithmBlock(ActionCell action, ActionCell output, jetbrains.mps.openapi.editor.cells.EditorCell bodyCell) {
            this.action = action;
            this.output = output;
            if (bodyCell instanceof EditorCell_Collection) {
                this.bodyCell = (EditorCell_Collection) bodyCell;
            } else {
                this.bodyCell = null;
            }
        }

        public ActionCell getAction() {
            return action;
        }

        public ActionCell getOutput() {
            return output;
        }

        public void relayout() {
            action.relayout();
            if (bodyCell != null) {
                bodyCell.relayout();
                for (jetbrains.mps.openapi.editor.cells.EditorCell editorCell : bodyCell) {
                    editorCell.relayout();
                }
            }
            output.relayout();
        }

        public int newWidth(int oldWidth) {
            int maxTmp = Math.max(action.getWidth(), output.getWidth());
            if (bodyCell != null) {
                maxTmp = Math.max(bodyCell.getWidth(), maxTmp);
            }
            return Math.max(oldWidth, maxTmp);
        }

        public void setWidth(int width) {
            action.setWidth(width);
            output.setWidth(width);
            if (bodyCell != null) {
                bodyCell.setWidth(width);
            }
        }

        public int getHeight(int padding) {
            int x = 0;
            if (bodyCell != null) {
                x = bodyCell.getHeight();
            }
            return action.getHeight() + output.getHeight() + 3 * padding + x;
        }

        public int moveTo(int dx, int dy, int padding, int currentHeight) {
            action.moveTo(dx, dy + currentHeight);
            currentHeight += (action.getHeight() + padding);
            if (bodyCell != null) {
                bodyCell.moveTo(dx, dy + currentHeight);
                currentHeight += (bodyCell.getHeight() + padding);
            }
            output.moveTo(dx, dy + currentHeight);
            currentHeight += (output.getHeight() + padding);
            return currentHeight;
        }
    }
}
