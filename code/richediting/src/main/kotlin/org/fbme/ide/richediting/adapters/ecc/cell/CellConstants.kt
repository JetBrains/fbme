package org.fbme.ide.richediting.adapters.ecc.cell

import java.awt.Color

object CellConstants {
    @JvmField
    val ALGORITHM_COLOR = Color(199, 222, 193)

    @JvmField
    val HIDDEN_ALGORITHM_COLOR = Color(154, 167, 150)

    @JvmField
    val STATE_COLOR = Color(196, 215, 233)

    @JvmField
    val HIDDEN_STATE_COLOR = Color(141, 170, 197)

    @JvmField
    val OUTPUT_COLOR = Color(235, 221, 185)
    const val ACTIVE_HEIGHT_PADDING = 6
    const val ACTIVE_WEIGHT_PADDING = 10
    const val LEFT_ALGORITHM_BODY_PADDING = 5
    const val BOTTOM_PADDING = 5
    const val ROUNDED = 10
    const val SHIFT_X = ACTIVE_WEIGHT_PADDING / 2
    const val SHIFT_Y = -2
}
