package org.fbme.smvDebugger.panel.mvc

import org.fbme.smvDebugger.model.Counterexample
import org.fbme.smvDebugger.model.SystemItem
import javax.swing.*
import javax.swing.table.TableModel

class DebugPanelModel(counterexample: Counterexample?) {
    val stepIndexModel: StepIndexModel = StepIndexModel()
    val stepSpinnerModel: SpinnerModel
    val globalTimeModel: GlobalTimeModel
    val conditionModel: ConditionModel
    val itemModel: TableModel
    val valueModel: TableModel
    val dataSelectionModel: ListSelectionModel
    val dataScrollModel: BoundedRangeModel

    companion object {
        private const val FIRST_COLUMN_NAME = "Components/States"
    }

    init {
        stepSpinnerModel = SpinnerListModel(counterexample!!.steps)
        globalTimeModel = GlobalTimeModel()
        conditionModel = ConditionModel()
        val elements: Array<SystemItem> = counterexample.items
        val arr = emptyArray<Array<SystemItem>>().plus(elements)
        itemModel = UneditableTableModel(arr, arrayOf<String?>(FIRST_COLUMN_NAME))
        valueModel = UneditableTableModel(counterexample.values, counterexample.steps)
        dataSelectionModel = DefaultListSelectionModel()
        dataSelectionModel.selectionMode = ListSelectionModel.SINGLE_SELECTION
        dataScrollModel = DefaultBoundedRangeModel()
    }
}
