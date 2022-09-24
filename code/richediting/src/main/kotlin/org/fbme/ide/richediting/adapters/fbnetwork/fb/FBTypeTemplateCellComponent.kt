package org.fbme.ide.richediting.adapters.fbnetwork.fb

import jetbrains.mps.editor.runtime.TextBuilderImpl
import jetbrains.mps.editor.runtime.style.StyleAttributes
import jetbrains.mps.nodeEditor.MPSColors
import jetbrains.mps.nodeEditor.cellLayout.AbstractCellLayout
import jetbrains.mps.nodeEditor.cells.EditorCell_Collection
import jetbrains.mps.nodeEditor.cells.ParentSettings
import jetbrains.mps.openapi.editor.EditorContext
import jetbrains.mps.openapi.editor.TextBuilder
import jetbrains.mps.openapi.editor.cells.EditorCell
import org.fbme.lib.iec61499.descriptors.FBTypeDescriptor
import org.fbme.lib.iec61499.fbnetwork.EntryKind
import org.fbme.scenes.controllers.LayoutUtil.getLineSize
import org.jetbrains.mps.openapi.model.SNode
import java.awt.Color
import java.awt.Graphics

class FBTypeTemplateCellComponent(editorContext: EditorContext, node: SNode, private val myFBType: FBTypeDescriptor) {
    private val myFBCellComponent: FBTypeCellComponent
    val cellCollection: EditorCell_Collection
    private val myInputAssociations: MutableList<EventAssociation> = ArrayList()
    private val myOutputAssociations: MutableList<EventAssociation> = ArrayList()

    private fun createRootCell(editorContext: EditorContext, node: SNode): EditorCell_Collection {
        return object : EditorCell_Collection(
            editorContext,
            node,
            object : AbstractCellLayout() {
                override fun doLayout(cells: jetbrains.mps.openapi.editor.cells.EditorCell_Collection) {
                    assert(cells === cellCollection)
                    relayout()
                }

                override fun doLayoutText(cells: Iterable<EditorCell>): TextBuilder {
                    return TextBuilderImpl()
                }
            }
        ) {
            override fun paintContent(graphics: Graphics, settings: ParentSettings) {
                var g = graphics
                g = g.create()
                g.color = foregroundColor
                var x = x
                val y = y
                val inputAssociationPainter = EventsAssociationsPainter(myInputAssociations)
                val outputAssociationPainter = EventsAssociationsPainter(myOutputAssociations)
                inputAssociationPainter.paint(g, true, x, y)
                x += inputAssociationPainter.width
                x += myFBCellComponent.width
                outputAssociationPainter.paint(g, false, x, y)
            }
        }
    }

    fun relayout() {
        val rootCell = myFBCellComponent.rootCell
        rootCell.relayout()
        val inputsWidth: Int = EventsAssociationsPainter(myInputAssociations).width
        val outputsWidth: Int = EventsAssociationsPainter(myOutputAssociations).width
        rootCell.moveTo(cellCollection.x + inputsWidth, cellCollection.y)
        cellCollection.width = inputsWidth + myFBCellComponent.width + outputsWidth
        cellCollection.height = myFBCellComponent.height
    }

    fun init() {
        for (inputEvent in myFBType.eventInputPorts.indices) {
            val inputVariables = myFBType.getAssociatedVariablesForInputEvent(inputEvent)
            if (inputVariables.isNotEmpty()) {
                val sortedInputVariables = inputVariables.sorted()
                myInputAssociations.add(EventAssociation(inputEvent, sortedInputVariables))
            }
        }
        for (outputEvent in myFBType.eventOutputPorts.indices) {
            val outputVariables = myFBType.getAssociatedVariablesForOutputEvent(outputEvent)
            if (outputVariables.isNotEmpty()) {
                val sortedOutputVariables = outputVariables.sorted()
                myOutputAssociations.add(EventAssociation(outputEvent, sortedOutputVariables))
            }
        }
        cellCollection.height = myFBCellComponent.height
        val inputAssociationsWidth: Int = EventsAssociationsPainter(myInputAssociations).width
        val outputAssociationsWidth: Int = EventsAssociationsPainter(myOutputAssociations).width
        cellCollection.width = inputAssociationsWidth + myFBCellComponent.width + outputAssociationsWidth
    }

