package org.fbme.ide.richediting.inspections

import jetbrains.mps.nodeEditor.MPSColors
import java.awt.Color

class Inspection @JvmOverloads constructor(
    val text: String,
    val color: Color = MPSColors.GRAY,
    val bold: Boolean = false
)