package org.fbme.smvDebugger.model

import java.util.*

class SystemItem(val fullName: String, val fbNames: Array<String>, val itemName: String, val type: SystemItemType) {
    val simpleName = fbNames.joinToString(separator = SIMPLE_NAME_DELIMITER) + SIMPLE_NAME_DELIMITER + itemName
    val fbName: String
        get() = fbNames[fbNames.size - 1]

    override fun equals(other: Any?): Boolean {
        if (this === other) {
            return true
        }
        if (other == null || javaClass != other.javaClass) {
            return false
        }
        val item = other as SystemItem
        return fullName == item.fullName
    }

    override fun hashCode(): Int {
        return Objects.hash(fullName)
    }

    override fun toString(): String {
        return simpleName
    }

    companion object {
        const val SIMPLE_NAME_DELIMITER = "."
    }
}
