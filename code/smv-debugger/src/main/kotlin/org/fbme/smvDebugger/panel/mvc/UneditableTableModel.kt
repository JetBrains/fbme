package org.fbme.smvDebugger.panel.mvc

import javax.swing.table.DefaultTableModel

class UneditableTableModel(data: Array<out Array<out Any?>?>?, headers: Array<out Any?>?) :
    DefaultTableModel(data, headers) {
    override fun isCellEditable(rowIndex: Int, columnIndex: Int): Boolean {
        return false
    }
}
