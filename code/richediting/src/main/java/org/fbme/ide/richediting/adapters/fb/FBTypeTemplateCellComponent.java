package org.fbme.ide.richediting.adapters.fb;

import jetbrains.mps.editor.runtime.TextBuilderImpl;
import jetbrains.mps.editor.runtime.style.StyleAttributes;
import jetbrains.mps.nodeEditor.MPSColors;
import jetbrains.mps.nodeEditor.cellLayout.AbstractCellLayout;
import jetbrains.mps.nodeEditor.cells.EditorCell_Collection;
import jetbrains.mps.nodeEditor.cells.ParentSettings;
import jetbrains.mps.openapi.editor.EditorContext;
import jetbrains.mps.openapi.editor.TextBuilder;
import jetbrains.mps.openapi.editor.cells.EditorCell;
import org.fbme.lib.iec61499.descriptors.FBTypeDescriptor;
import org.fbme.lib.iec61499.fbnetwork.EntryKind;
import org.fbme.scenes.controllers.LayoutUtil;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.mps.openapi.model.SNode;

import java.awt.*;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

public class FBTypeTemplateCellComponent {

    private final FBTypeDescriptor myFBType;
    private final FBTypeCellComponent myFBCellComponent;
    private final EditorCell_Collection myCellCollection;
    private final List<EventAssociation> myInputAssociations = new ArrayList<>();
    private final List<EventAssociation> myOutputAssociations = new ArrayList<>();

    public FBTypeTemplateCellComponent(@NotNull EditorContext editorContext, SNode node, FBTypeDescriptor fbType) {
        myFBType = fbType;
        myCellCollection = createRootCell(editorContext, node);
        myFBCellComponent = new FBTypeCellComponent(editorContext, fbType, node, true);
        myCellCollection.addEditorCell(myFBCellComponent.getRootCell());
        init();
    }


    public EditorCell_Collection getRootCell() {
        return myCellCollection;
    }

    private EditorCell_Collection createRootCell(@NotNull EditorContext editorContext, SNode node) {
        return new EditorCell_Collection(editorContext, node, new AbstractCellLayout() {
            public void doLayout(jetbrains.mps.openapi.editor.cells.EditorCell_Collection cells) {
                assert cells == myCellCollection;
                FBTypeTemplateCellComponent.this.relayout();
            }

            public TextBuilder doLayoutText(Iterable<EditorCell> cells) {
                return new TextBuilderImpl();
            }
        }) {
            @Override
            protected void paintContent(Graphics graphics, ParentSettings settings) {
                graphics = graphics.create();
                graphics.setColor(getForegroundColor());

                int x = getX();
                int y = getY();

                EventsAssociationsPainter inputAssociationPainter = new EventsAssociationsPainter(myInputAssociations);
                EventsAssociationsPainter outputAssociationPainter = new EventsAssociationsPainter(myOutputAssociations);

                inputAssociationPainter.paint(graphics, true, x, y);
                x += inputAssociationPainter.getWidth();
                x += myFBCellComponent.getWidth();
                outputAssociationPainter.paint(graphics, false, x, y);
            }
        };
    }

    public void relayout() {
        EditorCell_Collection rootCell = myFBCellComponent.getRootCell();
        rootCell.relayout();

        int inputsWidth = new EventsAssociationsPainter(myInputAssociations).getWidth();
        int outputsWidth = new EventsAssociationsPainter(myOutputAssociations).getWidth();

        rootCell.moveTo(myCellCollection.getX() + inputsWidth, myCellCollection.getY());

        myCellCollection.setWidth(inputsWidth + myFBCellComponent.getWidth() + outputsWidth);
        myCellCollection.setHeight(myFBCellComponent.getHeight());
    }

    public void init() {
        for (int inputEvent = 0; inputEvent < myFBType.getEventInputPorts().size(); inputEvent++) {
            List<Integer> inputVariables = myFBType.getAssociatedVariablesForInputEvent(inputEvent);
            if (!inputVariables.isEmpty()) {
                ArrayList<Integer> sortedInputVariables = new ArrayList<>(inputVariables);
                Collections.sort(sortedInputVariables);
                myInputAssociations.add(new EventAssociation(inputEvent, sortedInputVariables));
            }
        }
        for (int outputEvent = 0; outputEvent < myFBType.getEventOutputPorts().size(); outputEvent++) {
            List<Integer> outputVariables = myFBType.getAssociatedVariablesForOutputEvent(outputEvent);
            if (!outputVariables.isEmpty()) {
                ArrayList<Integer> sortedOutputVariables = new ArrayList<>(outputVariables);
                Collections.sort(sortedOutputVariables);
                myOutputAssociations.add(new EventAssociation(outputEvent, sortedOutputVariables));
            }
        }

        myCellCollection.setHeight(myFBCellComponent.getHeight());

        int inputAssocationsWidth = new EventsAssociationsPainter(myInputAssociations).getWidth();
        int outputAssocationsWidth = new EventsAssociationsPainter(myOutputAssociations).getWidth();
        myCellCollection.setWidth(inputAssocationsWidth + myFBCellComponent.getWidth() + outputAssocationsWidth);
    }

