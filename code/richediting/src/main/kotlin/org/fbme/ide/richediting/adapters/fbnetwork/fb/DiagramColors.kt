package org.fbme.ide.richediting.adapters.fbnetwork.fb

import jetbrains.mps.nodeEditor.MPSColors
import org.fbme.lib.iec61499.fbnetwork.EntryKind
import java.awt.Color
import java.awt.GradientPaint
import java.awt.Paint
import java.awt.geom.Rectangle2D
import kotlin.math.max
import kotlin.math.min

object DiagramColors {

    @JvmField
    val EVENT = Color(0x66BBEE)

    @JvmField
    val DATA: Color = MPSColors.GRAY

    @JvmField
    val ADAPTER = Color(0xEE8822)

    @JvmField
    val EVENT_RO = Color(0x88AACC)

    @JvmField
    val DATA_RO: Color = MPSColors.LIGHT_GRAY

    @JvmField
    val ADAPTER_RO = Color(0xCCAA88)

    private const val VARIANCE = 0.25f

    fun getColorFor(kind: EntryKind): Color {
        return getColorFor(kind, true)
    }

    @JvmStatic
    fun getColorFor(kind: EntryKind, editable: Boolean): Color = when (kind) {
        EntryKind.ADAPTER -> if (editable) ADAPTER else ADAPTER_RO
        EntryKind.EVENT -> if (editable) EVENT else EVENT_RO
        EntryKind.DATA -> if (editable) DATA else DATA_RO
    }

    @JvmStatic
    fun createGradientPaint(color: Color, bounds: Rectangle2D): Paint {
        var centerBrightness = getBrightness(color)
        centerBrightness = min(max(centerBrightness, VARIANCE), 1.0f - VARIANCE)
        val color1 = setBrightness(color, centerBrightness + VARIANCE)
        val color2 = setBrightness(color, centerBrightness - VARIANCE)
        return GradientPaint(
            bounds.minX.toFloat(),
            bounds.minY.toFloat(),
            color1,
            bounds.maxX.toFloat(),
            bounds.maxY
                .toFloat(),
            color2,
            false
        )
    }

    private fun getBrightness(c: Color): Float {
        val hsb = FloatArray(3)
        Color.RGBtoHSB(c.red, c.green, c.blue, hsb)
        return hsb[2]
    }

    private fun setBrightness(c: Color, brightness: Float): Color {
        var validBrightness = brightness
        val hsb = FloatArray(3)
        Color.RGBtoHSB(c.red, c.green, c.blue, hsb)
        if (validBrightness < 0.0f) {
            validBrightness = 0.0f
        }
        if (validBrightness > 1.0f) {
            validBrightness = 1.0f
        }
        return Color(Color.HSBtoRGB(hsb[0], hsb[1], validBrightness))
    }
}
