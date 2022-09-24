package org.fbme.lib.st.types

enum class GenericType : DataType {
    ANY_BIT, ANY_DATE, ANY_DERIVED, ANY_ELEMENTARY, ANY_INT, ANY_MAGNITUDE, ANY_NUM, ANY_REAL, ANY_STRING, ANY;

    override fun stringify(): String {
        return "" + this
    }
}
