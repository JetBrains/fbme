package org.fbme.ide.richediting.adapters.fb;

import jetbrains.mps.editor.runtime.TextBuilderImpl;
import jetbrains.mps.editor.runtime.style.StyleAttributes;
import jetbrains.mps.nodeEditor.EditorSettings;
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
import org.fbme.lib.iec61499.fbnetwork.EntryKind;
import org.fbme.lib.iec61499.fbnetwork.FunctionBlockDeclarationBase;
import org.fbme.lib.iec61499.instances.FunctionBlockInstance;
import org.fbme.lib.iec61499.instances.NetworkInstance;
import org.fbme.scenes.cells.EditorCell_SceneLabel;
import org.fbme.scenes.controllers.LayoutUtil;
import org.jetbrains.mps.openapi.model.SNode;

import java.awt.*;
import java.awt.geom.AffineTransform;
import java.awt.geom.GeneralPath;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.List;

public class FBTypeCellComponent {

    private static final int PORT_SIZE = 4;

    private static final int CENTER_PADDING = 20;

    private static final int INNER_BORDER_PADDING = 2;

    private static final int COLUMNS_PADDING = INNER_BORDER_PADDING + PORT_SIZE;

    private final EditorCell_SceneLabel myTypeNameLabel;

    private final EditorCell_Collection myCellCollection;

    private final boolean myIsEditable;

    private final List<FBPortData> myEventInputPortTexts = new ArrayList<>();
    private final List<FBPortData> myEventOutputPortTexts = new ArrayList<>();
    private final List<FBPortData> myDataInputPortTexts = new ArrayList<>();
    private final List<FBPortData> myDataOutputPortTexts = new ArrayList<>();
    private final List<FBPortData> mySocketPortTexts = new ArrayList<>();
    private final List<FBPortData> myPlugPortTexts = new ArrayList<>();

    public FBTypeCellComponent(EditorContext context, FBTypeDescriptor fbType, SNode node, boolean isEditable) {
        myCellCollection = createRootCell(context, node);
        myCellCollection.getStyle().set(RichEditorStyleAttributes.TYPE, fbType);
        myTypeNameLabel = createTypeNameLabel(fbType, context, node);
        myCellCollection.addEditorCell(myTypeNameLabel);
        myIsEditable = isEditable;
        myCellCollection.getStyle().set(StyleAttributes.TEXT_COLOR, myIsEditable ? MPSColors.BLACK : MPSColors.DARK_GRAY);

        initPorts(context, node, myEventInputPortTexts, fbType.getEventInputPorts());
        initPorts(context, node, myEventOutputPortTexts, fbType.getEventOutputPorts());
        initPorts(context, node, myDataInputPortTexts, fbType.getDataInputPorts());
        initPorts(context, node, myDataOutputPortTexts, fbType.getDataOutputPorts());
        initPorts(context, node, mySocketPortTexts, fbType.getSocketPorts());
        initPorts(context, node, myPlugPortTexts, fbType.getPlugPorts());
    }

    public void calculateSizes() {
        myCellCollection.setWidth(calculateWidth());
        myCellCollection.setHeight(calculateHeight());
    }

    public int getWidth() {
        return myCellCollection.getWidth();
    }

    public int getHeight() {
        return myCellCollection.getHeight();
    }

    public void paintTrace(Graphics2D g, int x, int y) {
        GeneralPath shape = getComponentShape(x, y);
        g.setPaint(MPSColors.GRAY);
        FBConnectionPathPainter.setupShadowPathPaint(g, scale(1));
        g.draw(shape);
    }

    public void relayout() {
        for (EditorCell cell : myCellCollection) {
            cell.relayout();
        }
        calculateSizes();

        int leftX = myCellCollection.getX() + scale(PORT_SIZE + INNER_BORDER_PADDING);
        int topY = myCellCollection.getY();
        int lineSize = getLineSize();
        int dataY = topY + (getEventPortsCount() + 2) * lineSize;
        int rightX = myCellCollection.getX() + myCellCollection.getWidth() - scale(PORT_SIZE + INNER_BORDER_PADDING);

        int x;
        int y;

        x = leftX;
        y = topY;
        for (FBPortData portData : myEventInputPortTexts) {
            portData.myLabel.moveTo(x, y);

            y += lineSize;
        }

        x = rightX;
        y = topY;

        for (FBPortData portData : myEventOutputPortTexts) {
            EditorCell_SceneLabel label = portData.myLabel;
            label.moveTo(x - label.getWidth(), y);

            y += lineSize;
        }

        y = dataY;
        x = leftX;

        for (FBPortData portData : myDataInputPortTexts) {
            portData.myLabel.moveTo(x, y);

            y += lineSize;
        }
        for (FBPortData portData : mySocketPortTexts) {
            portData.myLabel.moveTo(x, y);

            y += lineSize;
        }

        x = rightX;
        y = dataY;

        for (FBPortData portData : myDataOutputPortTexts) {
            EditorCell_SceneLabel label = portData.myLabel;
            label.moveTo(x - label.getWidth(), y);

            y += lineSize;
        }
        for (FBPortData portData : myPlugPortTexts) {
            EditorCell_SceneLabel label = portData.myLabel;
            label.moveTo(x - label.getWidth(), y);

            y += lineSize;
        }

        myTypeNameLabel.moveTo(myCellCollection.getX() + myCellCollection.getWidth() / 2 - myTypeNameLabel.getWidth() / 2, topY + (getEventPortsCount() + 1) * lineSize);
    }

