package org.fbme.ide.richediting.inspections

import org.fbme.lib.iec61499.ecc.StateTransition
import java.awt.Color

interface ECCInspector {
    fun highlightTransition(transition: StateTransition, color: Color?)
    fun clear()
}