package org.fbme.ide.richediting.adapters.fbnetwork

import jetbrains.mps.editor.runtime.style.CellAlign
import jetbrains.mps.editor.runtime.style.Measure
import jetbrains.mps.editor.runtime.style.Padding
import jetbrains.mps.editor.runtime.style.StyleAttributes
import jetbrains.mps.nodeEditor.MPSColors
import jetbrains.mps.nodeEditor.cellLayout.CellLayout_Vertical
import jetbrains.mps.nodeEditor.cells.EditorCell
import jetbrains.mps.nodeEditor.cells.EditorCell_Collection
import jetbrains.mps.nodeEditor.cells.EditorCell_Property
import jetbrains.mps.nodeEditor.cells.ModelAccessor
import jetbrains.mps.openapi.editor.EditorContext
import jetbrains.mps.openapi.editor.cells.CellAction
import jetbrains.mps.openapi.editor.cells.CellActionType
import org.fbme.ide.richediting.adapters.fbnetwork.fb.FBCell
import org.fbme.ide.richediting.adapters.fbnetwork.fb.FBSceneCell
import org.fbme.ide.richediting.adapters.fbnetwork.fb.FBTypeCellComponent
import org.fbme.ide.richediting.adapters.fbnetwork.fb.FBTypeEditCellComponent
import org.fbme.ide.richediting.editor.RichEditorStyleAttributes
import org.fbme.ide.richediting.viewmodel.FunctionBlockPortView
import org.fbme.ide.richediting.viewmodel.FunctionBlockView
import org.fbme.ide.richediting.viewmodel.NetworkPortView
import org.fbme.lib.iec61499.DeclarationsScope
import org.fbme.lib.iec61499.IEC61499Factory
import org.fbme.lib.iec61499.fbnetwork.EntryKind
import org.fbme.lib.iec61499.instances.FunctionBlockInstance
import org.fbme.lib.iec61499.instances.NetworkInstance
import org.fbme.scenes.cells.EditorCell_Button
import org.fbme.scenes.cells.EditorCell_Scene
import org.fbme.scenes.cells.button.CrossButton
import org.fbme.scenes.cells.button.EditButton
import org.fbme.scenes.controllers.LayoutUtil.getLineSize
import org.fbme.scenes.controllers.components.ComponentController
import org.jetbrains.mps.openapi.model.SNode
import java.awt.*
import java.util.function.Function

