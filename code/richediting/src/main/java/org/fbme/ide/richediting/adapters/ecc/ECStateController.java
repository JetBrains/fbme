package org.fbme.ide.richediting.adapters.ecc;

import jetbrains.mps.editor.runtime.TextBuilderImpl;
import jetbrains.mps.nodeEditor.cellLayout.AbstractCellLayout;
import jetbrains.mps.nodeEditor.cells.*;
import jetbrains.mps.openapi.editor.EditorContext;
import jetbrains.mps.openapi.editor.TextBuilder;
import org.fbme.ide.iec61499.repository.PlatformElement;
import org.fbme.ide.richediting.adapters.ecc.cell.*;
import org.fbme.ide.richediting.editor.RichEditorStyleAttributes;
import org.fbme.lib.iec61499.declarations.AlgorithmDeclaration;
import org.fbme.lib.iec61499.ecc.StateAction;
import org.fbme.lib.iec61499.ecc.StateDeclaration;
import org.fbme.scenes.cells.EditorCell_Scene;
import org.fbme.scenes.controllers.LayoutUtil;
import org.fbme.scenes.controllers.components.ComponentController;
import org.fbme.scenes.controllers.scene.SceneStateKey;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.mps.openapi.model.SNode;

import java.awt.*;
import java.util.HashMap;
import java.util.List;
import java.util.ArrayList;
import java.util.Map;
import java.util.function.Function;

public class ECStateController implements ComponentController<Point> {
    private static final SceneStateKey<Map<StateAction, Boolean>> IS_OPEN_ALGORITHM_BODY = new SceneStateKey<>("is-open-body");
    private final EditorContext myContext;
    private final StateDeclaration myState;
    private final StateCell myStateNameCell;
    private final SNode myNode;
    private final EditorCell_Collection myCellCollection;
    private final List<ActionBlock> myStateActionBlocks;
    private Map<StateAction, Boolean> isOpenAlgorithmBody;

    public ECStateController(EditorCell_Scene scene, EditorContext context, StateDeclaration state) {
        myContext = context;
        myState = state;
        myStateActionBlocks = new ArrayList<>();
        myNode = ((PlatformElement) state).getNode();
        isOpenAlgorithmBody = scene.loadState(IS_OPEN_ALGORITHM_BODY);
        isOpenAlgorithmBody = (isOpenAlgorithmBody != null ? isOpenAlgorithmBody : new HashMap<>());

        myCellCollection = createRootCell(myContext, myNode);

        myStateNameCell = StateCell.createStateCell(myContext, myNode, myState);
        myCellCollection.addEditorCell(myStateNameCell);

        initializeActions();
        scene.storeState(IS_OPEN_ALGORITHM_BODY, isOpenAlgorithmBody);
        myCellCollection.setBig(true);

        relayout();
    }

    public void relayout() {
        if (myCellCollection.getStyle().get(RichEditorStyleAttributes.DELETED_STATE) != null) {
            deleteActionFromList(myCellCollection.getStyle().get(RichEditorStyleAttributes.DELETED_STATE));
            myCellCollection.getStyle().set(RichEditorStyleAttributes.DELETED_STATE, null);
        }
        myStateNameCell.relayout();

        int padding = 2;
        int width = myStateNameCell.getWidth();
        int height = getLineSize();

        for (ActionBlock block: myStateActionBlocks) {
            block.relayout();
            width = block.newWidth(width);
            height += block.getHeight(padding);
        }

        myCellCollection.setWidth(width + 7);
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
            AlgorithmCell algorithmCell;
            if (algorithmDeclaration != null) {
                SNode algorithmNode = ((PlatformElement) algorithmDeclaration.getBody()).getNode();
                jetbrains.mps.openapi.editor.cells.EditorCell bodyCell = myContext.getEditorComponent().getUpdater().getCurrentUpdateSession().updateChildNodeCell(algorithmNode);
                isOpenAlgorithmBody.putIfAbsent(action, true);
                algorithmCell = new AlgorithmCell(myContext, myNode, action, myCellCollection, (EditorCell_Collection) bodyCell, myState, isOpenAlgorithmBody);
                myCellCollection.addEditorCell(algorithmCell);
                myCellCollection.addEditorCell(bodyCell);
            } else {
                algorithmCell = new AlgorithmCell(myContext, myNode, action, myCellCollection, null, myState, isOpenAlgorithmBody);
                myCellCollection.addEditorCell(algorithmCell);
            }

            OutputCell outputCell = new OutputCell(myContext, myNode, action, myCellCollection, myState);
            myCellCollection.addEditorCell(outputCell);
            myStateActionBlocks.add(new ActionBlock(algorithmCell, outputCell, action));
        }
    }

    private void deleteActionFromList(StateAction action) {
        myStateActionBlocks.removeIf(it -> it.getAction() == action);
    }
}
