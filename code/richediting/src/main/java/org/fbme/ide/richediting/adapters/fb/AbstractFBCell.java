package org.fbme.ide.richediting.adapters.fb;

import jetbrains.mps.nodeEditor.EditorSettings;
import jetbrains.mps.openapi.editor.EditorContext;
import jetbrains.mps.openapi.editor.cells.EditorCell;
import org.fbme.lib.iec61499.descriptors.FBPortDescriptor;
import org.fbme.lib.iec61499.descriptors.FBTypeDescriptor;
import org.fbme.scenes.controllers.LayoutUtil;
import org.jetbrains.mps.openapi.model.SNode;

import java.awt.*;
import java.util.ArrayList;
import java.util.List;

public abstract class AbstractFBCell implements FBCell {
    protected static final int PORT_SIZE = 4;
    protected final boolean isEditable;
    protected final List<FBPort> inputEventPorts = new ArrayList<>();
    protected final List<FBPort> inputDataPorts = new ArrayList<>();
    protected final List<FBPort> outputEventPorts = new ArrayList<>();
    protected final List<FBPort> outputDataPorts = new ArrayList<>();
    protected final List<FBPort> socketPorts = new ArrayList<>();
    protected final List<FBPort> plugPorts = new ArrayList<>();
    protected EditorContext context;
    protected FBTypeDescriptor fbType;
    protected SNode node;

    protected AbstractFBCell(
            EditorContext context,
            FBTypeDescriptor fbType,
            SNode node,
            boolean isEditable
    ) {
        this.context = context;
        this.fbType = fbType;
        this.node = node;
        this.isEditable = isEditable;
    }

    @Override
    public int getWidth() {
        return getRootCell().getWidth();
    }

    @Override
    public int getHeight() {
        return getRootCell().getHeight();
    }

    @Override
    public void relayout() {
        relayoutChildren();
    }

    @Override
    public int getBottomPortsCount() {
        return Math.max(getInputBottomPortsCount(), getOutputBottomPortsCount());
    }

    @Override
    public int getInputBottomPortsCount() {
        return inputDataPorts.size() + socketPorts.size();
    }

    @Override
    public int getOutputBottomPortsCount() {
        return outputDataPorts.size() + plugPorts.size();
    }

    @Override
    public int getInputDataPortsCount() {
        return inputDataPorts.size();
    }

    @Override
    public int getOutputDataPortsCount() {
        return outputDataPorts.size();
    }

    @Override
    public int getSocketPortsCount() {
        return socketPorts.size();
    }

    @Override
    public int getPlugPortsCount() {
        return plugPorts.size();
    }

    @Override
    public int getEventPortsCount() {
        return Math.max(getInputEventPortsCount(), getOutputEventPortsCount());
    }

    @Override
    public int getInputEventPortsCount() {
        return inputEventPorts.size();
    }

    @Override
    public int getOutputEventPortsCount() {
        return outputEventPorts.size();
    }

    @Override
    public Point getInputEventPortPosition(int eventNumber) {
        int lineSize = getLineSize();
        return new Point(-1, eventNumber * lineSize + getShift());
    }

    @Override
    public Point getOutputEventPortPosition(int eventNumber) {
        int lineSize = getLineSize();
        return new Point(getRootCell().getWidth() + 1, eventNumber * lineSize + getShift());
    }

    @Override
    public Point getInputDataPortPosition(int dataNumber) {
        int lineSize = getLineSize();
        return new Point(-1, (getEventPortsCount() + 2 + dataNumber) * lineSize + getShift());
    }

    @Override
    public Point getOutputDataPortPosition(int dataNumber) {
        int lineSize = getLineSize();
        return new Point(getRootCell().getWidth() + 1, (getEventPortsCount() + 2 + dataNumber) * lineSize + getShift());
    }

    @Override
    public Point getSocketPortPosition(int dataNumber) {
        int lineSize = getLineSize();
        return new Point(-1, (getEventPortsCount() + 2 + getInputDataPortsCount() + dataNumber) * lineSize + getShift());
    }

    @Override
    public Point getPlugPortPosition(int dataNumber) {
        int lineSize = getLineSize();
        return new Point(getRootCell().getWidth() + 1, (getEventPortsCount() + 2 + getOutputDataPortsCount() + dataNumber) * lineSize + getShift());
    }

    protected void initPorts() {
        initPorts(inputEventPorts, fbType.getEventInputPorts());
        initPorts(outputEventPorts, fbType.getEventOutputPorts());
        initPorts(inputDataPorts, fbType.getDataInputPorts());
        initPorts(outputDataPorts, fbType.getDataOutputPorts());
        initPorts(socketPorts, fbType.getSocketPorts());
        initPorts(plugPorts, fbType.getPlugPorts());
    }

    protected void initPorts(List<FBPort> ports, List<FBPortDescriptor> portDescriptors) {
        for (FBPortDescriptor portDescriptor : portDescriptors) {
            FBPort portBase = new FBPortBase(portDescriptor);
            ports.add(portBase);
        }
    }

    protected void drawPortIcons(List<FBPort> ports, Graphics2D graphics, int x, int y, Color borderColor) {
        int lineSize = getLineSize();
        y += getShift() - scale(PORT_SIZE) / 2;
        for (FBPort port : ports) {
            Rectangle rect = new Rectangle(x, y, scale(PORT_SIZE), scale(PORT_SIZE));
            graphics.setColor(DiagramColors.getColorFor(port.getConnectionKind(), isEditable));
            graphics.fill(rect);
            graphics.setColor(borderColor);
            graphics.draw(rect);

            y += lineSize;
        }
    }

    protected void drawAllPortIcons(Graphics2D graphics, Color color) {
        int x = getRootCell().getX();
        int y = getRootCell().getY();
        int lineSize = getLineSize();
        int typeNameY = y + (getEventPortsCount() + 1) * lineSize;

        int topEventsY = y;
        drawPortIcons(inputEventPorts, graphics, x, topEventsY, color);
        drawPortIcons(outputEventPorts, graphics, x + getRootCell().getWidth() - scale(PORT_SIZE), topEventsY, color);

        int topDatasY = typeNameY + lineSize;
        drawPortIcons(inputDataPorts, graphics, x, topDatasY, color);
        drawPortIcons(outputDataPorts, graphics, x + getRootCell().getWidth() - scale(PORT_SIZE), topDatasY, color);

        int topSocketY = topDatasY + getInputDataPortsCount() * lineSize;
        int topPlugY = topDatasY + getOutputDataPortsCount() * lineSize;

        drawPortIcons(socketPorts, graphics, x, topSocketY, color);
        drawPortIcons(plugPorts, graphics, x + getRootCell().getWidth() - scale(PORT_SIZE), topPlugY, color);
        graphics.setStroke(new BasicStroke());
    }

    protected int getShift() {
        return getLineSize() - getFontSize() / 2;
    }

    protected int getLineSize() {
        return LayoutUtil.getLineSize(getRootCell().getStyle());
    }

    protected int getFontSize() {
        return LayoutUtil.getFontSize(getRootCell().getStyle());
    }

    protected int scale(int size) {
        return size * getFontSize() / EditorSettings.getInstance().getFontSize();
    }

    private void relayoutChildren() {
        for (EditorCell cell : getRootCell()) {
            cell.relayout();
        }
    }
}
