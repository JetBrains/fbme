package lib.elements

import androidx.compose.ui.graphics.Brush
import androidx.compose.ui.graphics.Color




val LIGHT_RADIAL_BRUSH = Brush.radialGradient(
    colors = listOf(
        Color.Yellow,
        Color(0xFFFFA500)
    )
)

val GREEN_RADIAL_BRUSH = Brush.radialGradient(
    colors = listOf(
        Color.Gray,
        Color.Yellow
    )
)

val DARK_RADIAL_BRUSH = Brush.radialGradient(
    colors = listOf(
        Color.DarkGray,
        Color.Gray
    )
)

val LIGHT_HORIZONTAL_BRUSH = Brush.horizontalGradient(
    colors = listOf(
        Color.Yellow,
        Color(0xFFA500FF)
    )
)

val DARK_HORIZONTAL_BRUSH = Brush.horizontalGradient(
    colors = listOf(
        Color.Black,
        Color.Gray
    )
)

val METALLIC_BRUSH = Brush.linearGradient(
    colors = listOf(
        Color.White,
        Color.Gray,
        Color.DarkGray
    )
)