    private void paint(Graphics2D g) {
        Color background = getBackgroundColor();
        Color foreground = getForegroundColor();

        int x = myCellCollection.getX();
        int y = myCellCollection.getY();
        int lineSize = getLineSize();
        int typeNameY = y + (getEventPortsCount() + 1) * lineSize;

        GeneralPath shape = getComponentShape(x, y);
        Shape shadowShape = shape.createTransformedShape(AffineTransform.getTranslateInstance(2, 2));
        g.setPaint(new Color(0xEEEEEE));
        g.fill(shadowShape);
        g.setPaint(DiagramColors.createGradientPaint(background, new Rectangle(x, y, myCellCollection.getWidth(), myCellCollection.getHeight())));
        g.fill(shape);
        g.setPaint(DiagramColors.createGradientPaint(getTypeBackgroundColor(), new Rectangle(x, y, myCellCollection.getWidth(), myCellCollection.getHeight())));
        g.fill(new Rectangle(x + scale(PORT_SIZE), typeNameY, myCellCollection.getWidth() - 2 * scale(PORT_SIZE), lineSize));
        g.setStroke(new BasicStroke(scale(1)));
        g.setColor(foreground);
        g.draw(shape);

        int topEventsY = y;
        drawPortIcons(myEventInputPortTexts, g, x, topEventsY);
        drawPortIcons(myEventOutputPortTexts, g, x + myCellCollection.getWidth() - scale(PORT_SIZE), topEventsY);

        int topDatasY = typeNameY + lineSize;
        drawPortIcons(myDataInputPortTexts, g, x, topDatasY);
        drawPortIcons(myDataOutputPortTexts, g, x + myCellCollection.getWidth() - scale(PORT_SIZE), topDatasY);

        int topSocketY = topDatasY + getInputDataPortsCount() * lineSize;
        int topPlugY = topDatasY + getOutputDataPortsCount() * lineSize;

        drawPortIcons(mySocketPortTexts, g, x, topSocketY);
        drawPortIcons(myPlugPortTexts, g, x + myCellCollection.getWidth() - scale(PORT_SIZE), topPlugY);
        g.setStroke(new BasicStroke());
    }

    private GeneralPath getComponentShape(int x, int y) {
        GeneralPath shape = new GeneralPath();

        int eventPortsCount = getEventPortsCount();
        int lineSize = getLineSize();
        int halfLineSize = lineSize / 2;

        int width = myCellCollection.getWidth() - 2 * scale(PORT_SIZE);
        int height = myCellCollection.getHeight();
        int xLeft = x + scale(PORT_SIZE);
        int xRight = xLeft + width;
        int yBottom = y;
        int yTop = yBottom + height - halfLineSize;

        double yCenterB = yBottom + lineSize * eventPortsCount + halfLineSize;
        double yCenterT = yCenterB + halfLineSize;
        double xLeftS = xLeft + lineSize;
        double xRightS = xRight - lineSize;

        shape.moveTo(xLeft, yBottom);
        shape.lineTo(xLeft, yCenterB);
        shape.lineTo(xLeftS, yCenterB);
        shape.lineTo(xLeftS, yCenterT);
        shape.lineTo(xLeft, yCenterT);
        shape.lineTo(xLeft, yTop);
        shape.lineTo(xRight, yTop);
        shape.lineTo(xRight, yCenterT);
        shape.lineTo(xRightS, yCenterT);
        shape.lineTo(xRightS, yCenterB);
        shape.lineTo(xRight, yCenterB);
        shape.lineTo(xRight, yBottom);
        shape.closePath();

        return shape;
    }