class FunctionBlockController(
        context: EditorContext,
        private val view: FunctionBlockView,
        networkInstance: NetworkInstance,
        val expandedComponentsController: ExpandedComponentsController,
        val editedController: EditedComponentsController,
        iec61499Factory: IEC61499Factory,
        scope: DeclarationsScope
) : ComponentController<Point>, FBNetworkComponentController {
    private val myNameProperty: EditorCell_Property
    private val editButton: EditorCell_Button
    private val cellCollection: EditorCell_Collection
    private val isEditable: Boolean = view.isEditable
    private var fbCell: FBCell
    private val networkInstance: NetworkInstance

    override fun getFBCellBounds(position: Point): Rectangle {
        return fbCell.bounds
    }

    private fun getNameProperty(context: EditorContext, view: FunctionBlockView, node: SNode): EditorCell_Property {
        return EditorCell_Property(
                context,
                object : ModelAccessor {
                    override fun getText(): String? {
                        val name = view.component.name
                        return if (name == "") null else name
                    }

                    override fun setText(text: String) {
                        view.component.name = text
                    }

                    override fun isValidText(text: String): Boolean {
                        return true
                    }
                },
                node
        )
    }

    private fun createRootCell(context: EditorContext, node: SNode): EditorCell_Collection {
        return EditorCell_Collection(
                context,
                node,
                CellLayout_Vertical()
        )
    }

    private fun initializeFBSceneCell(editorShift: Point = Point()): FBCell {
        return FBSceneCell(
                cellCollection.context,
                view.type,
                view.associatedNode,
                false,
                networkInstance.getChild(view.component)!!,
                editorShift
        )
    }

    private fun initializeFBCell(): FBCell {
        return FBTypeCellComponent(cellCollection.context, view.type, view.associatedNode, isEditable)
    }

    private fun initializeFBEditCell(iec61499Factory: IEC61499Factory, scope: DeclarationsScope,): FBCell {
        return FBTypeEditCellComponent(cellCollection.context, view.type, view.associatedNode, iec61499Factory, scope, isEditable)
    }

    private fun getEditButton(context: EditorContext, node: SNode): EditorCell_Button {

        return EditorCell_Button(context, node, if (!editedController.isEdited(view)) EditButton(18) else CrossButton(18))
    }

    val fbInstance: FunctionBlockInstance?
        get() = networkInstance.getChild(view.component)

    override fun canStartMoveAt(form: Point, x: Int, y: Int): Boolean {
        return isEditable && fbCell.canStartMoveAt(x, y)
    }

    override fun getBounds(position: Point): Rectangle {
        return Rectangle(position.x, position.y, cellCollection.width, cellCollection.height)
    }

    override val componentCell: EditorCell
        get() = cellCollection

    override fun getPortCoordinates(port: NetworkPortView, position: Point): Point {
        val functionBlockPort = assertMine(port)
        val index = functionBlockPort.position
        val kind = functionBlockPort.kind
        val isSource = functionBlockPort.isSource
        val coordinates: Point = when (kind) {
            EntryKind.EVENT -> if (isSource) fbCell.getOutputEventPortPosition(index) else fbCell.getInputEventPortPosition(
                    index
            )

            EntryKind.DATA -> if (isSource) fbCell.getOutputDataPortPosition(index) else fbCell.getInputDataPortPosition(
                    index
            )

            EntryKind.ADAPTER -> if (isSource) fbCell.getPlugPortPosition(index) else fbCell.getSocketPortPosition(index)
            else -> error("")
        }
        coordinates.translate(position.x, position.y + getVerticalOffset())
        return coordinates
    }

    override fun getPortBounds(port: NetworkPortView, position: Point): Rectangle {
        val functionBlockPort = assertMine(port)
        val index = functionBlockPort.position
        val kind = functionBlockPort.kind
        val isSource = functionBlockPort.isSource
        val bounds: Rectangle = when (kind) {
            EntryKind.EVENT -> if (isSource) fbCell.getOutputEventPortBounds(index) else fbCell.getInputEventPortBounds(
                    index
            )

            EntryKind.DATA -> if (isSource) fbCell.getOutputDataPortBounds(index) else fbCell.getInputDataPortBounds(
                    index
            )

            EntryKind.ADAPTER -> if (isSource) fbCell.getPlugPortBounds(index) else fbCell.getSocketPortBounds(index)
            else -> error("Unknown port kind")
        }
        bounds.translate(position.x, position.y + getVerticalOffset())
        return bounds
    }

    override fun isSource(port: NetworkPortView): Boolean {
        val functionBlockPort = assertMine(port)
        return functionBlockPort.isSource
    }

    private fun assertMine(port: NetworkPortView): FunctionBlockPortView {
        require(!(port.component != view || port !is FunctionBlockPortView)) { "invalid port" }
        return port
    }

    override fun translateForm(originalForm: Point, dx: Int, dy: Int): Point {
        val position = Point(originalForm)
        position.translate(dx, dy)
        return position
    }

    override fun transformFormAt(originalForm: Point, x: Int, y: Int): Function<Point, Point> {
        return Function { it }
    }

    override fun updateCellWithForm(form: Point) {
        cellCollection.moveTo(form.x, form.y)
        cellCollection.relayout()
    }

    override fun updateCellSelection(selected: Boolean) {
        myNameProperty.style.set(StyleAttributes.FONT_STYLE, if (selected) Font.BOLD else Font.PLAIN)
        editButton.style.set(StyleAttributes.TRANSPARENT, selected)
    }

    override fun paintTrace(g: Graphics?, form: Point) {
        fbCell.paintTrace(
                g!!.create() as Graphics2D,
                form.x,
                form.y + if (fbCell is FBTypeCellComponent) getVerticalOffset() else 0
        )
    }

    private val lineSize: Int
        get() = getLineSize(cellCollection.style)

    init {
        val node = view.associatedNode
        cellCollection = createRootCell(context, node)
        cellCollection.style.set(RichEditorStyleAttributes.FB, view.component)
        cellCollection.isBig = true
        this.networkInstance = networkInstance
        //edit button
        editButton = getEditButton(context, node)
        editButton.style.set(StyleAttributes.HORIZONTAL_ALIGN, CellAlign.RIGHT)
        editButton.setAction(CellActionType.CLICK, toEditModeAction())
        editButton.style.set(
                StyleAttributes.PADDING_BOTTOM,
                Padding(EditorCell_Button.OY_OFFSET.toDouble(), Measure.PIXELS)
        )
        editButton.style.set(StyleAttributes.TRANSPARENT, true)
        cellCollection.addEditorCell(editButton)
        //name property
        myNameProperty = getNameProperty(context, view, node)
        myNameProperty.style.set(StyleAttributes.TEXT_COLOR, if (isEditable) MPSColors.BLACK else MPSColors.DARK_GRAY)
        myNameProperty.style.set(StyleAttributes.HORIZONTAL_ALIGN, CellAlign.CENTER)
        cellCollection.addEditorCell(myNameProperty)

        val isExpanded = expandedComponentsController.isExpanded(view)
        val editorShift = expandedComponentsController.getEditorShift(view)


        fbCell = if (isExpanded) initializeFBSceneCell(editorShift) else if (editedController.isEdited(view)) initializeFBEditCell(iec61499Factory, scope) else initializeFBCell()
        cellCollection.addEditorCell(fbCell.rootCell)
        fbCell.relayout()
    }

    private fun getVerticalOffset(): Int {
        return fbCell.rootCell.y - cellCollection.y
    }

    private fun toEditModeAction(): CellAction {
        return object : CellAction {
            override fun getDescriptionText(): String = "on click"

            override fun executeInCommand(): Boolean = true

            override fun canExecute(context: EditorContext): Boolean = true

            override fun execute(context: EditorContext) {
                if (editedController.isEdited(view)) editedController.removeFB(view) else editedController.addFB(view)
                context.editorComponent.updater.update()
            }
        }
    }
}
