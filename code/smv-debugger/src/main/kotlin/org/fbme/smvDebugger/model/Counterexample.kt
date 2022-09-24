package org.fbme.smvDebugger.model

class Counterexample(
    val items: Array<SystemItem>,
    val steps: Array<String>,
    val values: Array<Array<String>>,
    val timeValues: Array<String>
) {
    val itemSimpleNames get() = Array(items.size) { items[it].fullName }

    fun length(): Int {
        return steps.size
    }

    fun getItem(itemSimpleName: String): SystemItem? {
        for (item in items) {
            if (item.simpleName == itemSimpleName) {
                return item
            }
        }
        return null
    }

    fun getItemValue(itemIndex: Int, stepIndex: Int): SystemItemValue {
        return SystemItemValue(items[itemIndex], values[itemIndex][stepIndex])
    }

    fun getItemValue(itemSimpleName: String, stepIndex: Int): SystemItemValue? {
        for (itemIndex in items.indices) {
            val item = items[itemIndex]
            if (item.simpleName == itemSimpleName) {
                return SystemItemValue(item, values[itemIndex][stepIndex])
            }
        }
        return null
    }

    fun getItemValues(stepIndex: Int): List<SystemItemValue> {
        val itemValues: MutableList<SystemItemValue> = ArrayList()
        for (itemIndex in items.indices) {
            val item = items[itemIndex]
            itemValues.add(SystemItemValue(item, values[itemIndex][stepIndex]))
        }
        return itemValues
    }

    fun getItemValues(itemSimpleNames: List<String>, stepIndex: Int): List<SystemItemValue> {
        val itemSimpleNameSet: Set<String?> = HashSet(itemSimpleNames)
        val itemValues: MutableList<SystemItemValue> = ArrayList()
        for (itemIndex in items.indices) {
            val item = items[itemIndex]
            if (itemSimpleNameSet.contains(item.simpleName)) {
                itemValues.add(SystemItemValue(item, values[itemIndex][stepIndex]))
            }
        }
        return itemValues
    }

    fun getItemSimpleNameToValueMap(stepIndex: Int): Map<String, String> {
        val itemToValueMap: MutableMap<String, String> = HashMap()
        for (itemIndex in items.indices) {
            itemToValueMap[items[itemIndex].simpleName] = values[itemIndex][stepIndex]
        }
        return itemToValueMap
    }

    fun indexOf(step: String): Int {
        for (i in steps.indices) {
            if (steps[i] == step) {
                return i
            }
        }
        return -1
    }

    fun timeOf(stepIndex: Int): String {
        return timeValues[stepIndex]
    }

    companion object {
        const val T_GLOBAL = "TGlobal"
    }
}
