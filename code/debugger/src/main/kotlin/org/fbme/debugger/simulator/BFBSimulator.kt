package org.fbme.debugger.simulator

import org.fbme.lib.iec61499.declarations.BasicFBTypeDeclaration

class BFBSimulator(fbDeclaration: BasicFBTypeDeclaration) : Simulator {
    private val context = BFBContext(fbDeclaration)
    private val eccSimulator = ECCSimulator(context)

    override fun doStep() {
        eccSimulator.doStep()
    }
}