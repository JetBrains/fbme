package org.fbme.ide.richediting.adapters.fbnetwork.fb

import jetbrains.mps.editor.runtime.style.CellAlign
import jetbrains.mps.editor.runtime.style.Measure
import jetbrains.mps.editor.runtime.style.Padding
import jetbrains.mps.editor.runtime.style.StyleAttributes
import jetbrains.mps.nodeEditor.MPSColors
import jetbrains.mps.nodeEditor.cellLayout.CellLayout_Horizontal
import jetbrains.mps.nodeEditor.cellLayout.CellLayout_Vertical
import jetbrains.mps.nodeEditor.cells.EditorCell_Collection
import jetbrains.mps.nodeEditor.cells.EditorCell_Property
import jetbrains.mps.nodeEditor.cells.ParentSettings
import jetbrains.mps.openapi.editor.EditorContext
import jetbrains.mps.openapi.editor.cells.CellAction
import jetbrains.mps.openapi.editor.cells.CellActionType
import jetbrains.mps.openapi.editor.cells.EditorCell
import jetbrains.mps.openapi.editor.style.StyleAttribute
import org.fbme.ide.iec61499.repository.PlatformElement
import org.fbme.ide.richediting.adapters.fbnetwork.FBConnectionPathPainter
import org.fbme.ide.richediting.adapters.fbnetwork.actions.cell.DeclarationNameAccessor
import org.fbme.ide.richediting.adapters.fbnetwork.port.*
import org.fbme.ide.richediting.editor.RichEditorStyleAttributes
import org.fbme.ide.richediting.viewmodel.FunctionBlockPortView
import org.fbme.ide.richediting.viewmodel.FunctionBlockView
import org.fbme.ide.richediting.viewmodel.NetworkPortView
import org.fbme.lib.iec61499.DeclarationsScope
import org.fbme.lib.iec61499.IEC61499Factory
import org.fbme.lib.iec61499.declarations.*
import org.fbme.lib.iec61499.descriptors.FBPortDescriptor
import org.fbme.lib.iec61499.descriptors.FBTypeDescriptor
import org.fbme.lib.iec61499.fbnetwork.EntryKind
import org.fbme.lib.iec61499.instances.NetworkInstance
import org.fbme.lib.st.types.DataTypeUtil
import org.fbme.scenes.cells.EditorCell_Button
import org.fbme.scenes.cells.button.PlusButton
import org.fbme.scenes.viewmodel.CompletionItem
import org.jetbrains.mps.openapi.model.SNode
import java.awt.*
import java.awt.geom.AffineTransform
import java.awt.geom.GeneralPath
import java.util.*
import kotlin.math.max

