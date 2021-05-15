package org.fbme.ide.richediting.adapters.ecc;

import jetbrains.mps.editor.runtime.TextBuilderImpl;
import jetbrains.mps.nodeEditor.cellLayout.AbstractCellLayout;
import jetbrains.mps.nodeEditor.cells.*;
import jetbrains.mps.openapi.editor.EditorContext;
import jetbrains.mps.openapi.editor.TextBuilder;
import org.fbme.ide.iec61499.repository.PlatformElement;
import org.fbme.ide.richediting.adapters.ecc.cell.*;
import org.fbme.ide.richediting.editor.RichEditorStyleAttributes;
import org.fbme.lib.common.Declaration;
import org.fbme.lib.common.StringIdentifier;
import org.fbme.lib.iec61499.IEC61499Factory;
import org.fbme.lib.iec61499.declarations.AlgorithmBody;
import org.fbme.lib.iec61499.declarations.AlgorithmDeclaration;
import org.fbme.lib.iec61499.declarations.AlgorithmLanguage;
import org.fbme.lib.iec61499.declarations.EventDeclaration;
import org.fbme.lib.iec61499.ecc.StateAction;
import org.fbme.lib.iec61499.ecc.StateDeclaration;
import org.fbme.lib.iec61499.fbnetwork.PortPath;
import org.fbme.scenes.cells.EditorCell_Scene;
import org.fbme.scenes.controllers.LayoutUtil;
import org.fbme.scenes.controllers.components.ComponentController;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.mps.openapi.model.SNode;

import java.awt.*;
import java.util.*;
import java.util.List;
import java.util.function.Function;
import java.util.stream.Collectors;

public class ECStateController implements ComponentController<Point> {
    public static final int PADDING = 2;
    private final EditorContext myContext;
    private final StateDeclaration myState;
    private final StateCell myStateNameCell;
    private final SNode myNode;
    private final EditorCell_Collection myCellCollection;
    private final List<ActionBlock> myStateActionBlocks;
    private Map<StateAction, Boolean> isOpenAlgorithmBody;
    private Map<StateDeclaration, Boolean> isOpenActions;

