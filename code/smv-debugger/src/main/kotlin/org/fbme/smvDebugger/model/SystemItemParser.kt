package org.fbme.smvDebugger.model

import org.fbme.smvDebugger.commons.ArrayUtils

class SystemItemParser {
    fun parse(fullName: String): SystemItem? {
        val nameParts = fullName.split(Regex(FULL_NAME_DELIMITER)).toTypedArray()
        val type: SystemItemType = if (isEventPort(nameParts)) {
            SystemItemType.EVENT_PORT
        } else if (isDataPort(nameParts)) {
            SystemItemType.DATA_PORT
        } else if (isECC(nameParts)) {
            SystemItemType.ECC
        } else {
            return null
        }
        val fbNames = getFbNames(nameParts)
        if (fbNames.isEmpty()) {
            return null
        }
        val itemName = getItemName(nameParts, type)
        return SystemItem(fullName, fbNames, itemName, type)
    }

    private fun isEventPort(nameParts: Array<String>): Boolean {
        return isPort(nameParts) && nameParts[nameParts.size - 1].contains(EVENT_PORT_KEY_FEATURE)
    }

    private fun isDataPort(nameParts: Array<String>): Boolean {
        return isPort(nameParts) && !isEventPort(nameParts)
    }

    private fun isECC(nameParts: Array<String>): Boolean {
        return nameParts[nameParts.size - 1] == ECC_KEY_FEATURE
    }

    private fun isPort(nameParts: Array<String>): Boolean {
        return nameParts.size > 1 && !isECC(nameParts)
    }

    private fun getFbNames(nameParts: Array<String>): Array<String> {
        return ArrayUtils.subarray(nameParts, 1, nameParts.size - 1)
    }

    private fun getItemName(nameParts: Array<String>, type: SystemItemType): String {
        return when (type) {
            SystemItemType.EVENT_PORT -> nameParts[nameParts.size - 1]
                .split(EVENT_PORT_DELIMITER)
                .toTypedArray()[1]

            SystemItemType.DATA_PORT -> nameParts[nameParts.size - 1]
            SystemItemType.ECC -> ECC_ITEM_NAME
        }
    }

    companion object {
        private const val FULL_NAME_DELIMITER = "[.]"
        private const val EVENT_PORT_DELIMITER = "_"
        private const val TIME_EVENT_PORT_VALUE = "value"
        private const val EVENT_PORT_KEY_FEATURE = "event"
        private const val ECC_KEY_FEATURE = "Q_smv"
        private const val ECC_ITEM_NAME = "ECC"
    }
}