    private void drawPortIcons(List<FBPortData> portsColumn, Graphics2D g, int x, int y) {
        Color foregroundColor = getForegroundColor();

        int lineSize = getLineSize();
        y += getShift() - scale(PORT_SIZE) / 2;
        for (FBPortData port : portsColumn) {

            Rectangle rect = new Rectangle(x, y, scale(PORT_SIZE), scale(PORT_SIZE));
            g.setColor(DiagramColors.getColorFor(port.myConnecitonKind, myIsEditable));
            g.fill(rect);
            g.setColor(foregroundColor);
            g.draw(rect);

            y += lineSize;
        }
    }

    private Color getBackgroundColor() {
        Color background = myCellCollection.getStyle().get(StyleAttributes.BACKGROUND_COLOR);
        return background == null ? MPSColors.LIGHT_GRAY : background;
    }

    private Color getTypeBackgroundColor() {
        return MPSColors.LIGHT_BLUE;
    }

    private Color getForegroundColor() {
        return myCellCollection.getStyle().get(StyleAttributes.TEXT_COLOR);
    }

    private void initPorts(EditorContext context, SNode node, List<FBPortData> portsColumn, List<FBPortDescriptor> ports) {

        for (FBPortDescriptor port : ports) {
            FBPortData portData = new FBPortData(context, port, node);
            portsColumn.add(portData);
            myCellCollection.addEditorCell(portData.myLabel);
        }
    }

    private int calculateHeight() {
        int eventPortsCount = getEventPortsCount();
        int dataPortsCount = getBottomPortsCount();

        return (eventPortsCount + dataPortsCount + 3) * getLineSize();
    }

    private int calculateWidth() {
        int typeNameRowWidth = myTypeNameLabel.getWidth();

        int inputsWidth = Math.max(portsColumnWidth(myEventInputPortTexts), Math.max(portsColumnWidth(myDataInputPortTexts), portsColumnWidth(mySocketPortTexts)));
        int outputsWidth = Math.max(portsColumnWidth(myEventOutputPortTexts), Math.max(portsColumnWidth(myDataOutputPortTexts), portsColumnWidth(myPlugPortTexts)));
        int regularRowsWidth = inputsWidth + outputsWidth + scale(CENTER_PADDING + 2 * INNER_BORDER_PADDING);

        return Math.max(regularRowsWidth, typeNameRowWidth) + scale(2 * PORT_SIZE + 2 * INNER_BORDER_PADDING);
    }

    private static final Comparator<FBPortData> PORTNAME_WIDTH_COMPARATOR = Comparator.comparing(port -> port.myLabel.getWidth());

    private static int portsColumnWidth(List<FBPortData> textColumn) {
        if (textColumn.isEmpty()) {
            return 0;
        }
        return Collections.max(textColumn, PORTNAME_WIDTH_COMPARATOR).myLabel.getWidth();
    }

    public int getBottomPortsCount() {
        return Math.max(getInputBottomPortsCount(), getOutputBootomPortsCount());
    }

    public int getInputBottomPortsCount() {
        return myDataInputPortTexts.size() + mySocketPortTexts.size();
    }

    public int getOutputBootomPortsCount() {
        return myDataOutputPortTexts.size() + myPlugPortTexts.size();
    }

    public int getInputDataPortsCount() {
        return myDataInputPortTexts.size();
    }

    public int getOutputDataPortsCount() {
        return myDataOutputPortTexts.size();
    }

    public int getSocketPortsCount() {
        return mySocketPortTexts.size();
    }

    public int getPlugPortsCount() {
        return myPlugPortTexts.size();
    }

    public int getEventPortsCount() {
        return Math.max(getInputEventPortsCount(), getOutputEventPortsCount());
    }

    public int getInputEventPortsCount() {
        return myEventInputPortTexts.size();
    }

    public int getOutputEventPortsCount() {
        return myEventOutputPortTexts.size();
    }

    public Point getInputEventPortPosition(int eventNumber) {
        int lineSize = getLineSize();
        return new Point(-1, eventNumber * lineSize + getShift());
    }

    public Point getOutputEventPortPosition(int eventNumber) {
        int lineSize = getLineSize();
        return new Point(myCellCollection.getWidth() + 1, eventNumber * lineSize + getShift());
    }

    public Point getInputDataPortPosition(int dataNumber) {
        int lineSize = getLineSize();
        return new Point(-1, (getEventPortsCount() + 2 + dataNumber) * lineSize + getShift());
    }

    public Point getOutputDataPortPosition(int dataNumber) {
        int lineSize = getLineSize();
        return new Point(myCellCollection.getWidth() + 1, (getEventPortsCount() + 2 + dataNumber) * lineSize + getShift());
    }

    public Point getSocketPortPosition(int dataNumber) {
        int lineSize = getLineSize();
        return new Point(-1, (getEventPortsCount() + 2 + getInputDataPortsCount() + dataNumber) * lineSize + getShift());
    }

