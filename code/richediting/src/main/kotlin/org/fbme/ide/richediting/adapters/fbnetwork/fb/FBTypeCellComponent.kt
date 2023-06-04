package org.fbme.ide.richediting.adapters.fbnetwork.fb

import jetbrains.mps.editor.runtime.TextBuilderImpl
import jetbrains.mps.editor.runtime.style.StyleAttributes
import jetbrains.mps.nodeEditor.MPSColors
import jetbrains.mps.nodeEditor.cellLayout.AbstractCellLayout
import jetbrains.mps.nodeEditor.cells.EditorCell_Collection
import jetbrains.mps.nodeEditor.cells.ParentSettings
import jetbrains.mps.openapi.editor.EditorContext
import jetbrains.mps.openapi.editor.TextBuilder
import jetbrains.mps.openapi.editor.cells.CellActionType
import jetbrains.mps.openapi.editor.cells.EditorCell
import org.fbme.ide.iec61499.repository.PlatformElement
import org.fbme.ide.richediting.adapters.fbnetwork.FBConnectionPathPainter
import org.fbme.ide.richediting.adapters.fbnetwork.port.Port
import org.fbme.ide.richediting.adapters.fbnetwork.port.PortWithLabel
import org.fbme.ide.richediting.editor.NetworkInstanceNavigationSupport
import org.fbme.ide.richediting.editor.RichEditorStyleAttributes
import org.fbme.ide.richediting.utils.ProjectProvider
import org.fbme.lib.iec61499.descriptors.FBPortDescriptor
import org.fbme.lib.iec61499.descriptors.FBTypeDescriptor
import org.fbme.lib.iec61499.instances.NetworkInstance
import org.fbme.scenes.cells.EditorCell_SceneLabel
import org.jetbrains.mps.openapi.model.SNode
import java.awt.*
import java.awt.geom.AffineTransform
import java.util.*
import kotlin.math.max

