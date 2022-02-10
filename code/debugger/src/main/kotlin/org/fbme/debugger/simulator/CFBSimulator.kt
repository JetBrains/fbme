package org.fbme.debugger.simulator

import org.fbme.lib.iec61499.declarations.CompositeFBTypeDeclaration

class CFBSimulator(fbDeclaration: CompositeFBTypeDeclaration) : Simulator {
    private val context: Context

    init {
        context = CFBContext(fbDeclaration)
    }

    override fun doStep() {
        TODO("Not yet implemented")
    }
}