package org.fbme.ide.richediting.adapters.ecc;

import jetbrains.mps.editor.runtime.TextBuilderImpl;
import jetbrains.mps.nodeEditor.cellLayout.AbstractCellLayout;
import jetbrains.mps.nodeEditor.cells.*;
import jetbrains.mps.openapi.editor.EditorContext;
import jetbrains.mps.openapi.editor.TextBuilder;
import org.fbme.ide.iec61499.repository.PlatformElement;
import org.fbme.ide.richediting.adapters.ecc.cell.*;
import org.fbme.lib.iec61499.declarations.AlgorithmDeclaration;
import org.fbme.lib.iec61499.ecc.StateAction;
import org.fbme.lib.iec61499.ecc.StateDeclaration;
import org.fbme.scenes.controllers.LayoutUtil;
import org.fbme.scenes.controllers.components.ComponentController;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.mps.openapi.model.SNode;

import java.awt.*;
import java.util.List;
import java.util.ArrayList;
import java.util.function.Function;

public class ECStateController implements ComponentController<Point> {
    private final EditorContext myContext;
    private final StateDeclaration myState;
    private final StateCell myStateNameCell;
    private final SNode myNode;
    private final EditorCell_Collection myCellCollection;
    private final List<ActionBlock> myStateActionBlocks;

    public ECStateController(EditorContext context, StateDeclaration state) {
        myContext = context;
        myState = state;
        myStateActionBlocks = new ArrayList<>();
        myNode = ((PlatformElement) state).getNode();

        myCellCollection = createRootCell(myContext, myNode);

        myStateNameCell = StateCell.createStateCell(myContext, myNode, myState);
        myCellCollection.addEditorCell(myStateNameCell);

        initializeActions();
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

    private void initializeActions() {
        for (StateAction action : myState.getActions()) {
            AlgorithmDeclaration algorithmDeclaration = action.getAlgorithm().getTarget();
            jetbrains.mps.openapi.editor.cells.EditorCell bodyCell = null;
            ActionCell actionCell;
            if (algorithmDeclaration != null) {
                SNode algorithmNode = ((PlatformElement) algorithmDeclaration.getBody()).getNode();
                bodyCell = myContext.getEditorComponent().getUpdater().getCurrentUpdateSession().updateChildNodeCell(algorithmNode);
                actionCell = new AlgorithmCell(myContext, myNode, action, myCellCollection, bodyCell, myState);
                myCellCollection.addEditorCell(actionCell);
                myCellCollection.addEditorCell(bodyCell);
            } else {
                actionCell = new AlgorithmCell(myContext, myNode, action, myCellCollection, null, myState);
                myCellCollection.addEditorCell(actionCell);
            }

            ActionCell outputCell = new OutputCell(myContext, myNode, action, myCellCollection, myState);
            myCellCollection.addEditorCell(outputCell);
            myStateActionBlocks.add(new ActionBlock(actionCell, outputCell, bodyCell));
        }
    }

    public void relayout() {
        myStateNameCell.relayout();

        int padding = 2;
        int width = myStateNameCell.getWidth();
        int height = getLineSize();

        for (ActionBlock block: myStateActionBlocks) {
            block.relayout();
            width = block.newWidth(width);
            height += block.getHeight(padding);
        }

        myCellCollection.setWidth(width);
        myCellCollection.setHeight(height);

        myStateNameCell.setWidth(width + ActionCell.ACTIVE_WEIGHT_PADDING);
        for (ActionBlock block: myStateActionBlocks) {
            block.setWidth(width);
        }

        int dx = myCellCollection.getX() + width / 2 - myStateNameCell.getWidth() / 2;
        myStateNameCell.moveTo(dx, myCellCollection.getY());

        int currentHeight = myStateNameCell.getHeight() + padding;
        for (ActionBlock ActionBlock : myStateActionBlocks) {
            int dy = myCellCollection.getY();
            currentHeight = ActionBlock.moveTo(dx, dy, padding, currentHeight);
        }
    }

    private int getLineSize() {
        return LayoutUtil.getLineSize(myCellCollection.getStyle());
    }

    @Override
    public boolean canStartMoveAt(Point position, int x, int y) {
        return true;
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
}
