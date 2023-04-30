package org.fbme.lib.st.types

object DataTypeUtil {
    fun getBasicTypes(): List<DataType> {
        return listOf(*GenericType.values(), *ElementaryType.values())
    }
}