class EditableFBTypeCell(
        context: EditorContext,
        fbType: FBTypeDescriptor,
        node: SNode,
        val iec61499Factory: IEC61499Factory,
        val scope: DeclarationsScope,
        isEditable: Boolean,
) : AbstractFBCell(context, fbType, node, isEditable) {

    private val typeNameLabel: EditorCell_Property

    override val rootCell: EditorCell_Collection
    val buttons: EnumMap<EntryKind, EditorCell_Collection>
    private val eventPortsContainer: EditorCell_Collection
    private val dataPortsContainer: EditorCell_Collection
    private val otherPortsContainer: EditorCell_Collection

    private val inputPorts: Set<Port>
        get() = inputEventPorts.union(inputDataPorts).union(socketPorts)
    private val outputPorts: Set<Port>
        get() = outputEventPorts.union(outputDataPorts).union(plugPorts)
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
        val declaration = fbType.declaration

        rootCell = createRootCell()
        rootCell.style.set(RichEditorStyleAttributes.TYPE, fbType)

        buttons = EnumMap<EntryKind, EditorCell_Collection>(EntryKind::class.java)

        eventPortsContainer = createPortContainer(fbType.eventInputPorts, fbType.eventOutputPorts, inputEventPorts, outputEventPorts, ::createPortBlock)
        typeNameLabel = createNameLabel()
        dataPortsContainer = createPortContainer(fbType.dataInputPorts, fbType.dataOutputPorts, inputDataPorts, outputDataPorts, ::createDataPortBlock)
        otherPortsContainer = createPortContainer(fbType.socketPorts, fbType.plugPorts, socketPorts, plugPorts, ::createPlugSocketPortBlock)

        rootCell.addEditorCell(eventPortsContainer)
        if (declaration is FBInterfaceDeclaration) {
            buttons[EntryKind.EVENT] = createButtonContainer(PortActionFactory.createInputEventAction(declaration, iec61499Factory), PortActionFactory.createOutputEventAction(declaration, iec61499Factory))

            rootCell.addEditorCell(buttons[EntryKind.EVENT])
        }
        rootCell.addEditorCell(typeNameLabel)
        rootCell.addEditorCell(dataPortsContainer)
        if (declaration is FBInterfaceDeclaration) {
            buttons[EntryKind.DATA] = createButtonContainer(PortActionFactory.createInputParameterAction(declaration, iec61499Factory), PortActionFactory.createOutputParameterAction(declaration, iec61499Factory))

            rootCell.addEditorCell(buttons[EntryKind.DATA])
        }
        rootCell.addEditorCell(otherPortsContainer)
        if (declaration is FBInterfaceDeclarationWithAdapters) {
            buttons[EntryKind.ADAPTER] = createButtonContainer(PortActionFactory.createSocketAction(declaration, iec61499Factory), PortActionFactory.createPluginAction(declaration, iec61499Factory))

            rootCell.addEditorCell(buttons[EntryKind.ADAPTER])
        }
        rootCell.style.set(StyleAttributes.TEXT_COLOR, if (isEditable) MPSColors.BLACK else MPSColors.DARK_GRAY)
    }

    private fun createButtonContainer(inputAction: CellAction, outputAction: CellAction): EditorCell_Collection {
        val container = object : EditorCell_Collection(context, node, CellLayout_Horizontal()) {}

        val leftButton = createButton(inputAction)
        val rightButton = createButton(outputAction)

        container.style.set(StyleAttributes.HORIZONTAL_ALIGN, CellAlign.CENTER)

        container.addEditorCell(leftButton)
        container.addEditorCell(rightButton)

        return container
    }

    private fun createButton(cellAction: CellAction): EditorCell {
        val button = EditorCell_Button(context, node, PlusButton(PLUS_BUTTON_SIZE))

        button.setAction(CellActionType.CLICK, cellAction)

        return button
    }

    private fun createPortContainer(
            input: List<FBPortDescriptor>,
            output: List<FBPortDescriptor>,
            inputList: MutableList<Port>,
            outputList: MutableList<Port>,
            creator: (
                    portsDescriptors: List<FBPortDescriptor>,
                    ports: MutableList<Port>,
                    horizontalAlign: CellAlign,
                    padding: StyleAttribute<Padding>,
            ) -> EditorCell_Collection,
    ): EditorCell_Collection {
        val container = object : EditorCell_Collection(context, node, CellLayout_Horizontal()) {}

        val inputContainer = creator(input, inputList, CellAlign.LEFT, StyleAttributes.PADDING_LEFT)
        val outputContainer = creator(output, outputList, CellAlign.RIGHT, StyleAttributes.PADDING_RIGHT)

        container.addEditorCell(inputContainer)
        container.addEditorCell(outputContainer)

        container.style.set(StyleAttributes.HORIZONTAL_ALIGN, CellAlign.CENTER)

        return container
    }

    private fun createPortBlock(
            portsDescriptors: List<FBPortDescriptor>,
            ports: MutableList<Port>,
            horizontalAlign: CellAlign,
            padding: StyleAttribute<Padding>,
    ): EditorCell_Collection {
        val block = object : EditorCell_Collection(context, node, CellLayout_Vertical()) {}

        for (port in portsDescriptors) {
            val portWithLabel = EditablePortLabel(context, node, port, fbType.declaration)
            portWithLabel.label.style.set(StyleAttributes.HORIZONTAL_ALIGN, horizontalAlign)
            portWithLabel.label.style.set(padding, Padding(INNER_BORDER_PADDING.toDouble(), Measure.PIXELS))
            ports.add(portWithLabel)
            block.addEditorCell(portWithLabel.label)
        }

        return block
    }

    fun addPort(port: FBPortDescriptor) {
        when (port.connectionKind) {
            EntryKind.EVENT -> {
                val value = EditablePortLabel(context, node,  port, fbType.declaration)
                if (port.isInput) {
                    (eventPortsContainer.cells.first() as EditorCell_Collection).addEditorCell(value.label)
                    inputEventPorts.add(value)
                } else {
                    (eventPortsContainer.cells.last() as EditorCell_Collection).addEditorCell(value.label)
                    outputEventPorts.add(value)
                }
            }
            EntryKind.DATA -> {
                val typeDeclaration = port.declaration as ParameterDeclaration
                val value = EditablePortWithTypeAndLabel(context, node, port, fbType.declaration, typeDeclaration.type?.stringify(), getDataTypeSuggestions(typeDeclaration))
                if (port.isInput) {
                    (dataPortsContainer.cells.first() as EditorCell_Collection).addEditorCell(value.cell)
                    inputDataPorts.add(value)
                } else {
                    (dataPortsContainer.cells.last() as EditorCell_Collection).addEditorCell(value.cell)
                    outputDataPorts.add(value)
                }
            }
            EntryKind.ADAPTER -> {
                val types = scope.findAllAdapterTypeDeclarations()
                if (port.isInput) {
                    addPlugSocketPort(port, socketPorts, otherPortsContainer.cells.first() as EditorCell_Collection, types, CellAlign.LEFT, StyleAttributes.PADDING_LEFT)
                } else {
                    addPlugSocketPort(port, plugPorts, otherPortsContainer.cells.last() as EditorCell_Collection, types, CellAlign.RIGHT, StyleAttributes.PADDING_RIGHT)
                }
            }
        }
    }

    private fun createDataPortBlock(
            portsDescriptors: List<FBPortDescriptor>,
            ports: MutableList<Port>,
            horizontalAlign: CellAlign,
            padding: StyleAttribute<Padding>,
    ): EditorCell_Collection {
        val block = object : EditorCell_Collection(context, node, CellLayout_Vertical()) {}

        for (port in portsDescriptors) {
            val typeDeclaration = port.declaration as ParameterDeclaration
            val portWithLabel = EditablePortWithTypeAndLabel(context, node, port, fbType.declaration, typeDeclaration.type?.stringify(), getDataTypeSuggestions(typeDeclaration))
            portWithLabel.label.style.set(StyleAttributes.HORIZONTAL_ALIGN, horizontalAlign)
            portWithLabel.label.style.set(padding, Padding(INNER_BORDER_PADDING.toDouble(), Measure.PIXELS))
            ports.add(portWithLabel)
            block.addEditorCell(portWithLabel.cell)
        }

        return block
    }

    fun getDataTypeSuggestions(typeDeclaration: ParameterDeclaration): List<CompletionItem> {
        return DataTypeUtil.getBasicTypes().map {
            object : CompletionItem {
                override fun getMatchingText(pattern: String?): String = it.stringify()

                override val descriptionText: String = ""

                override fun doSubstitute(editorContext: EditorContext?, pattern: String?): SNode? {
                    typeDeclaration.type = it
                    return null
                }
            }
        }
    }

    private fun createPlugSocketPortBlock(
            portsDescriptors: List<FBPortDescriptor>,
            ports: MutableList<Port>,
            horizontalAlign: CellAlign,
            padding: StyleAttribute<Padding>,
    ): EditorCell_Collection {
        val block = object : EditorCell_Collection(context, node, CellLayout_Vertical()) {}
        val types = scope.findAllAdapterTypeDeclarations()

        for (port in portsDescriptors) {
            addPlugSocketPort(port, ports, block, types, horizontalAlign, padding)
        }

        return block
    }

    fun addPlugSocketPort(port: FBPortDescriptor, ports: MutableList<Port>, block: EditorCell_Collection, types: List<AdapterTypeDeclaration>, horizontalAlign: CellAlign,
                          padding: StyleAttribute<Padding>) {
        val typeDeclaration = port.declaration as SocketPluginDeclaration
        val items = types.map {
            object : CompletionItem {
                override fun getMatchingText(pattern: String?): String = it.name

                override val descriptionText: String = ""

                override fun doSubstitute(editorContext: EditorContext?, pattern: String?): SNode? {
                    typeDeclaration.typeReference.setTarget(it)
                    return null
                }
            }
        }
        val portWithLabel = EditablePortWithTypeAndLabel(context, node, port, fbType.declaration, typeDeclaration.typeReference.presentation, items)
        portWithLabel.label.style.set(StyleAttributes.HORIZONTAL_ALIGN, horizontalAlign)
        portWithLabel.label.style.set(padding, Padding(INNER_BORDER_PADDING.toDouble(), Measure.PIXELS))
        ports.add(portWithLabel)
        block.addEditorCell(portWithLabel.cell)
    }

    private fun createRootCell(): EditorCell_Collection {
        return object : EditorCell_Collection(context, node, object : CellLayout_Vertical() {
            override fun doLayout(editorCells: jetbrains.mps.openapi.editor.cells.EditorCell_Collection?) {
                super.doLayout(editorCells)
                relayout()
            }
        }) {


            override fun paintContent(g: Graphics, parentSettings: ParentSettings) {
                this@EditableFBTypeCell.paint(g.create() as Graphics2D)
            }

            override fun paintSelection(g: Graphics, c: Color, drawBorder: Boolean, parentSettings: ParentSettings) { // do noting
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

    private fun paint(graphics: Graphics2D) {
        val background = backgroundColor
        val foreground = foregroundColor
        drawComponentShape(graphics, background, foreground)
        drawPortIcons(graphics, foreground)
    }

    private fun drawPortIcons(graphics: Graphics2D, color: Color?) {
        drawPortIcons(graphics, rootCell.x - scale(PORT_SIZE), inputPorts, color)
        drawPortIcons(graphics, rootCell.x + rootCell.width, outputPorts, color)
    }

    private fun drawPortIcons(graphics: Graphics2D, x: Int, ports: Set<Port>, color: Color?) {
        for (port in ports) {
            val portWithLabel = port as EditablePortLabel
            val y = portWithLabel.label.y + portWithLabel.label.height / 2 - scale(PORT_SIZE) / 2
            val form = Rectangle(x, y, scale(PORT_SIZE), scale(PORT_SIZE))

            graphics.color = DiagramColors.getColorFor(port.connectionKind, isEditable)
            graphics.fill(form)
            graphics.color = color
            graphics.draw(form)
        }
    }

    private fun drawComponentShape(graphics: Graphics2D, background: Color, foreground: Color) {
        val x = rootCell.x
        val y = rootCell.y
        val shape = getComponentShape(x, y)
        val shadowShape = shape.createTransformedShape(AffineTransform.getTranslateInstance(2.0, 2.0))
        graphics.paint = Color(0xEEEEEE)
        graphics.fill(shadowShape)
        graphics.paint = DiagramColors.createGradientPaint(background, Rectangle(x, y, rootCell.width, rootCell.height))
        graphics.fill(shape)
        graphics.paint = DiagramColors.createGradientPaint(typeBackgroundColor, Rectangle(x, y, rootCell.width, rootCell.height))
        graphics.fill(Rectangle(x, typeNameLabel.y + lineSize / 2, rootCell.width, typeNameLabel.height - lineSize))
        graphics.stroke = BasicStroke(scale(1).toFloat())
        graphics.color = foreground
        graphics.draw(shape)
    }

    override fun getComponentShape(x: Int, y: Int): GeneralPath {
        val shape = GeneralPath()
        val lineSize = lineSize.toDouble()
        val width = rootCell.width.toDouble()
        val height = rootCell.height.toDouble()
        val xRight = x + width
        val yTop = y + height
        val yCenterB = typeNameLabel.y - lineSize / 2
        val yCenterT = typeNameLabel.y + lineSize / 2
        val xLeftS = x + lineSize
        val xRightS = xRight - lineSize
        shape.moveTo(x.toDouble(), y.toDouble())
        shape.lineTo(x.toDouble(), yCenterB)
        shape.lineTo(xLeftS, yCenterB)
        shape.lineTo(xLeftS, yCenterT)
        shape.lineTo(x.toDouble(), yCenterT)
        shape.lineTo(x.toDouble(), yTop)
        shape.lineTo(xRight, yTop)
        shape.lineTo(xRight, yCenterT)
        shape.lineTo(xRightS, yCenterT)
        shape.lineTo(xRightS, yCenterB)
        shape.lineTo(xRight, yCenterB)
        shape.lineTo(xRight, y.toDouble())
        shape.closePath()
        return shape
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
                    //val navigationStub = NetworkInstanceNavigationSupport.getNavigationStub(rootCell.context.operationContext.project, childNetworkInstance)
                    val typeDeclaration = style.get(RichEditorStyleAttributes.TYPE).declaration
                    //style.set(StyleAttributes.NAVIGATABLE_NODE, navigationStub)
                    style.set(StyleAttributes.NAVIGATABLE_NODE, (typeDeclaration as PlatformElement).node)
                    return
                }
            }
        }
        val typeDeclaration = style.get(RichEditorStyleAttributes.TYPE).declaration
        if (typeDeclaration is PlatformElement) {
            style.set(StyleAttributes.NAVIGATABLE_NODE, (typeDeclaration as PlatformElement).node)
        }
    }

    override fun paintTrace(g: Graphics2D, x: Int, y: Int) {
        val shape = getComponentShape(x, rootCell.y)
        g.paint = MPSColors.GRAY
        FBConnectionPathPainter.setupShadowPathPaint(g, scale(1).toFloat())
        g.draw(shape)
    }

    private fun getPortBounds(port: Port, isOutput: Boolean = false): Rectangle {
        val editablePort = port as EditablePortLabel

        val width = editablePort.label.width + scale(INNER_BORDER_PADDING)
        val y = editablePort.label.y - rootCell.y

        val x = if (isOutput) rootCell.width - width else 0

        return Rectangle(x, y, width, editablePort.label.height)
    }

    override fun getInputEventPortBounds(eventNumber: Int): Rectangle = getPortBounds(inputEventPorts[eventNumber])

    override fun getOutputEventPortBounds(eventNumber: Int): Rectangle = getPortBounds(outputEventPorts[eventNumber], true)

    override fun getInputDataPortBounds(dataNumber: Int): Rectangle = getPortBounds(inputDataPorts[dataNumber])

    override fun getOutputDataPortBounds(dataNumber: Int): Rectangle = getPortBounds(outputDataPorts[dataNumber], true)

    override fun getSocketPortBounds(socketNumber: Int): Rectangle = getPortBounds(socketPorts[socketNumber])

    override fun getPlugPortBounds(plugNumber: Int): Rectangle = getPortBounds(plugPorts[plugNumber], true)

    private fun calculateWidth(): Int {
        val typeNameRowWidth = typeNameLabel.width
        val inputsWidth = portsColumnWidth(inputPorts)
        val outputsWidth = portsColumnWidth(outputPorts)

        val regularRowsWidth = max(inputsWidth, outputsWidth) * 2 + scale(CENTER_PADDING + 2 * INNER_BORDER_PADDING)
        return (listOf(regularRowsWidth, typeNameRowWidth).maxOrNull() ?: 0) + scale(2 * INNER_BORDER_PADDING)
    }

    private fun createNameLabel(): EditorCell_Property {
        val result = EditorCell_Property(context, DeclarationNameAccessor(fbType.declaration) { !it.isNullOrEmpty() }, node)

        result.style.set(StyleAttributes.HORIZONTAL_ALIGN, CellAlign.CENTER)
        result.style.set(StyleAttributes.FONT_SIZE, fontSize)
        result.style.set(StyleAttributes.PADDING_TOP, Padding((lineSize).toDouble() / 2, Measure.PIXELS))
        result.style.set(StyleAttributes.PADDING_BOTTOM, Padding((lineSize).toDouble() / 2, Measure.PIXELS))
        return result
    }

    override fun relayout() {
        super.relayout()
        val width = calculateWidth()
        rootCell.width = width
        eventPortsContainer.width = width
        dataPortsContainer.width = width
        otherPortsContainer.width = width
        addCentralGap(width)

        buttons.values.forEach {
            addGapForButtons(width, it)
            it.height = it.cells.first().height + lineSize / 2
            it.width = width
        }
    }

    private fun addCentralGap(width: Int) {
        addCentralGap(width, outputEventPorts, eventPortsContainer)
        addCentralGap(width, outputDataPorts, dataPortsContainer)
        addCentralGap(width, plugPorts, otherPortsContainer)
    }

    private fun addCentralGap(width: Int, ports: List<Port>, container: EditorCell_Collection) {
        val right = container.cells.last()
        val gap = (width - portsColumnWidth(ports) - INNER_BORDER_PADDING)
        right.moveTo(gap, right.y)
    }

    private fun addGapForButtons(width: Int, cell: EditorCell_Collection) {
        val left = cell.cells.first()
        val right = cell.cells.last()
        right.moveTo(width - 15, right.y + cell.height - right.height)
        left.moveTo(0, left.y + cell.height - left.height)
    }

    fun getPortTemplates(view: FunctionBlockView): Set<NetworkPortView> {
        val result = mutableSetOf<NetworkPortView>()

        if (fbType.declaration is FBInterfaceDeclaration) {
            result.add(FunctionBlockPortView(view, -1, EntryKind.EVENT, true, fbType.declaration!!))
            result.add(FunctionBlockPortView(view, -1, EntryKind.EVENT, false, fbType.declaration!!))
            result.add(FunctionBlockPortView(view, -1, EntryKind.DATA, true, fbType.declaration!!))
            result.add(FunctionBlockPortView(view, -1, EntryKind.DATA, false, fbType.declaration!!))
        }

        if (fbType.declaration is FBInterfaceDeclarationWithAdapters) {
            result.add(FunctionBlockPortView(view, -1, EntryKind.ADAPTER, true, fbType.declaration!!))
            result.add(FunctionBlockPortView(view, -1, EntryKind.ADAPTER, false, fbType.declaration!!))
        }

        return result
    }

    companion object {
        private const val CENTER_PADDING = 20
        private const val INNER_BORDER_PADDING = 2
        private const val PLUS_BUTTON_SIZE = 15

        private fun portsColumnWidth(ports: Collection<Port>): Int {
            return ports.maxOfOrNull { if (it is EditablePortWithTypeAndLabel) it.cell.width else (it as EditablePortLabel).label.width }
                    ?: 0
        }
    }
}
