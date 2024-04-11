package org.fbme.spinDebugger.fb2spin

import org.fbme.lib.iec61499.declarations.CompositeFBTypeDeclaration
import org.fbme.lib.iec61499.descriptors.FBTypeDescriptor
import org.fbme.smvDebugger.fb2smv.AbstractConverters.AbstractCompositeFBConverter
import org.fbme.smvDebugger.fb2smv.AbstractConverters.VerifiersData

class SPINCompositeFBConverter(d: VerifiersData, b: StringBuilder, f: FBTypeDescriptor): AbstractSPINFBConverter(d, b, f) {
    fun generateDispatch() {

    }

    fun generateReadComponentEventOutputs() {

    }
}