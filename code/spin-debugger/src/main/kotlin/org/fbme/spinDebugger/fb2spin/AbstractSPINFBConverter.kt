package org.fbme.spinDebugger.fb2spin

import arrow.core.memoize
import arrow.core.partially1
import arrow.core.partially2
import org.fbme.lib.iec61499.descriptors.FBTypeDescriptor
import org.fbme.smvDebugger.fb2smv.AbstractConverters.VerifiersData
import org.fbme.spinDebugger.utils.NEW_LINE
import org.fbme.spinDebugger.utils.TAB
import org.fbme.spinDebugger.utils.appendPreSuf

open class AbstractSPINFBConverter(protected val data: VerifiersData, protected var buf: StringBuilder, protected var fb: FBTypeDescriptor) {
    private val _appendXTAB: (Int) -> () -> Unit = { i: Int ->
        val tabs = TAB.repeat(i);
        {
            buf.append(tabs)
        }
    }

    val appendNewLine = {
        buf.append(NEW_LINE)
    }

    val appendXTAB = _appendXTAB.memoize()

    fun appendXTABNewLineBody(i: Int, body : StringBuilder.() -> Unit) {
        appendXTAB(i)
        buf.body()
        appendNewLine()
    }

    fun appendXTABNewLineConst(i: Int, str : String) = appendXTABNewLineBody(i) {
        append(str)
    }
}