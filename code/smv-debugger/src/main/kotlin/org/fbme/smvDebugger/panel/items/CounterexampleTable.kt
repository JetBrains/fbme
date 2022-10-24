package org.fbme.smvDebugger.panel.items

import com.intellij.ui.components.JBPanel
import com.intellij.ui.components.JBScrollBar
import com.intellij.ui.components.JBScrollPane
import com.intellij.ui.table.JBTable
import org.fbme.smvDebugger.model.Counterexample
import org.fbme.smvDebugger.panel.mvc.DebugPanelMVCItem
import org.fbme.smvDebugger.panel.mvc.DebugPanelModel
import org.fbme.smvDebugger.panel.mvc.StepIndexModel
import org.fbme.smvDebugger.visualization.BacktraceService
import org.fbme.smvDebugger.visualization.SystemHighlighter
import java.awt.Dimension
import java.beans.PropertyChangeEvent
import javax.swing.JScrollBar
import javax.swing.JScrollPane
import javax.swing.JTable
import javax.swing.ScrollPaneConstants
import javax.swing.event.ListSelectionEvent

class CounterexampleTable(
    private val counterexample: Counterexample?,
    private val systemHighlighter: SystemHighlighter,
    private val backtraceService: BacktraceService
) : JBPanel<CounterexampleTable>(), DebugPanelMVCItem {
    private val valueTable = HighlightedTable()
    private val itemTable: JTable = JBTable()
    private val horizontalScrollBar: JScrollBar = JBScrollBar(JScrollBar.HORIZONTAL)
    private val scrollPane: JScrollPane = JBScrollPane()
    private var model: DebugPanelModel? = null
    override fun setPanelModel(model: DebugPanelModel) {
        this.model = model
        valueTable.model = model.valueModel
        valueTable.selectionModel = model.dataSelectionModel
        itemTable.model = model.itemModel
        horizontalScrollBar.model = model.dataScrollModel
    }

    override fun initView() {
        valueTable.autoCreateColumnsFromModel = false
        valueTable.autoResizeMode = JTable.AUTO_RESIZE_OFF
        val mainTableColumnModel = valueTable.columnModel
        for (i in 0 until mainTableColumnModel.columnCount) {
            mainTableColumnModel.getColumn(i).preferredWidth = COLUMN_WIDTH
        }
        valueTable.cellSelectionEnabled = true
        itemTable.autoCreateColumnsFromModel = false
        itemTable.autoResizeMode = JTable.AUTO_RESIZE_OFF
        itemTable.columnModel.getColumn(0).preferredWidth = FIRST_COLUMN_WIDTH
        itemTable.preferredScrollableViewportSize = itemTable.preferredSize
        itemTable.cellSelectionEnabled = true
        scrollPane.setViewportView(valueTable)
        scrollPane.horizontalScrollBar = horizontalScrollBar
        scrollPane.setRowHeaderView(itemTable)
        scrollPane.setCorner(JScrollPane.UPPER_LEFT_CORNER, itemTable.tableHeader)
        scrollPane.horizontalScrollBarPolicy = ScrollPaneConstants.HORIZONTAL_SCROLLBAR_ALWAYS
        scrollPane.verticalScrollBarPolicy = ScrollPaneConstants.VERTICAL_SCROLLBAR_ALWAYS
        scrollPane.preferredSize =
            Dimension(SCROLL_PANE_WIDTH, SCROLL_PANE_HEIGHT)
        add(scrollPane)
    }

    override fun initController() {
        valueTable.selectionModel.addListSelectionListener { event: ListSelectionEvent? ->
            val itemIndex = valueTable.selectedRow
            val stepIndex = valueTable.selectedColumn
            val itemValue = counterexample!!.getItemValue(itemIndex, stepIndex)
            val relatedItemSimpleNames = backtraceService.getRelatedItemSimpleNames(itemValue)
            val relatedItems = counterexample.getItemValues(relatedItemSimpleNames, stepIndex)
            systemHighlighter.highlight(relatedItems)
        }
        model!!.stepIndexModel
            .addPropertyChangeListener(StepIndexModel.STEP_INDEX) { event: PropertyChangeEvent ->
                val stepIndex = event.newValue as Int
                valueTable.setCurrentColumnIndex(stepIndex)
                valueTable.repaint()
            }
    }

    companion object {
        private const val COLUMN_WIDTH = 80
        private const val FIRST_COLUMN_WIDTH = 160
        private const val SCROLL_PANE_WIDTH = 480
        private const val SCROLL_PANE_HEIGHT = 360
    }
}
