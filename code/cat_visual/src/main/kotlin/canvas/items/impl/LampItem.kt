package canvas.items.impl

import androidx.compose.foundation.background
import androidx.compose.foundation.border
import androidx.compose.foundation.clickable
import androidx.compose.foundation.layout.wrapContentSize
import androidx.compose.foundation.shape.CircleShape
import androidx.compose.material.Text
import androidx.compose.runtime.Composable
import androidx.compose.runtime.mutableStateOf
import androidx.compose.runtime.remember
import androidx.compose.ui.Modifier
import androidx.compose.ui.focus.FocusRequester
import androidx.compose.ui.graphics.Color
import androidx.compose.ui.platform.LocalDensity
import androidx.compose.ui.unit.dp
import canvas.items.Draggable
import canvas.items.interfaces.CanvasItemInterface
import canvas.items.interfaces.Focusable
import canvas.items.model.Input
import canvas.items.model.Output
import canvas.items.model.figures.Round
import connection.AbstractClient
import connection.field.ConnectionField
import lib.elements.DARK_RADIAL_BRUSH
import lib.elements.LIGHT_RADIAL_BRUSH
import lib.elements.METALLIC_BRUSH
import java.util.*

class LampItem(
    override val id: UUID = UUID.randomUUID(),
    override var x: Float = 0f,
    override var y: Float = 0f,
    override val modifier: Modifier = Modifier,
    override val client: AbstractClient,
): AbstractItem(
    x = x,
    y = y,
    modifier = modifier,
    inputs = listOf(),
    outputs = listOf(),
    client = client,
), Draggable, Focusable {

    override val type = CanvasItemInterface.Type.LAMP

    @Composable
    override fun getContent(deleteCurrentItem: (String) -> Unit) {
        val isLighting = remember { mutableStateOf(false) }
        val localDensity = LocalDensity.current
        val xPosition = remember { mutableStateOf(x) }
        val yPosition = remember { mutableStateOf(y) }
        val focusRequester = remember { FocusRequester() }
        val color = remember { mutableStateOf(Color.Black) }
        Round(
            modifier = modifier
                .makeDraggable(localDensity, xPosition, yPosition)
                .makeFocusable(focusRequester, color)
                .background(brush = if (isLighting.value) LIGHT_RADIAL_BRUSH else DARK_RADIAL_BRUSH)
                .border(width = 10.dp, brush = METALLIC_BRUSH, shape = CircleShape)
                .clickable {
                    isLighting.value = if (isLighting.value) false else true
                    println("${xPosition.value} : ${yPosition.value}")
                }
                .wrapContentSize(),
            height = 60.dp,
            width = 60.dp,
        )
        x = xPosition.value
        y = yPosition.value
    }
}