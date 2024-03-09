package org.fbme.spinDebugger.fb2spin

import org.fbme.lib.iec61499.declarations.CompositeFBTypeDeclaration
import org.fbme.smvDebugger.fb2smv.AbstractConverters.AbstractCompositeFBConverter
import org.fbme.smvDebugger.fb2smv.AbstractConverters.VerifiersData

class SPINCompositeFBConverter(private val data: VerifiersData): AbstractCompositeFBConverter{
    override fun generateFBsInstances(fbc: CompositeFBTypeDeclaration, buf: StringBuilder) {
        TODO("Not yet implemented")
    }

    override fun generateCompositeFBsVariables(fbc: CompositeFBTypeDeclaration, buf: StringBuilder) {
        TODO("Not yet implemented")
    }

    override fun generateInternalDataConnections(fbc: CompositeFBTypeDeclaration, buf: StringBuilder) {
        TODO("Not yet implemented")
    }

    override fun generateInnerFBsEventOutputsUpdate(fbc: CompositeFBTypeDeclaration, buf: StringBuilder) {
        TODO("Not yet implemented")
    }

    override fun generateDispatcher(fbc: CompositeFBTypeDeclaration, buf: StringBuilder) {
        TODO("Not yet implemented")
    }

    override fun generateInternalEventConnections(fbc: CompositeFBTypeDeclaration, buf: StringBuilder) {
        TODO("Not yet implemented")
    }

    override fun generateFooter(fbc: CompositeFBTypeDeclaration, buf: StringBuilder) {
        TODO("Not yet implemented")
    }

    override fun generateSignature(fbc: CompositeFBTypeDeclaration, buf: StringBuilder) {
        TODO("Not yet implemented")
    }
}