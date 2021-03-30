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
import jetbrains.mps.openapi.editor.style.Style;
import org.fbme.ide.iec61499.repository.PlatformElement;
import org.fbme.ide.richediting.adapters.fbnetwork.FBConnectionPathPainter;
import org.fbme.ide.richediting.editor.NetworkInstanceNavigationSupport;
import org.fbme.ide.richediting.editor.RichEditorStyleAttributes;
import org.fbme.lib.common.Declaration;
import org.fbme.lib.iec61499.descriptors.FBPortDescriptor;
import org.fbme.lib.iec61499.descriptors.FBTypeDescriptor;
import org.fbme.lib.iec61499.fbnetwork.FunctionBlockDeclarationBase;
import org.fbme.lib.iec61499.instances.FunctionBlockInstance;
import org.fbme.lib.iec61499.instances.NetworkInstance;
import org.fbme.scenes.cells.EditorCell_SceneLabel;
import org.jetbrains.mps.openapi.model.SNode;

import java.awt.*;
import java.awt.geom.AffineTransform;
import java.awt.geom.GeneralPath;
import java.util.Collections;
import java.util.Comparator;
import java.util.List;

public final class FBTypeCellComponent extends AbstractFBCell {
    private static final int CENTER_PADDING = 20;
    private static final int INNER_BORDER_PADDING = 2;
    private static final int COLUMNS_PADDING = INNER_BORDER_PADDING + PORT_SIZE;
    private static final Comparator<FBPort> PORT_LABEL_WIDTH_COMPARATOR =
            Comparator.comparing(port -> ((FBPortWithLabel) port).getLabel().getWidth());

    private final EditorCell_SceneLabel typeNameLabel;
    private final EditorCell_Collection cellCollection;

    public FBTypeCellComponent(EditorContext context, FBTypeDescriptor fbType, SNode node, boolean isEditable) {
        super(context, fbType, node, isEditable);

        cellCollection = createRootCell();
        cellCollection.getStyle().set(RichEditorStyleAttributes.TYPE, fbType);
        typeNameLabel = createTypeNameLabel();
        cellCollection.addEditorCell(typeNameLabel);
        cellCollection.getStyle().set(StyleAttributes.TEXT_COLOR, isEditable ? MPSColors.BLACK : MPSColors.DARK_GRAY);

        initPorts();
    }

    private static int portsColumnWidth(List<FBPort> ports) {
        if (ports.isEmpty()) {
            return 0;
        }

        return ((FBPortWithLabel) Collections.max(ports, PORT_LABEL_WIDTH_COMPARATOR)).getLabel().getWidth();
    }

    @Override
    protected void initPorts(List<FBPort> ports, List<FBPortDescriptor> portDescriptors) {
        for (FBPortDescriptor portDescriptor : portDescriptors) {
            FBPortWithLabel portWithLabel = new FBPortWithLabel(context, node, portDescriptor);
            ports.add(portWithLabel);
            getRootCell().addEditorCell(portWithLabel.getLabel());
        }
    }

    @Override
    public EditorCell_Collection getRootCell() {
        return cellCollection;
    }

    @Override
    public void paintTrace(Graphics2D g, int x, int y) {
        GeneralPath shape = getComponentShape(x, y);
        g.setPaint(MPSColors.GRAY);
        FBConnectionPathPainter.setupShadowPathPaint(g, scale(1));
        g.draw(shape);
    }

    @Override
    public void relayout() {
        super.relayout();
        calculateSizes();
        int lineSize = getLineSize();
        relayoutPortLabels(lineSize);
        relayoutLabel(lineSize);
    }

    @Override
    public Rectangle getInputEventPortBounds(int eventNumber) {
        int lineSize = getLineSize();
        FBPort port = inputEventPorts.get(eventNumber);
        int width = ((FBPortWithLabel) port).getLabel().getWidth() + scale(COLUMNS_PADDING);
        int y = eventNumber * lineSize;
        return new Rectangle(0, y, width, lineSize);
    }

    @Override
    public Rectangle getOutputEventPortBounds(int eventNumber) {
        int lineSize = getLineSize();
        FBPort port = outputEventPorts.get(eventNumber);
        int width = ((FBPortWithLabel) port).getLabel().getWidth() + scale(COLUMNS_PADDING);
        int y = eventNumber * lineSize;
        return new Rectangle(getRootCell().getWidth() - width, y, width, lineSize);
    }

    @Override
    public Rectangle getInputDataPortBounds(int dataNumber) {
        int lineSize = getLineSize();
        FBPort port = inputDataPorts.get(dataNumber);
        int width = ((FBPortWithLabel) port).getLabel().getWidth() + scale(COLUMNS_PADDING);
        int y = (getEventPortsCount() + 2 + dataNumber) * lineSize;
        return new Rectangle(0, y, width, lineSize);
    }

