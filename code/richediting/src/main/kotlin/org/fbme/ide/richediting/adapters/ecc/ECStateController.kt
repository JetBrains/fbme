package org.fbme.ide.richediting.adapters.ecc

import jetbrains.mps.editor.runtime.TextBuilderImpl
import jetbrains.mps.nodeEditor.cellLayout.AbstractCellLayout
import jetbrains.mps.nodeEditor.cells.EditorCell
import jetbrains.mps.nodeEditor.cells.EditorCell_Collection
import jetbrains.mps.openapi.editor.EditorContext
import jetbrains.mps.openapi.editor.TextBuilder
import org.fbme.ide.iec61499.repository.PlatformElement
import org.fbme.ide.richediting.adapters.ecc.cell.*
import org.fbme.ide.richediting.editor.RichEditorStyleAttributes
import org.fbme.lib.common.StringIdentifier
import org.fbme.lib.iec61499.declarations.AlgorithmBody
import org.fbme.lib.iec61499.declarations.AlgorithmDeclaration
import org.fbme.lib.iec61499.declarations.AlgorithmLanguage
import org.fbme.lib.iec61499.ecc.StateAction
import org.fbme.lib.iec61499.ecc.StateDeclaration
import org.fbme.scenes.cells.EditorCell_Scene
import org.fbme.scenes.controllers.LayoutUtil.getLineSize
import org.fbme.scenes.controllers.components.ComponentController
import org.jetbrains.mps.openapi.model.SNode
import java.awt.*
import java.util.function.Function
import java.util.stream.Collectors

