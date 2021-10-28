package org.fbme.smvDebugger.model

import org.fbme.smvDebugger.commons.ArrayUtils
import java.util.*

class SystemItem(val fullName: String?, val fbNames: Array<String?>?, val itemName: String?, type: SystemItemType) {
    val simpleName: String
    val type: SystemItemType
    val fbName: String?
        get() = fbNames!![fbNames.size - 1]

    override fun equals(o: Any?): Boolean {
        if (this === o) {
            return true
        }
        if (o == null || javaClass != o.javaClass) {
            return false
        }
        val item = o as SystemItem
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

    init {
        simpleName = java.lang.String.join(
            SIMPLE_NAME_DELIMITER, *ArrayUtils.concat(
                fbNames, itemName
            )
        )
        this.type = type
    }
}