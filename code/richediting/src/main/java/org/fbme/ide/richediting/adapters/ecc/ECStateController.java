package org.fbme.ide.richediting.adapters.ecc;

import jetbrains.mps.editor.runtime.TextBuilderImpl;
import jetbrains.mps.nodeEditor.cellLayout.AbstractCellLayout;
import jetbrains.mps.nodeEditor.cells.*;
import jetbrains.mps.openapi.editor.EditorContext;
import jetbrains.mps.openapi.editor.TextBuilder;
import org.fbme.ide.iec61499.repository.PlatformElement;
import org.fbme.ide.richediting.adapters.ecc.cell.*;
import org.fbme.ide.richediting.editor.RichEditorStyleAttributes;
import org.fbme.lib.common.CompositeReference;
import org.fbme.lib.common.Reference;
import org.fbme.lib.common.Role;
import org.fbme.lib.iec61499.declarations.AlgorithmDeclaration;
import org.fbme.lib.iec61499.declarations.EventDeclaration;
import org.fbme.lib.iec61499.ecc.StateAction;
import org.fbme.lib.iec61499.ecc.StateDeclaration;
import org.fbme.lib.iec61499.fbnetwork.PortPath;
import org.fbme.scenes.cells.EditorCell_Scene;
import org.fbme.scenes.controllers.LayoutUtil;
import org.fbme.scenes.controllers.components.ComponentController;
import org.fbme.scenes.controllers.scene.SceneStateKey;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import org.jetbrains.mps.openapi.model.SNode;

import java.awt.*;
import java.util.*;
import java.util.List;
import java.util.function.Function;

public class ECStateController implements ComponentController<Point> {
    public static final int PADDING = 2;
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
        myCellCollection.getStyle().set(RichEditorStyleAttributes.ACTIONS, myStateActionBlocks);
        myCellCollection.getStyle().set(RichEditorStyleAttributes.STATE_DECLARATION, myState);
        myCellCollection.getStyle().set(RichEditorStyleAttributes.EDITOR_CONTEXT, myContext);

        relayout();
    }

    public void relayout() {
        myStateNameCell.relayout();

        int width = myStateNameCell.getWidth();
        int height = getLineSize();

        for (ActionBlock block: myStateActionBlocks) {
            block.relayout();
            width = block.newWidth(width);
            height += block.getHeight(PADDING);
        }

        myCellCollection.setWidth(width + 7);
        myCellCollection.setHeight(height + 7);

        myStateNameCell.setWidth(width + ActionCell.ACTIVE_WEIGHT_PADDING);

        for (ActionBlock block: myStateActionBlocks) {
            block.setWidth(width);
        }

        int dx = myCellCollection.getX() + width / 2 - myStateNameCell.getWidth() / 2;
        myStateNameCell.moveTo(dx, myCellCollection.getY());

        int currentHeight = myStateNameCell.getHeight() + PADDING;
        for (ActionBlock ActionBlock : myStateActionBlocks) {
            int dy = myCellCollection.getY();
            currentHeight = ActionBlock.moveTo(dx, dy, PADDING, currentHeight);
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
        for (ActionBlock it : myStateActionBlocks) {
            AlgorithmCell algo = it.getAlgorithm();
            if (algo == null) {
                continue;
            }
            EditorCell_Collection body = algo.getAlgorithmBody();
            if (body == null) {
                continue;
            }
            for (EditorCell cell: body.getCells()) {
                Point shiftPoint = algo.getAlgorithmBodyPoint();
                cell.moveTo(shiftPoint.x, shiftPoint.y);
            }
        }
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

    public static void removeAction(StateAction action, EditorCell_Collection collection) {
        AlgorithmCell deleteAlgo = null;
        EditorCell deleteBody = null;
        OutputCell deleteOutput = null;
        ActionBlock deleteBlock = null;
        List<ActionBlock> actionBlocks = collection.getStyle().get(RichEditorStyleAttributes.ACTIONS);
        for (ActionBlock block: actionBlocks) {
            if (block.getAction() == action) {
                deleteBlock = block;
                deleteAlgo = block.getAlgorithm();
                if (deleteAlgo != null) {
                    deleteBody = deleteAlgo.getAlgorithmBody();
                }
                deleteOutput = block.getOutput();
                break;
            }
        }
        if (deleteBlock == null) return;
        actionBlocks.remove(deleteBlock);
        if (deleteAlgo != null) {
            collection.removeCell(deleteAlgo);
        }
        if (deleteBody != null) {
            collection.removeCell(deleteBody);
        }
        if (deleteOutput != null) {
            collection.removeCell(deleteOutput);
        }
    }

    public static void removeActionWithState(StateAction action, EditorCell_Collection collection) {
        StateDeclaration declaration = collection.getStyle().get(RichEditorStyleAttributes.STATE_DECLARATION);
        EditorContext context = collection.getStyle().get(RichEditorStyleAttributes.EDITOR_CONTEXT);
        declaration.getActions().remove(action);
        context.getEditorComponent().getUpdater().update();
    }

//    public void addNewAction() {
////        StateAction newStateAction = new StateActionByNode();
//        myState.getActions().add();
//    }

    @Override
    public void paintTrace(Graphics g, Point position) {
        ((Graphics2D) g).setStroke(new BasicStroke(1.f, BasicStroke.CAP_BUTT, BasicStroke.JOIN_MITER, 3, new float[]{3}, 3));
        ((Graphics2D) g).draw(getBounds(position));
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
