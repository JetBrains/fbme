package org.fbme.smvDebugger.model

import java.util.*

class SystemItemValue(val item: SystemItem, val value: String?) {
    override fun equals(o: Any?): Boolean {
        if (this === o) {
            return true
        }
        if (o == null || javaClass != o.javaClass) {
            return false
        }
        val itemValue = o as SystemItemValue
        return item == itemValue.item && value == itemValue.value
    }

    override fun hashCode(): Int {
        return Objects.hash(item, value)
    }
}