    public ECStateController(EditorCell_Scene scene, EditorContext context, StateDeclaration state) {
        myContext = context;
        myState = state;
        myStateActionBlocks = new ArrayList<>();
        myNode = ((PlatformElement) state).getNode();
        isOpenAlgorithmBody = scene.loadState(ECCEditors.IS_OPEN_ALGORITHM_BODY);
        isOpenAlgorithmBody = (isOpenAlgorithmBody != null ? isOpenAlgorithmBody : new HashMap<>());

        isOpenActions = scene.loadState(ECCEditors.IS_OPEN_ACTIONS);
        isOpenActions = (isOpenActions != null ? isOpenActions: new HashMap<>());

        myCellCollection = createRootCell(myContext, myNode);

        myStateNameCell = StateCell.createStateCell(myContext, myNode, myState, myCellCollection, isOpenActions);
        myCellCollection.addEditorCell(myStateNameCell);

        initializeActions();

        scene.storeState(ECCEditors.IS_OPEN_ALGORITHM_BODY, isOpenAlgorithmBody);
        scene.storeState(ECCEditors.IS_OPEN_ACTIONS, isOpenActions);

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

        myStateNameCell.setWidth(width + CellConstants.ACTIVE_WEIGHT_PADDING);

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

    public static void addAction(EditorCell_Collection collection) {
        StateDeclaration declaration = collection.getStyle().get(RichEditorStyleAttributes.STATE_DECLARATION);
        declaration.getActions().add(createEmptyAction(collection));
    }

    public static void addNewAlgorithm(EditorCell_Collection collection, StateAction action) {
        final String prefixName = "NewAlgorithm";
        IEC61499Factory factory = collection.getStyle().get(RichEditorStyleAttributes.FACTORY_DECLARATION);
        List<AlgorithmDeclaration> allAlgorithms = collection.getStyle().get(RichEditorStyleAttributes.ALL_ALGORITHMS);

        List<String> allAlgorithmNames = allAlgorithms.stream().map(Declaration::getName).collect(Collectors.toList());
        int number = allAlgorithmNames.stream()
                .filter(it -> it.startsWith(prefixName) && (it.length() > prefixName.length()))
                .map(it -> it.substring(prefixName.length()))
                .filter(it -> it.matches("^[0-9]+$"))
                .mapToInt(Integer::parseInt)
                .max()
                .orElse(0);

        String algorithmName = prefixName + (number + 1);

        AlgorithmDeclaration algorithmDeclaration = factory.createAlgorithmDeclaration(new StringIdentifier(algorithmName));
        algorithmDeclaration.setName(algorithmName);
        AlgorithmBody body = factory.createAlgorithmBody(AlgorithmLanguage.ST);
        algorithmDeclaration.setBody(body);

        allAlgorithms.add(algorithmDeclaration);
        action.getAlgorithm().setTarget(algorithmDeclaration);
    }

    public static void setAlgorithmToNone(AlgorithmCell cell) {
        EditorCell_Collection collection = cell.getStyle().get(RichEditorStyleAttributes.STATE_COLLECTION);
        StateAction stateAction = cell.getStyle().get(RichEditorStyleAttributes.ALGORITHMS);
        EditorContext context = collection.getStyle().get(RichEditorStyleAttributes.EDITOR_CONTEXT);
        StateAction newStateAction = createEmptyAction(collection);
        PortPath<EventDeclaration> outputDeclaration = stateAction.getEvent().getTarget();
        if (outputDeclaration != null) {
            newStateAction.getEvent().setTarget(outputDeclaration);
        }
        StateDeclaration stateDeclaration = collection.getStyle().get(RichEditorStyleAttributes.STATE_DECLARATION);
        int indexInArray = stateDeclaration.getActions().indexOf(stateAction);
        stateDeclaration.getActions().set(indexInArray, newStateAction);
        context.getEditorComponent().getUpdater().update();
    }

    public static void setOutputToNone(OutputCell cell) {
        EditorCell_Collection collection = cell.getStyle().get(RichEditorStyleAttributes.STATE_COLLECTION);
        StateAction stateAction = cell.getStyle().get(RichEditorStyleAttributes.OUTPUTS);
        EditorContext context = collection.getStyle().get(RichEditorStyleAttributes.EDITOR_CONTEXT);
        StateAction newStateAction = createEmptyAction(collection);
        AlgorithmDeclaration algorithmDeclaration = stateAction.getAlgorithm().getTarget();
        if (algorithmDeclaration != null) {
            newStateAction.getAlgorithm().setTarget(algorithmDeclaration);
        }
        Map<StateAction, Boolean> isOpenAlgorithmBody = cell.getIsOpenAlgorithmBody();
        boolean status = isOpenAlgorithmBody.getOrDefault(stateAction, true);
        isOpenAlgorithmBody.remove(stateAction);
        isOpenAlgorithmBody.put(newStateAction, status);
        StateDeclaration stateDeclaration = collection.getStyle().get(RichEditorStyleAttributes.STATE_DECLARATION);
        int indexInArray = stateDeclaration.getActions().indexOf(stateAction);
        stateDeclaration.getActions().set(indexInArray, newStateAction);
        context.getEditorComponent().getUpdater().update();
    }

    private static StateAction createEmptyAction(EditorCell_Collection cell) {
        IEC61499Factory iec61499Factory = cell.getStyle().get(RichEditorStyleAttributes.FACTORY_DECLARATION);
        return iec61499Factory.createStateAction();
    }

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
        boolean isOpenActionBlock = isOpenActions.getOrDefault(myState, true);
        if (!isOpenActionBlock) {
            return;
        }
        for (StateAction action : myState.getActions()) {
            boolean isOpenBody = isOpenAlgorithmBody.getOrDefault(action, true);
            AlgorithmDeclaration algorithmDeclaration = action.getAlgorithm().getTarget();
            AlgorithmCell algorithmCell;
            if (algorithmDeclaration != null) {
                SNode algorithmNode = ((PlatformElement) algorithmDeclaration.getBody()).getNode();
                jetbrains.mps.openapi.editor.cells.EditorCell bodyCell = myContext.getEditorComponent().getUpdater().getCurrentUpdateSession().updateChildNodeCell(algorithmNode);
                isOpenAlgorithmBody.putIfAbsent(action, true);
                algorithmCell = AlgorithmCell.createAlgorithmCell(myContext, algorithmDeclaration, myNode, action, myCellCollection, (EditorCell_Collection) bodyCell, isOpenAlgorithmBody);
                myCellCollection.addEditorCell(algorithmCell);
                if (isOpenBody) {
                    myCellCollection.addEditorCell(bodyCell);
                }
            } else {
                algorithmCell = AlgorithmCell.createAlgorithmCell(myContext, algorithmDeclaration, myNode, action, myCellCollection, null, isOpenAlgorithmBody);
                myCellCollection.addEditorCell(algorithmCell);
            }

            OutputCell outputCell = new OutputCell(myContext, myNode, action, myCellCollection, isOpenAlgorithmBody);
            myCellCollection.addEditorCell(outputCell);
            myStateActionBlocks.add(new ActionBlock(algorithmCell, outputCell, action));
        }
    }
}