    public static class EventAssociation {
        private final int myEventNumber;
        private final List<Integer> myVariableNumbers;

        public EventAssociation(int eventNumber, List<Integer> variableNumbers) {
            myEventNumber = eventNumber;
            myVariableNumbers = variableNumbers;
        }
    }

    private static final int GAP_SPACES = 2;

    private class EventsAssociationsPainter {
        private final List<EventAssociation> myAsociations;
        private final int myLineSize = LayoutUtil.getLineSize(myCellCollection.getStyle());
        private final int myGapWidth = GAP_SPACES * myLineSize;
        private final int myAssociationsWidth;

        private EventsAssociationsPainter(List<EventAssociation> eventAsociations) {
            myAsociations = eventAsociations;
            myAssociationsWidth = eventAsociations.size() * myLineSize;
        }

        private int getWidth() {
            return myGapWidth + myAssociationsWidth;
        }

        private void paint(Graphics graphics, boolean inputPorts, int x, int y) {
            paintLines(graphics, inputPorts, x, y);
            paintAssociations(graphics, inputPorts, x, y);
        }

        private void paintLines(Graphics graphics, boolean inputPorts, int x, int y) {
            for (int i = 0; i < getEventPortsCount(inputPorts); i++) {
                int portY = getEventPortPosition(inputPorts, i, y);
                graphics.drawLine(x, portY, x + getWidth(), portY);
            }
            for (int i = 0; i < getBottomPortsCount(inputPorts); i++) {
                int portY = getDataPortPosition(inputPorts, i, y);
                graphics.drawLine(x, portY, x + getWidth(), portY);
            }
        }

        private void paintAssociations(Graphics graphics, boolean inputPorts, int x, int y) {
            x += myGapWidth / 2;
            x += myLineSize / 2;
            for (EventAssociation association : myAsociations) {
                int eventNumber = association.myEventNumber;
                List<Integer> dataNumbers = association.myVariableNumbers;
                int lastVariableNumber = dataNumbers.get(dataNumbers.size() - 1);
                int eventY = getEventPortPosition(inputPorts, eventNumber, y);
                graphics.drawLine(x, eventY, x, getDataPortPosition(inputPorts, lastVariableNumber, y));

                graphics.setColor(DiagramColors.getColorFor(EntryKind.EVENT));
                graphics.fillRect(x - 2, eventY - 2, 4, 4);
                graphics.setColor(getForegroundColor());
                graphics.drawRect(x - 2, eventY - 2, 4, 4);

                for (Integer dataNumber : dataNumbers) {
                    int dataY = getDataPortPosition(inputPorts, dataNumber, y);
                    graphics.setColor(DiagramColors.getColorFor(EntryKind.DATA));
                    graphics.fillRect(x - 2, dataY - 2, 4, 4);
                    graphics.setColor(getForegroundColor());
                    graphics.drawRect(x - 2, dataY - 2, 4, 4);
                }
                x += myLineSize;
            }
        }

        private int getEventPortsCount(boolean input) {
            return input ? myFBCellComponent.getInputEventPortsCount() : myFBCellComponent.getOutputEventPortsCount();
        }

        private int getEventPortPosition(boolean input, int number, int offsetY) {
            return (input ? myFBCellComponent.getInputEventPortPosition(number) : myFBCellComponent.getOutputEventPortPosition(number)).y + offsetY;
        }

        private int getBottomPortsCount(boolean input) {
            return input ? myFBCellComponent.getInputBottomPortsCount() : myFBCellComponent.getOutputBootomPortsCount();
        }

        private int getDataPortPosition(boolean input, int number, int offsetY) {
            return (input ? myFBCellComponent.getInputDataPortPosition(number) : myFBCellComponent.getOutputDataPortPosition(number)).y + offsetY;
        }
    }

    private Color getForegroundColor() {
        Color foreground = myCellCollection.getStyle().get(StyleAttributes.TEXT_COLOR);
        return foreground == null ? MPSColors.BLACK : foreground;
    }

}