    public Point getPlugPortPosition(int dataNumber) {
        int lineSize = getLineSize();
        return new Point(myCellCollection.getWidth() + 1, (getEventPortsCount() + 2 + getOutputDataPortsCount() + dataNumber) * lineSize + getShift());
    }

    public Rectangle getInputEventPortBounds(int eventNumber) {
        int lineSize = getLineSize();
        int width = myEventInputPortTexts.get(eventNumber).myLabel.getWidth() + scale(COLUMNS_PADDING);
        int y = eventNumber * lineSize;
        return new Rectangle(0, y, width, lineSize);
    }

    public Rectangle getOutputEventPortBounds(int eventNumber) {
        int lineSize = getLineSize();
        int width = myEventOutputPortTexts.get(eventNumber).myLabel.getWidth() + scale(COLUMNS_PADDING);
        int y = eventNumber * lineSize;
        return new Rectangle(myCellCollection.getWidth() - width, y, width, lineSize);
    }

    public Rectangle getInputDataPortBounds(int dataNumber) {
        int lineSize = getLineSize();
        int width = myDataInputPortTexts.get(dataNumber).myLabel.getWidth() + COLUMNS_PADDING;
        int y = (getEventPortsCount() + 2 + dataNumber) * lineSize;
        return new Rectangle(0, y, width, lineSize);
    }

    public Rectangle getOutputDataPortBounds(int dataNumber) {
        int lineSize = getLineSize();
        int width = myDataOutputPortTexts.get(dataNumber).myLabel.getWidth() + COLUMNS_PADDING;
        int y = (getEventPortsCount() + 2 + dataNumber) * lineSize;
        return new Rectangle(myCellCollection.getWidth() - width, y, width, lineSize);
    }

    public Rectangle getSocketPortBounds(int socketNumber) {
        int lineSize = getLineSize();
        int width = mySocketPortTexts.get(socketNumber).myLabel.getWidth() + COLUMNS_PADDING;
        int y = (getEventPortsCount() + getInputDataPortsCount() + 2 + socketNumber) * lineSize;
        return new Rectangle(0, y, width, lineSize);
    }

    public Rectangle getPlugPortBounds(int plugNubmer) {
        int lineSize = getLineSize();
        int width = myPlugPortTexts.get(plugNubmer).myLabel.getWidth() + COLUMNS_PADDING;
        int y = (getEventPortsCount() + 2 + getOutputDataPortsCount() + plugNubmer) * lineSize;
        return new Rectangle(myCellCollection.getWidth() - width, y, width, lineSize);
    }

    private int getLineSize() {
        return LayoutUtil.getLineSize(myCellCollection.getStyle());
    }

    private int getFontSize() {
        return LayoutUtil.getFontSize(myCellCollection.getStyle());
    }

    private int getShift() {
        return getLineSize() - getFontSize() / 2;
    }

    private int scale(int size) {
        return size * getFontSize() / EditorSettings.getInstance().getFontSize();
    }

    private EditorCell_Collection createRootCell(EditorContext context, SNode node) {
        return new EditorCell_Collection(context, node, new AbstractCellLayout() {

            @Override
            public void doLayout(jetbrains.mps.openapi.editor.cells.EditorCell_Collection collection) {
                assert collection == myCellCollection;
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
                installNavigateable();
            }
        };
    }

    public EditorCell_Collection getRootCell() {
        return myCellCollection;
    }

    private void installNavigateable() {
        Style style = myTypeNameLabel.getStyle();
        NetworkInstance instance = style.get(RichEditorStyleAttributes.NETWORK_INSTANCE);
        if (instance != null) {
            FunctionBlockDeclarationBase functionBlock = style.get(RichEditorStyleAttributes.FB);
            FunctionBlockInstance child = instance.getChild(functionBlock);

            if (child != null && child.getContainedNetwork() != null) {
                SNode navigationStub = NetworkInstanceNavigationSupport.getNavigationStub(myCellCollection.getContext().getOperationContext().getProject(), child.getContainedNetwork());
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

    private EditorCell_SceneLabel createTypeNameLabel(FBTypeDescriptor fbType, EditorContext context, SNode node) {
        Declaration typeDeclaration = fbType.getDeclaration();
        return new EditorCell_SceneLabel(context, node, fbType.getTypeName(), typeDeclaration == null);
    }

    private static class FBPortData {
        private final EditorCell_SceneLabel myLabel;
        private final EntryKind myConnecitonKind;

        public FBPortData(EditorContext context, FBPortDescriptor port, SNode node) {
            myLabel = new EditorCell_SceneLabel(context, node, port.getName(), !port.isValid());
            myLabel.getStyle().set(RichEditorStyleAttributes.PORT, port);
            myConnecitonKind = port.getConnectionKind();
        }
    }
}