    @Override
    public Rectangle getOutputDataPortBounds(int dataNumber) {
        int lineSize = getLineSize();
        FBPort port = outputDataPorts.get(dataNumber);
        int width = ((FBPortWithLabel) port).getLabel().getWidth() + scale(COLUMNS_PADDING);
        int y = (getEventPortsCount() + 2 + dataNumber) * lineSize;
        return new Rectangle(getRootCell().getWidth() - width, y, width, lineSize);
    }

    @Override
    public Rectangle getSocketPortBounds(int socketNumber) {
        int lineSize = getLineSize();
        FBPort port = socketPorts.get(socketNumber);
        int width = ((FBPortWithLabel) port).getLabel().getWidth() + scale(COLUMNS_PADDING);
        int y = (getEventPortsCount() + getInputDataPortsCount() + 2 + socketNumber) * lineSize;
        return new Rectangle(0, y, width, lineSize);
    }

    @Override
    public Rectangle getPlugPortBounds(int plugNumber) {
        int lineSize = getLineSize();
        FBPort port = plugPorts.get(plugNumber);
        int width = ((FBPortWithLabel) port).getLabel().getWidth() + scale(COLUMNS_PADDING);
        int y = (getEventPortsCount() + 2 + getOutputDataPortsCount() + plugNumber) * lineSize;
        return new Rectangle(getRootCell().getWidth() - width, y, width, lineSize);
    }

    private void relayoutPortLabels(int lineSize) {
        int leftX = getRootCell().getX() + scale(COLUMNS_PADDING);
        int topY = getRootCell().getY();
        int dataY = topY + (getEventPortsCount() + 2) * lineSize;
        int rightX = getRootCell().getX() + getRootCell().getWidth() - scale(COLUMNS_PADDING);

        relayoutEventInputPortLabels(leftX, topY, lineSize);
        relayoutEventOutputPortLabels(rightX, topY, lineSize);
        relayoutDataInputPortLabels(leftX, dataY, lineSize);
        relayoutSocketPortLabels(leftX, dataY + lineSize * inputDataPorts.size(), lineSize);
        relayoutDataOutputPortLabels(rightX, dataY, lineSize);
        relayoutPlugPortLabels(rightX, dataY + lineSize * outputDataPorts.size(), lineSize);
    }

    private void relayoutDataOutputPortLabels(int x, int y, int lineSize) {
        relayoutOutputPortLabels(x, y, lineSize, outputDataPorts);
    }

    private void relayoutEventOutputPortLabels(int x, int y, int lineSize) {
        relayoutOutputPortLabels(x, y, lineSize, outputEventPorts);
    }

    private void relayoutPlugPortLabels(int x, int y, int lineSize) {
        relayoutOutputPortLabels(x, y, lineSize, plugPorts);
    }

    private void relayoutOutputPortLabels(int x, int y, int lineSize, List<FBPort> outputPorts) {
        for (FBPort port : outputPorts) {
            EditorCell_SceneLabel label = ((FBPortWithLabel) port).getLabel();
            label.moveTo(x - label.getWidth(), y);

            y += lineSize;
        }
    }

    private void relayoutDataInputPortLabels(int x, int y, int lineSize) {
        relayoutInputPortLabels(x, y, lineSize, inputDataPorts);
    }

    private void relayoutEventInputPortLabels(int x, int y, int lineSize) {
        relayoutInputPortLabels(x, y, lineSize, inputEventPorts);
    }

    private void relayoutSocketPortLabels(int x, int y, int lineSize) {
        relayoutInputPortLabels(x, y, lineSize, socketPorts);
    }

    private void relayoutInputPortLabels(int x, int y, int lineSize, List<FBPort> inputPorts) {
        for (FBPort port : inputPorts) {
            ((FBPortWithLabel) port).getLabel().moveTo(x, y);

            y += lineSize;
        }
    }

    private void relayoutLabel(int lineSize) {
        typeNameLabel.moveTo(
                getRootCell().getX() + getRootCell().getWidth() / 2 - typeNameLabel.getWidth() / 2,
                getRootCell().getY() + (getEventPortsCount() + 1) * lineSize
        );
    }

    private void calculateSizes() {
        getRootCell().setWidth(calculateWidth());
        getRootCell().setHeight(calculateHeight());
    }

    private void paint(Graphics2D graphics) {
        Color background = getBackgroundColor();
        Color foreground = getForegroundColor();

        drawComponentShape(graphics, background, foreground);
        drawAllPortIcons(graphics, foreground);
    }

