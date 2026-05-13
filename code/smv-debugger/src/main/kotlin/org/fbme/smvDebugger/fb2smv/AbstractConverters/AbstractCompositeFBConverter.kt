package org.fbme.smvDebugger.fb2smv.AbstractConverters

import org.fbme.lib.iec61499.declarations.CompositeFBTypeDeclaration

interface AbstractCompositeFBConverter {
    fun generateFBsInstances(fbc: CompositeFBTypeDeclaration, buf: StringBuilder)
    fun generateCompositeFBsVariables(fbc: CompositeFBTypeDeclaration, buf: StringBuilder)
    fun generateInternalDataConnections(fbc: CompositeFBTypeDeclaration, buf: StringBuilder)
    fun generateInnerFBsEventOutputsUpdate(fbc: CompositeFBTypeDeclaration, buf: StringBuilder)
    fun generateDispatcher(fbc: CompositeFBTypeDeclaration, buf: StringBuilder)
    fun generateInternalEventConnections(fbc: CompositeFBTypeDeclaration, buf: StringBuilder)
    fun generateFooter(fbc: CompositeFBTypeDeclaration, buf: StringBuilder)
    fun generateSignature(fbc: CompositeFBTypeDeclaration, buf: StringBuilder)
}