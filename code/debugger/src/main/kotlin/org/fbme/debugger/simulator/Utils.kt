package org.fbme.debugger.simulator

import org.fbme.lib.st.types.ElementaryType

val ElementaryType.defaultValue: Value<*>
    get() = when (this) {
        ElementaryType.BOOL -> Value(false)
        ElementaryType.BYTE -> error("TODO")
        ElementaryType.DT -> error("TODO")
        ElementaryType.DWORD -> error("TODO")
        ElementaryType.DATE_AND_TIME -> error("TODO")
        ElementaryType.DATE -> error("TODO")
        ElementaryType.DINT -> error("TODO")
        ElementaryType.INT -> Value(0)
        ElementaryType.LINT -> error("TODO")
        ElementaryType.SINT -> error("TODO")
        ElementaryType.UDINT -> error("TODO")
        ElementaryType.UINT -> error("TODO")
        ElementaryType.ULINT -> error("TODO")
        ElementaryType.USINT -> error("TODO")
        ElementaryType.LREAL -> error("TODO")
        ElementaryType.LWORD -> error("TODO")
        ElementaryType.REAL -> error("TODO")
        ElementaryType.STRING -> Value("")
        ElementaryType.TOD -> error("TODO")
        ElementaryType.TIME_OF_DAY -> error("TODO")
        ElementaryType.TIME -> error("TODO")
        ElementaryType.WSTRING -> error("TODO")
        ElementaryType.WORD -> error("TODO")
    }