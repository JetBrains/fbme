package org.fbme.debugger.ui.colors

import androidx.compose.ui.graphics.Color

val Color.awt: java.awt.Color
    get() = java.awt.Color(red, green, blue, alpha)

val java.awt.Color.compose: Color
    get() = Color(red, green, blue, alpha)