class ECStateController(
    scene: EditorCell_Scene,
    private val context: EditorContext,
    private val state: StateDeclaration,
    val isEditable: Boolean = true
) : ComponentController<Point> {
    private val stateNameCell: StateCell
    private val node: SNode
    private val cellCollection: EditorCell_Collection
    private val stateActionBlocks: MutableList<ActionBlock>
    private var isOpenAlgorithmBody: MutableMap<StateAction, Boolean>
    private var isOpenActions: MutableMap<StateDeclaration, Boolean>

    fun relayout() {
        stateNameCell.relayout()
        var width = stateNameCell.width
        var height = lineSize
        for (block in stateActionBlocks) {
            block.relayout()
            width = block.newWidth(width)
            height += block.getHeight(PADDING)
        }
        cellCollection.width = width + CellConstants.ACTIVE_WEIGHT_PADDING
        cellCollection.height = height + 7
        stateNameCell.width = width
        for (block in stateActionBlocks) {
            block.setWidth(width)
        }
        val dx = cellCollection.x + width / 2 - stateNameCell.width / 2
        stateNameCell.moveTo(dx, cellCollection.y)
        var currentHeight = stateNameCell.height + PADDING
        for (actionBlock in stateActionBlocks) {
            val dy = cellCollection.y
            currentHeight = actionBlock.moveTo(dx, dy, PADDING, currentHeight)
        }
    }

    private val lineSize: Int
        get() = getLineSize(cellCollection.style)

    override fun canStartMoveAt(position: Point, x: Int, y: Int): Boolean {
        return isEditable
    }

    override val componentCell: EditorCell
        get() = cellCollection

    override fun getBounds(position: Point): Rectangle {
        return Rectangle(position.x, position.y, cellCollection.width, cellCollection.height)
    }

    override fun translateForm(originalPosition: Point, dx: Int, dy: Int): Point {
        val point = Point(originalPosition)
        point.translate(dx, dy)
        for (it in stateActionBlocks) {
            val algo = it.algorithm
            val body = algo.algorithmBody ?: continue
            for (cell in body.cells) {
                val shiftPoint = algo.algorithmBodyPoint
                cell.moveTo(shiftPoint.x, shiftPoint.y)
            }
        }
        return point
    }

    override fun transformFormAt(originalForm: Point, x: Int, y: Int): Function<Point, Point> {
        return Function { it }
    }

    override fun updateCellWithForm(position: Point) {
        cellCollection.moveTo(position.x, position.y)
        cellCollection.relayout()
    }

    override fun updateCellSelection(selected: Boolean) {
        // do nothing
    }

    override fun paintTrace(g: Graphics?, position: Point) {
        (g as Graphics2D?)!!.stroke =
            BasicStroke(1f, BasicStroke.CAP_BUTT, BasicStroke.JOIN_MITER, 3F, floatArrayOf(3f), 3F)
        g!!.draw(getBounds(position))
    }

    private fun createRootCell(
        context: EditorContext,
        node: SNode
    ): EditorCell_Collection {
        return EditorCell_Collection(context, node, object : AbstractCellLayout() {
            override fun doLayout(cells: jetbrains.mps.openapi.editor.cells.EditorCell_Collection) {
                assert(cells === cellCollection)
                relayout()
            }

            override fun doLayoutText(p0: MutableIterable<jetbrains.mps.openapi.editor.cells.EditorCell>): TextBuilder {
                return TextBuilderImpl()
            }
        })
    }

    private fun initializeActions() {
        val isOpenActionBlock = isOpenActions.getOrDefault(state, true)
        if (!isOpenActionBlock) {
            return
        }
        for (action in state.actions) {
            val isOpenBody = isOpenAlgorithmBody.getOrDefault(action, true)
            val algorithmDeclaration = action.algorithm.getTarget()
            var algorithmCell: AlgorithmCell?
            if (algorithmDeclaration != null) {
                val algorithmNode = (algorithmDeclaration.body as? PlatformElement)?.node
                val bodyCell = context.editorComponent.updater.currentUpdateSession.updateChildNodeCell(algorithmNode)
                isOpenAlgorithmBody.putIfAbsent(action, true)
                algorithmCell = AlgorithmCell.createAlgorithmCell(
                    context,
                    algorithmDeclaration,
                    node,
                    action,
                    cellCollection,
                    bodyCell as EditorCell_Collection,
                    isOpenAlgorithmBody
                )
                cellCollection.addEditorCell(algorithmCell)
                if (isOpenBody) {
                    cellCollection.addEditorCell(bodyCell)
                }
            } else {
                algorithmCell = AlgorithmCell.createAlgorithmCell(
                    context,
                    algorithmDeclaration,
                    node,
                    action,
                    cellCollection,
                    null,
                    isOpenAlgorithmBody
                )
                cellCollection.addEditorCell(algorithmCell)
            }
            val outputCell = OutputCell(context, node, action, cellCollection, isOpenAlgorithmBody)
            cellCollection.addEditorCell(outputCell)
            stateActionBlocks.add(ActionBlock(algorithmCell, outputCell, action))
        }
    }

    companion object {
        const val PADDING = 2

        @JvmStatic
        fun removeActionWithState(
            action: StateAction?,
            collection: EditorCell_Collection
        ) {
            val declaration = collection.style.get(RichEditorStyleAttributes.STATE_DECLARATION)
            val context = collection.style.get(RichEditorStyleAttributes.EDITOR_CONTEXT)
            declaration!!.actions.remove(action)
            context!!.editorComponent.updater.update()
        }

        @JvmStatic
        fun addAction(collection: EditorCell_Collection) {
            val declaration = collection.style.get(RichEditorStyleAttributes.STATE_DECLARATION)
            declaration!!.actions.add(createEmptyAction(collection))
        }

        @JvmStatic
        fun addNewAlgorithm(collection: EditorCell_Collection, action: StateAction) {
            val prefixName = "NewAlgorithm"
            val factory = collection.style.get(RichEditorStyleAttributes.FACTORY_DECLARATION)
            val allAlgorithms = collection.style.get(RichEditorStyleAttributes.ALL_ALGORITHMS)
            val allAlgorithmNames = allAlgorithms!!.stream().map { obj: AlgorithmDeclaration? -> obj!!.name }
                .collect(Collectors.toList())
            val number = allAlgorithmNames.stream()
                .filter { it.startsWith(prefixName) && it.length > prefixName.length }
                .map { it.substring(prefixName.length) }
                .filter { it.matches(Regex("^[0-9]+$")) }
                .mapToInt { s: String -> s.toInt() }
                .max()
                .orElse(0)
            val algorithmName = prefixName + (number + 1)
            val algorithmDeclaration = factory!!.createAlgorithmDeclaration(StringIdentifier(algorithmName))
            algorithmDeclaration.name = algorithmName
            val body: AlgorithmBody = factory.createAlgorithmBody(AlgorithmLanguage.ST)
            algorithmDeclaration.body = body
            allAlgorithms.add(algorithmDeclaration)
            action.algorithm.setTarget(algorithmDeclaration)
        }

        @JvmStatic
        fun setAlgorithmToNone(cell: AlgorithmCell) {
            val collection = cell.style.get(RichEditorStyleAttributes.STATE_COLLECTION)
            val stateAction = cell.style.get(RichEditorStyleAttributes.ALGORITHMS)
            val context = collection!!.style.get(RichEditorStyleAttributes.EDITOR_CONTEXT)
            val newStateAction = createEmptyAction(collection)
            val outputDeclaration = stateAction!!.event.getTarget()
            if (outputDeclaration != null) {
                newStateAction.event.setTarget(outputDeclaration)
            }
            val stateDeclaration = collection.style.get(RichEditorStyleAttributes.STATE_DECLARATION)
            val indexInArray = stateDeclaration!!.actions.indexOf(stateAction)
            stateDeclaration.actions[indexInArray] = newStateAction
            context!!.editorComponent.updater.update()
        }

        @JvmStatic
        fun setOutputToNone(cell: OutputCell) {
            val collection = cell.style.get(RichEditorStyleAttributes.STATE_COLLECTION)
            val stateAction = cell.style.get(RichEditorStyleAttributes.OUTPUTS)
            val context = collection!!.style.get(RichEditorStyleAttributes.EDITOR_CONTEXT)
            val newStateAction = createEmptyAction(collection)
            val algorithmDeclaration = stateAction!!.algorithm.getTarget()
            if (algorithmDeclaration != null) {
                newStateAction.algorithm.setTarget(algorithmDeclaration)
            }
            val isOpenAlgorithmBody = cell.isOpenAlgorithmBody
            val status = isOpenAlgorithmBody.getOrDefault(stateAction, true)
            isOpenAlgorithmBody.remove(stateAction)
            isOpenAlgorithmBody[newStateAction] = status
            val stateDeclaration = collection.style.get(RichEditorStyleAttributes.STATE_DECLARATION)
            val indexInArray = stateDeclaration!!.actions.indexOf(stateAction)
            stateDeclaration.actions[indexInArray] = newStateAction
            context!!.editorComponent.updater.update()
        }

        private fun createEmptyAction(cell: EditorCell_Collection?): StateAction {
            val iec61499Factory = cell!!.style.get(RichEditorStyleAttributes.FACTORY_DECLARATION)
            return iec61499Factory!!.createStateAction()
        }
    }

    init {
        stateActionBlocks = ArrayList()
        node = (state as PlatformElement).node
        isOpenAlgorithmBody = scene.loadState(ECCEditors.IS_OPEN_ALGORITHM_BODY) ?: mutableMapOf()
        isOpenActions = scene.loadState(ECCEditors.IS_OPEN_ACTIONS) ?: mutableMapOf()
        cellCollection = createRootCell(context, node)
        stateNameCell = StateCell.createStateCell(context, node, state, cellCollection, isOpenActions)
        cellCollection.addEditorCell(stateNameCell)
        initializeActions()
        scene.storeState(ECCEditors.IS_OPEN_ALGORITHM_BODY, isOpenAlgorithmBody)
        scene.storeState(ECCEditors.IS_OPEN_ACTIONS, isOpenActions)
        cellCollection.isBig = true
        cellCollection.style.set(RichEditorStyleAttributes.ACTIONS, stateActionBlocks)
        cellCollection.style.set(RichEditorStyleAttributes.STATE_DECLARATION, state)
        cellCollection.style.set(RichEditorStyleAttributes.EDITOR_CONTEXT, context)
        relayout()
    }
}