    class EventAssociation(val eventNumber: Int, val variableNumbers: List<Int>)

    private inner class EventsAssociationsPainter(private val associations: List<EventAssociation>) {
        private val myLineSize = getLineSize(cellCollection.style)
        private val myGapWidth = GAP_SPACES * myLineSize
        private val myAssociationsWidth: Int = associations.size * myLineSize
        val width: Int
            get() = myGapWidth + myAssociationsWidth

        fun paint(graphics: Graphics, inputPorts: Boolean, x: Int, y: Int) {
            paintLines(graphics, inputPorts, x, y)
            paintAssociations(graphics, inputPorts, x, y)
        }

        private fun paintLines(graphics: Graphics, inputPorts: Boolean, x: Int, y: Int) {
            for (i in 0 until getEventPortsCount(inputPorts)) {
                val portY = getEventPortPosition(inputPorts, i, y)
                graphics.drawLine(x, portY, x + width, portY)
            }
            for (i in 0 until getBottomPortsCount(inputPorts)) {
                val portY = getDataPortPosition(inputPorts, i, y)
                graphics.drawLine(x, portY, x + width, portY)
            }
        }

        private fun paintAssociations(graphics: Graphics, inputPorts: Boolean, x: Int, y: Int) {
            var curX = x
            curX += myGapWidth / 2
            curX += myLineSize / 2
            for (association in associations) {
                val eventNumber = association.eventNumber
                val dataNumbers = association.variableNumbers
                val lastVariableNumber = dataNumbers[dataNumbers.size - 1]
                val eventY = getEventPortPosition(inputPorts, eventNumber, y)
                graphics.drawLine(curX, eventY, curX, getDataPortPosition(inputPorts, lastVariableNumber, y))
                graphics.color = DiagramColors.getColorFor(EntryKind.EVENT)
                graphics.fillRect(curX - 2, eventY - 2, 4, 4)
                graphics.color = foregroundColor
                graphics.drawRect(curX - 2, eventY - 2, 4, 4)
                for (dataNumber in dataNumbers) {
                    val dataY = getDataPortPosition(inputPorts, dataNumber, y)
                    graphics.color = DiagramColors.getColorFor(EntryKind.DATA)
                    graphics.fillRect(curX - 2, dataY - 2, 4, 4)
                    graphics.color = foregroundColor
                    graphics.drawRect(curX - 2, dataY - 2, 4, 4)
                }
                curX += myLineSize
            }
        }

        private fun getEventPortsCount(input: Boolean): Int {
            return if (input) myFBCellComponent.inputEventPortsCount else myFBCellComponent.outputEventPortsCount
        }

        private fun getEventPortPosition(input: Boolean, number: Int, offsetY: Int): Int {
            val portPosition = if (input) {
                myFBCellComponent.getInputEventPortPosition(number)
            } else {
                myFBCellComponent.getOutputEventPortPosition(number)
            }
            return portPosition.y + offsetY
        }

        private fun getBottomPortsCount(input: Boolean): Int {
            return if (input) myFBCellComponent.inputBottomPortsCount else myFBCellComponent.outputBottomPortsCount
        }

        private fun getDataPortPosition(input: Boolean, number: Int, offsetY: Int): Int {
            val portPosition = if (input) {
                if (number >= myFBCellComponent.inputDataPortsCount) {
                    myFBCellComponent.getSocketPortPosition(number - myFBCellComponent.inputDataPortsCount)
                } else {
                    myFBCellComponent.getInputDataPortPosition(number)
                }
            } else {
                if (number >= myFBCellComponent.outputDataPortsCount) {
                    myFBCellComponent.getPlugPortPosition(number - myFBCellComponent.outputDataPortsCount)
                } else {
                    myFBCellComponent.getOutputDataPortPosition(number)
                }
            }
            return portPosition.y + offsetY
        }
    }

    private val foregroundColor: Color
        get() {
            val foreground = cellCollection.style.get(StyleAttributes.TEXT_COLOR)
            return foreground ?: MPSColors.BLACK
        }

    companion object {
        private const val GAP_SPACES = 2
    }

    init {
        cellCollection = createRootCell(editorContext, node)
        myFBCellComponent = FBTypeCellComponent(editorContext, myFBType, node, true)
        cellCollection.addEditorCell(myFBCellComponent.rootCell)
        init()
    }
}
