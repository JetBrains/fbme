package org.fbme.ide.richediting.adapters.fbnetwork.fb

import jetbrains.mps.nodeEditor.EditorSettings
import jetbrains.mps.openapi.editor.EditorContext
import org.fbme.ide.richediting.adapters.fbnetwork.Port
import org.fbme.ide.richediting.adapters.fbnetwork.PortBase
import org.fbme.lib.iec61499.descriptors.FBPortDescriptor
import org.fbme.lib.iec61499.descriptors.FBTypeDescriptor
import org.fbme.scenes.cells.EditorCell_SceneLabel
import org.fbme.scenes.controllers.LayoutUtil.getFontSize
import org.fbme.scenes.controllers.LayoutUtil.getLineSize
import org.jetbrains.mps.openapi.model.SNode
import java.awt.*
import java.awt.geom.GeneralPath
import kotlin.math.max

abstract class AbstractFBCell protected constructor(
    protected var context: EditorContext,
    protected var fbType: FBTypeDescriptor,
    protected var node: SNode,
    protected val isEditable: Boolean
) : FBCell {

    @JvmField
    protected val inputEventPorts: MutableList<Port> = ArrayList()

    @JvmField
    protected val inputDataPorts: MutableList<Port> = ArrayList()

    @JvmField
    protected val outputEventPorts: MutableList<Port> = ArrayList()

    @JvmField
    protected val outputDataPorts: MutableList<Port> = ArrayList()

    @JvmField
    protected val socketPorts: MutableList<Port> = ArrayList()

    @JvmField
    protected val plugPorts: MutableList<Port> = ArrayList()
    override val width: Int
        get() = rootCell.width
    override val height: Int
        get() = rootCell.height
    override val bottomPortsCount: Int
        get() = max(inputBottomPortsCount, outputBottomPortsCount)
    override val inputBottomPortsCount: Int
        get() = inputDataPorts.size + socketPorts.size
    override val outputBottomPortsCount: Int
        get() = outputDataPorts.size + plugPorts.size
    override val inputDataPortsCount: Int
        get() = inputDataPorts.size
    override val outputDataPortsCount: Int
        get() = outputDataPorts.size
    override val socketPortsCount: Int
        get() = socketPorts.size
    override val plugPortsCount: Int
        get() = plugPorts.size
    override val eventPortsCount: Int
        get() = max(inputEventPortsCount, outputEventPortsCount)
    override val inputEventPortsCount: Int
        get() = inputEventPorts.size
    override val outputEventPortsCount: Int
        get() = outputEventPorts.size
    protected val shift: Int
        get() = lineSize - fontSize / 2
    protected val lineSize: Int
        get() = getLineSize(rootCell.style)
    protected val fontSize: Int
        get() = getFontSize(rootCell.style)
    override val bounds: Rectangle
        get() = Rectangle(rootCell.x, rootCell.y, width, height)

    override fun relayout() {
        relayoutChildren()
    }

    override fun getInputEventPortPosition(eventNumber: Int): Point {
        val lineSize = lineSize
        val bounds = getInputEventPortBounds(eventNumber)
        val x = bounds.x - scale(PORT_SIZE) / 2
        val y = bounds.y + lineSize / 2
        return Point(x, y)
    }

    override fun getOutputEventPortPosition(eventNumber: Int): Point {
        val lineSize = lineSize
        val bounds = getOutputEventPortBounds(eventNumber)
        val x = bounds.x + bounds.width + scale(PORT_SIZE) / 2
        val y = bounds.y + lineSize / 2
        return Point(x, y)
    }

    override fun getInputDataPortPosition(dataNumber: Int): Point {
        val lineSize = lineSize
        val bounds = getInputDataPortBounds(dataNumber)
        val x = bounds.x - scale(PORT_SIZE) / 2
        val y = bounds.y + lineSize / 2
        return Point(x, y)
    }

    override fun getOutputDataPortPosition(dataNumber: Int): Point {
        val lineSize = lineSize
        val bounds = getOutputDataPortBounds(dataNumber)
        val x = bounds.x + bounds.width + scale(PORT_SIZE) / 2
        val y = bounds.y + lineSize / 2
        return Point(x, y)
    }

    override fun getSocketPortPosition(dataNumber: Int): Point {
        val lineSize = lineSize
        val bounds = getSocketPortBounds(dataNumber)
        val x = bounds.x - scale(PORT_SIZE) / 2
        val y = bounds.y + lineSize / 2
        return Point(x, y)
    }

    override fun getPlugPortPosition(dataNumber: Int): Point {
        val lineSize = lineSize
        val bounds = getPlugPortBounds(dataNumber)
        val x = bounds.x + bounds.width + scale(PORT_SIZE) / 2
        val y = bounds.y + lineSize / 2
        return Point(x, y)
    }

    protected fun initPorts() {
        initPorts(inputEventPorts, fbType.eventInputPorts)
        initPorts(outputEventPorts, fbType.eventOutputPorts)
        initPorts(inputDataPorts, fbType.dataInputPorts)
        initPorts(outputDataPorts, fbType.dataOutputPorts)
        initPorts(socketPorts, fbType.socketPorts)
        initPorts(plugPorts, fbType.plugPorts)
    }

    protected open fun initPorts(ports: MutableList<Port>, portDescriptors: List<FBPortDescriptor>) {
        for (portDescriptor in portDescriptors) {
            val portBase: Port = PortBase(portDescriptor)
            ports.add(portBase)
        }
    }

    protected fun drawPortIcons(ports: List<Port>, graphics: Graphics2D, x: Int, y: Int, borderColor: Color?) {
        var y = y
        val lineSize = lineSize
        y += lineSize / 2 - scale(PORT_SIZE) / 2
        for (port in ports) {
            val rect = Rectangle(x, y, scale(PORT_SIZE), scale(PORT_SIZE))
            graphics.color = DiagramColors.getColorFor(port.connectionKind, isEditable)
            graphics.fill(rect)
            graphics.color = borderColor
            graphics.draw(rect)
            y += lineSize
        }
    }

    protected fun drawAllPortIcons(graphics: Graphics2D, color: Color?) {
        val x = rootCell.x
        val xLeft = x - scale(PORT_SIZE)
        val xRight = x + rootCell.width
        val y = rootCell.y
        val lineSize = lineSize
        val typeNameY = y + (eventPortsCount + 1) * lineSize
        drawPortIcons(inputEventPorts, graphics, xLeft, y, color)
        drawPortIcons(outputEventPorts, graphics, xRight, y, color)
        val topDatasY = typeNameY + lineSize
        drawPortIcons(inputDataPorts, graphics, xLeft, topDatasY, color)
        drawPortIcons(outputDataPorts, graphics, xRight, topDatasY, color)
        val topSocketY = topDatasY + inputDataPortsCount * lineSize
        val topPlugY = topDatasY + outputDataPortsCount * lineSize
        drawPortIcons(socketPorts, graphics, xLeft, topSocketY, color)
        drawPortIcons(plugPorts, graphics, xRight, topPlugY, color)
        graphics.stroke = BasicStroke()
    }

    protected fun scale(size: Int): Int {
        return size * fontSize / EditorSettings.getInstance().fontSize
    }

    protected fun createTypeNameLabel(): EditorCell_SceneLabel {
        val typeDeclaration = fbType.declaration
        return EditorCell_SceneLabel(context, node, fbType.typeName, typeDeclaration == null)
    }

    protected fun getComponentShape(x: Int, y: Int): GeneralPath {
        val shape = GeneralPath()
        val eventPortsCount = eventPortsCount
        val lineSize = lineSize
        val halfLineSize = lineSize / 2
        val width = rootCell.width
        val height = rootCell.height
        val xRight = x + width
        val yTop = y + height
        val yCenterB = (y + lineSize * eventPortsCount + halfLineSize).toDouble()
        val yCenterT = yCenterB + halfLineSize
        val xLeftS = (x + lineSize).toDouble()
        val xRightS = (xRight - lineSize).toDouble()
        shape.moveTo(x.toFloat(), y.toFloat())
        shape.lineTo(x.toDouble(), yCenterB)
        shape.lineTo(xLeftS, yCenterB)
        shape.lineTo(xLeftS, yCenterT)
        shape.lineTo(x.toDouble(), yCenterT)
        shape.lineTo(x.toFloat(), yTop.toFloat())
        shape.lineTo(xRight.toFloat(), yTop.toFloat())
        shape.lineTo(xRight.toDouble(), yCenterT)
        shape.lineTo(xRightS, yCenterT)
        shape.lineTo(xRightS, yCenterB)
        shape.lineTo(xRight.toDouble(), yCenterB)
        shape.lineTo(xRight.toFloat(), y.toFloat())
        shape.closePath()
        return shape
    }

    override fun canStartMoveAt(x: Int, y: Int): Boolean {
        val componentShape = getComponentShape(rootCell.x, rootCell.y)
        return componentShape.contains(x.toDouble(), y.toDouble())
    }

    private fun relayoutChildren() {
        for (cell in rootCell) {
            cell.relayout()
        }
    }

    companion object {
        const val PORT_SIZE = 4
    }
}
