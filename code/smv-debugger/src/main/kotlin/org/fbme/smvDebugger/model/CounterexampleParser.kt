package org.fbme.smvDebugger.model

import java.util.*

class CounterexampleParser {
    private val itemParser = SystemItemParser()
    fun parse(lines: List<String>): Counterexample {
        val emptyHeaderAndSteps: Array<String> = lines[0].replace(STATE_TRASH_SYMBOLS.toRegex(), "").split(
            DATA_DELIMITER
        ).toTypedArray()
        val steps = emptyHeaderAndSteps.copyOfRange(1, emptyHeaderAndSteps.size)
        val items: MutableList<SystemItem> = ArrayList()
        val values: MutableList<Array<String>> = ArrayList()
        var timeValues = Array(steps.size) { "" }
        for (i in 1 until lines.size) {
            val lineData: Array<String> = lines[i].split(DATA_DELIMITER).toTypedArray()
            val fullName = lineData[0]
            val curValues = lineData.copyOfRange(1, lineData.size)
            if (fullName == Counterexample.T_GLOBAL) {
                timeValues = curValues
                continue
            }
            val item = itemParser.parse(fullName)
            if (item != null) {
                items.add(item)
                values.add(curValues)
            }
        }
        return Counterexample(items.toTypedArray(), steps, values.toTypedArray(), timeValues)
    }

    companion object {
        private const val STATE_TRASH_SYMBOLS = "-1[.]"
        private const val DATA_DELIMITER = ","
    }
}
