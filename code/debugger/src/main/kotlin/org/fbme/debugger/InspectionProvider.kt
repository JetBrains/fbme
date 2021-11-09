package org.fbme.debugger

import jetbrains.mps.nodeEditor.MPSColors
import java.awt.Color

interface InspectionProvider {
    fun setInspection(value: String, valueColor: Color = MPSColors.GRAY)
}