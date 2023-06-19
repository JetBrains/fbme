package org.fbme.lib.st.types

interface DataType {
    fun stringify(): String

    companion object {
        @JvmStatic
        fun getAllValues(): List<DataType> {
            return listOf(*GenericType.values(), *ElementaryType.values())
        }
    }
}
