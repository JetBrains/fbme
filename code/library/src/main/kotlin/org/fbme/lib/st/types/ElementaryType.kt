package org.fbme.lib.st.types

enum class ElementaryType : DataType {
    BOOL, BYTE, DT, DWORD, DATE_AND_TIME, DATE, DINT, INT, LINT, SINT, UDINT, UINT, ULINT, USINT, LREAL, LWORD, REAL, STRING, TOD, TIME_OF_DAY, TIME, WSTRING, WORD;

    override fun stringify(): String {
        return "" + this
    }
}
