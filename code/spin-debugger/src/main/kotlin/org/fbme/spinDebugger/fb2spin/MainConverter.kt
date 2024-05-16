package org.fbme.spinDebugger.fb2spin

import org.fbme.smvDebugger.fb2smv.AbstractConverters.VerifiersData

class MainConverter(d: VerifiersData,
                    b: StringBuilder
): AbstractSPINFBConverter(d, b) {
    override fun convert() {
        buf.appendXTABNewLineConst(0, "init {")
        buf.appendXTABNewLineConst(1, "int lastpid;")

    }
}