class FBTypeCellComponent(context: EditorContext, fbType: FBTypeDescriptor, node: SNode, isEditable: Boolean) :
        AbstractFBCell(context, fbType, node, isEditable) {
    private val typeNameLabel: EditorCell_SceneLabel
    override val rootCell: EditorCell_Collection
    private val backgroundColor: Color
        get() {
            val background = rootCell.style.get(StyleAttributes.BACKGROUND_COLOR)
            return background ?: MPSColors.LIGHT_GRAY
        }
    private val typeBackgroundColor: Color
        get() = MPSColors.LIGHT_BLUE
    private val foregroundColor: Color
        get() = rootCell.style.get(StyleAttributes.TEXT_COLOR)

    init {
        rootCell = createRootCell()
        rootCell.style.set(RichEditorStyleAttributes.TYPE, fbType)
        typeNameLabel = createTypeNameLabel()
        rootCell.addEditorCell(typeNameLabel)
        rootCell.style.set(StyleAttributes.TEXT_COLOR, if (isEditable) MPSColors.BLACK else MPSColors.DARK_GRAY)
        initPorts()
        relayout()
    }

    override fun initPorts(ports: MutableList<Port>, portDescriptors: List<FBPortDescriptor>) {
        for (portDescriptor in portDescriptors) {
            val portWithLabel = PortWithLabel(context, node, portDescriptor)
            ports.add(portWithLabel)
            rootCell.addEditorCell(portWithLabel.label)
        }
    }

    override fun paintTrace(g: Graphics2D, x: Int, y: Int) {
        val shape = getComponentShape(x, y)
        g.paint = MPSColors.GRAY
        FBConnectionPathPainter.setupShadowPathPaint(g, scale(1).toFloat())
        g.draw(shape)
    }

    override fun relayout() {
        super.relayout()
        calculateSizes()
        val lineSize = lineSize
        relayoutPortLabels(lineSize)
        relayoutLabel(lineSize)
    }

    private fun getPortBounds(
            position: Int,
            ports: List<Port>,
            isOutput: Boolean = false,
            verticalOffset: Int = 0): Rectangle {
        val lineSize = lineSize
        val port = ports[position]

        val width = (port as PortWithLabel).label.width + scale(INNER_BORDER_PADDING)

        val y = (verticalOffset + position) * lineSize
        val x = if (isOutput) rootCell.width - width else 0

        return Rectangle(x, y, width, lineSize)
    }

    override fun getInputEventPortBounds(eventNumber: Int): Rectangle =
            getPortBounds(eventNumber, inputEventPorts)

    override fun getOutputEventPortBounds(eventNumber: Int): Rectangle =
            getPortBounds(eventNumber, outputEventPorts, isOutput = true)

    override fun getInputDataPortBounds(dataNumber: Int): Rectangle =
            getPortBounds(dataNumber, inputDataPorts, verticalOffset = 2 + eventPortsCount)

    override fun getOutputDataPortBounds(dataNumber: Int): Rectangle =
            getPortBounds(dataNumber, outputDataPorts, isOutput = true, verticalOffset = 2 + eventPortsCount)


    override fun getSocketPortBounds(socketNumber: Int): Rectangle =
            getPortBounds(socketNumber, socketPorts, verticalOffset = 2 + eventPortsCount + inputDataPortsCount)

    override fun getPlugPortBounds(plugNumber: Int): Rectangle =
            getPortBounds(plugNumber, plugPorts, isOutput = true,
                    verticalOffset = 2 + eventPortsCount + outputDataPortsCount)

    private fun relayoutPortLabels(lineSize: Int) {
        val leftX = rootCell.x + scale(INNER_BORDER_PADDING)
        val topY = rootCell.y - lineSize / 4
        val dataY = topY + (eventPortsCount + 2) * lineSize
        val rightX = rootCell.x + rootCell.width - scale(INNER_BORDER_PADDING)
        relayoutEventInputPortLabels(leftX, topY, lineSize)
        relayoutEventOutputPortLabels(rightX, topY, lineSize)
        relayoutDataInputPortLabels(leftX, dataY, lineSize)
        relayoutSocketPortLabels(leftX, dataY + lineSize * inputDataPorts.size, lineSize)
        relayoutDataOutputPortLabels(rightX, dataY, lineSize)
        relayoutPlugPortLabels(rightX, dataY + lineSize * outputDataPorts.size, lineSize)
    }

    private fun relayoutDataOutputPortLabels(x: Int, y: Int, lineSize: Int) =
            relayoutPortLabels(x, y, lineSize, outputDataPorts, isOutput = true)

    private fun relayoutEventOutputPortLabels(x: Int, y: Int, lineSize: Int) =
            relayoutPortLabels(x, y, lineSize, outputEventPorts, isOutput = true)

    private fun relayoutPlugPortLabels(x: Int, y: Int, lineSize: Int) =
            relayoutPortLabels(x, y, lineSize, plugPorts, isOutput = true)

    private fun relayoutDataInputPortLabels(x: Int, y: Int, lineSize: Int) =
            relayoutPortLabels(x, y, lineSize, inputDataPorts)

    private fun relayoutEventInputPortLabels(x: Int, y: Int, lineSize: Int) =
            relayoutPortLabels(x, y, lineSize, inputEventPorts)

    private fun relayoutSocketPortLabels(x: Int, y: Int, lineSize: Int) =
            relayoutPortLabels(x, y, lineSize, socketPorts)
    private fun relayoutPortLabels(x: Int, y: Int, lineSize: Int, ports: List<Port>, isOutput: Boolean = false) =
            ports.forEachIndexed { index, port ->
                val label = (port as PortWithLabel).label
                val curY = y + index * lineSize
                val curX = x - if (isOutput) label.width else 0
                label.moveTo(curX, curY)
            }


    private fun relayoutLabel(lineSize: Int) {
        typeNameLabel.moveTo(
                rootCell.x + rootCell.width / 2 - typeNameLabel.width / 2,
                rootCell.y + (eventPortsCount + 1) * lineSize - lineSize / 4
        )
    }

    private fun calculateSizes() {
        rootCell.width = calculateWidth()
        rootCell.height = calculateHeight()
    }

    private fun paint(graphics: Graphics2D) {
        val background = backgroundColor
        val foreground = foregroundColor
        drawComponentShape(graphics, background, foreground)
        drawAllPortIcons(graphics, foreground)
    }

    private fun drawComponentShape(graphics: Graphics2D, background: Color, foreground: Color) {
        val x = rootCell.x
        val y = rootCell.y
        val lineSize = lineSize
        val typeNameY = y + (eventPortsCount + 1) * lineSize
        val shape = getComponentShape(x, y)
        val shadowShape = shape.createTransformedShape(AffineTransform.getTranslateInstance(2.0, 2.0))
        graphics.paint = Color(0xEEEEEE)
        graphics.fill(shadowShape)
        graphics.paint = DiagramColors.createGradientPaint(background, Rectangle(x, y, rootCell.width, rootCell.height))
        graphics.fill(shape)
        graphics.paint = DiagramColors.createGradientPaint(
                typeBackgroundColor,
                Rectangle(x, y, rootCell.width, rootCell.height)
        )
        graphics.fill(Rectangle(x, typeNameY, rootCell.width, lineSize))
        graphics.stroke = BasicStroke(scale(1).toFloat())
        graphics.color = foreground
        graphics.draw(shape)
    }

    private fun calculateHeight(): Int {
        val eventPortsCount = eventPortsCount
        val dataPortsCount = bottomPortsCount
        return (eventPortsCount + dataPortsCount + 2) * lineSize
    }

    private fun calculateWidth(): Int {
        val typeNameRowWidth = typeNameLabel.width
        val inputsWidth = max(
                portsColumnWidth(inputEventPorts),
                max(portsColumnWidth(inputDataPorts), portsColumnWidth(socketPorts))
        )
        val outputsWidth = max(
                portsColumnWidth(outputEventPorts),
                max(portsColumnWidth(outputDataPorts), portsColumnWidth(plugPorts))
        )
        val regularRowsWidth = inputsWidth + outputsWidth + scale(CENTER_PADDING + 2 * INNER_BORDER_PADDING)
        return max(regularRowsWidth, typeNameRowWidth) + scale(2 * INNER_BORDER_PADDING)
    }

    private fun createRootCell(): EditorCell_Collection {
        return object : EditorCell_Collection(
                context,
                node,
                object : AbstractCellLayout() {
                    override fun doLayout(collection: jetbrains.mps.openapi.editor.cells.EditorCell_Collection) {
                        assert(collection === rootCell)
                        relayout()
                    }

                    override fun doLayoutText(iterable: Iterable<EditorCell>): TextBuilder {
                        return TextBuilderImpl()
                    }
                }
        ) {
            override fun paintContent(g: Graphics, parentSettings: ParentSettings) {
                this@FBTypeCellComponent.paint(g.create() as Graphics2D)
            }

            override fun paintSelection(g: Graphics, c: Color, drawBorder: Boolean, parentSettings: ParentSettings) {
                // do noting
            }

            override fun findLeaf(x: Int, y: Int): EditorCell? {
                val leaf = super.findLeaf(x, y)
                if (leaf != null) {
                    return leaf
                }
                return if (Rectangle(myX, myY, myWidth, myHeight).contains(x, y)) {
                    this
                } else null
            }

            override fun onAdd() {
                super.onAdd()
                installNavigatable()
                setAction(CellActionType.BACKSPACE, parent.parent.getAction(CellActionType.BACKSPACE))
            }
        }
    }

    private fun installNavigatable() {
        val style = typeNameLabel.style
        val instance = style.get(RichEditorStyleAttributes.NETWORK_INSTANCE)
        if (instance != null) {
            val functionBlock = style.get(RichEditorStyleAttributes.FB)
            val child = instance.getChild(functionBlock!!)
            if (child != null) {
                val childNetworkInstance = child.containedNetwork
                if (childNetworkInstance is NetworkInstance) {
                    val navigationStub = NetworkInstanceNavigationSupport.getNavigationStub(
                            ProjectProvider.getInstance(rootCell.context)!!, childNetworkInstance
                    )
                    style.set(StyleAttributes.NAVIGATABLE_NODE, navigationStub)
                    return
                }
            }
        }
        val typeDeclaration = style.get(RichEditorStyleAttributes.TYPE).declaration
        if (typeDeclaration is PlatformElement) {
            style.set(StyleAttributes.NAVIGATABLE_NODE, (typeDeclaration as PlatformElement).node)
        }
    }

    companion object {
        private const val CENTER_PADDING = 20
        private const val INNER_BORDER_PADDING = 2
        private val PORT_LABEL_WIDTH_COMPARATOR =
                Comparator.comparing { port: Port -> (port as PortWithLabel).label.width }

        private fun portsColumnWidth(ports: List<Port>): Int {
            return if (ports.isEmpty()) {
                0
            } else (
                    Collections.max(
                            ports,
                            PORT_LABEL_WIDTH_COMPARATOR
                    ) as PortWithLabel
                    ).label.width
        }
    }
}
