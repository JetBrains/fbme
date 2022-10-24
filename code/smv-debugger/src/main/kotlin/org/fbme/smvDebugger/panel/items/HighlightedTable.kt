package org.fbme.smvDebugger.panel.items

import com.intellij.ui.JBColor
import com.intellij.ui.table.JBTable
import java.awt.Color
import java.awt.Component
import javax.swing.table.TableCellRenderer

class HighlightedTable : JBTable() {
    private var currentColumnIndex = 0
    fun setCurrentColumnIndex(currentColumnIndex: Int) {
        this.currentColumnIndex = currentColumnIndex
    }

    override fun prepareRenderer(renderer: TableCellRenderer, rowIndex: Int, columnIndex: Int): Component {
        val component = super.prepareRenderer(renderer, rowIndex, columnIndex)
        if (component.background != getSelectionBackground()) {
            var color = DEFAULT_CELL_COLOR
            if (columnIndex == currentColumnIndex) {
                color = CURRENT_COLUMN_COLOR
            }
            if (columnIndex > 1) {
                val curValue = getValueAt(rowIndex, columnIndex) as String
                val prevValue = getValueAt(rowIndex, columnIndex - 1) as String
                if (curValue != prevValue) {
                    color = HIGHLIGHT_CELL_COLOR
                }
            }
            component.background = color
        }
        return component
    }

    companion object {
        private val DEFAULT_CELL_COLOR: Color = JBColor.WHITE
        private val HIGHLIGHT_CELL_COLOR: Color = JBColor.GREEN
        private val CURRENT_COLUMN_COLOR: Color = JBColor.LIGHT_GRAY
    }
}