    private void drawComponentShape(Graphics2D graphics, Color background, Color foreground) {
        int x = getRootCell().getX();
        int y = getRootCell().getY();
        int lineSize = getLineSize();
        int typeNameY = y + (getEventPortsCount() + 1) * lineSize;

        GeneralPath shape = getComponentShape(x, y);
        Shape shadowShape = shape.createTransformedShape(AffineTransform.getTranslateInstance(2, 2));
        graphics.setPaint(new Color(0xEEEEEE));
        graphics.fill(shadowShape);
        graphics.setPaint(DiagramColors.createGradientPaint(background, new Rectangle(x, y, getRootCell().getWidth(), getRootCell().getHeight())));
        graphics.fill(shape);
        graphics.setPaint(DiagramColors.createGradientPaint(getTypeBackgroundColor(), new Rectangle(x, y, getRootCell().getWidth(), getRootCell().getHeight())));
        graphics.fill(new Rectangle(x + scale(PORT_SIZE), typeNameY, getRootCell().getWidth() - 2 * scale(PORT_SIZE), lineSize));
        graphics.setStroke(new BasicStroke(scale(1)));
        graphics.setColor(foreground);
        graphics.draw(shape);
    }

    private Color getBackgroundColor() {
        Color background = getRootCell().getStyle().get(StyleAttributes.BACKGROUND_COLOR);
        return background == null ? MPSColors.LIGHT_GRAY : background;
    }

    private Color getTypeBackgroundColor() {
        return MPSColors.LIGHT_BLUE;
    }

    private Color getForegroundColor() {
        return getRootCell().getStyle().get(StyleAttributes.TEXT_COLOR);
    }

    private int calculateHeight() {
        int eventPortsCount = getEventPortsCount();
        int dataPortsCount = getBottomPortsCount();

        return (eventPortsCount + dataPortsCount + 3) * getLineSize();
    }

    private int calculateWidth() {
        int typeNameRowWidth = typeNameLabel.getWidth();

        int inputsWidth = Math.max(portsColumnWidth(inputEventPorts), Math.max(portsColumnWidth(inputDataPorts), portsColumnWidth(socketPorts)));
        int outputsWidth = Math.max(portsColumnWidth(outputEventPorts), Math.max(portsColumnWidth(outputDataPorts), portsColumnWidth(plugPorts)));
        int regularRowsWidth = inputsWidth + outputsWidth + scale(CENTER_PADDING + 2 * INNER_BORDER_PADDING);

        return Math.max(regularRowsWidth, typeNameRowWidth) + scale(2 * COLUMNS_PADDING);
    }

    private EditorCell_Collection createRootCell() {
        return new EditorCell_Collection(context, node, new AbstractCellLayout() {
            @Override
            public void doLayout(jetbrains.mps.openapi.editor.cells.EditorCell_Collection collection) {
                assert collection == getRootCell();
                relayout();
            }

            @Override
            public TextBuilder doLayoutText(Iterable<EditorCell> iterable) {
                return new TextBuilderImpl();
            }
        }) {
            @Override
            protected void paintContent(Graphics g, ParentSettings parentSettings) {
                FBTypeCellComponent.this.paint((Graphics2D) g.create());
            }

            @Override
            public void paintSelection(Graphics g, Color c, boolean drawBorder, ParentSettings parentSettings) {
                // do noting
            }

            @Override
            public EditorCell findLeaf(int x, int y) {
                EditorCell leaf = super.findLeaf(x, y);
                if (leaf != null) {
                    return leaf;
                }
                if (new Rectangle(myX, myY, myWidth, myHeight).contains(x, y)) {
                    return this;
                }
                return null;
            }

            @Override
            public void onAdd() {
                super.onAdd();
                installNavigatable();
            }
        };
    }

    private void installNavigatable() {
        Style style = typeNameLabel.getStyle();
        NetworkInstance instance = style.get(RichEditorStyleAttributes.NETWORK_INSTANCE);
        if (instance != null) {
            FunctionBlockDeclarationBase functionBlock = style.get(RichEditorStyleAttributes.FB);
            FunctionBlockInstance child = instance.getChild(functionBlock);

            if (child != null && child.getContainedNetwork() != null) {
                SNode navigationStub = NetworkInstanceNavigationSupport.getNavigationStub(getRootCell().getContext().getOperationContext().getProject(), child.getContainedNetwork());
                if (navigationStub != null) {
                    style.set(StyleAttributes.NAVIGATABLE_NODE, navigationStub);
                    return;
                }
            }
        }

        Declaration typeDeclaration = style.get(RichEditorStyleAttributes.TYPE).getDeclaration();
        if (typeDeclaration instanceof PlatformElement) {
            style.set(StyleAttributes.NAVIGATABLE_NODE, ((PlatformElement) typeDeclaration).getNode());
        }
    }
}