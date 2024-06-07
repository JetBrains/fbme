package canvas.items.impl

import androidx.compose.foundation.background
import androidx.compose.foundation.border
import androidx.compose.foundation.clickable
import androidx.compose.foundation.layout.*
import androidx.compose.foundation.shape.CircleShape
import androidx.compose.material.DropdownMenu
import androidx.compose.material.DropdownMenuItem
import androidx.compose.material.Switch
import androidx.compose.material.Text
import androidx.compose.runtime.*
import androidx.compose.ui.Modifier
import androidx.compose.ui.draw.clip
import androidx.compose.ui.focus.FocusRequester
import androidx.compose.ui.graphics.Color
import androidx.compose.ui.graphics.RectangleShape
import androidx.compose.ui.platform.LocalDensity
import androidx.compose.ui.unit.dp
import androidx.compose.ui.unit.sp
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
        var connectMenu by remember { mutableStateOf( false) }
        var expandedDropDownMenu by remember { mutableStateOf(false) }
        val idStaq by remember {mutableStateOf(id.toString())}
        Box(
            modifier = modifier
                .makeDraggable(localDensity, xPosition, yPosition)
                .background(brush = if (isLighting.value) LIGHT_RADIAL_BRUSH else DARK_RADIAL_BRUSH)
                .border(width = 10.dp, brush = METALLIC_BRUSH, shape = RectangleShape)
                .clickable{
                    expandedDropDownMenu = !expandedDropDownMenu
                }
                .width(60.dp)
                .height(60.dp)
        ) {
            DropdownMenu(
                expanded = expandedDropDownMenu,
                onDismissRequest = {
                    expandedDropDownMenu = false
                },
                modifier = Modifier.width(200.dp)
            ) {
                DropdownMenuItem(onClick = {
                    deleteCurrentItem(idStaq)
                }) {
                    Text(
                        text = "Удалить",
                        modifier = Modifier
                            .padding(5.dp),
                        fontSize = 15.sp,
                    )
                }
                DropdownMenuItem(
                    onClick = {
                        connectMenu = !connectMenu
                    },
                ) {
                    Text(
                        text = "Соединить",
                        modifier = Modifier
                            .padding(5.dp),
                        fontSize = 15.sp,
                    )
                }
                if (connectMenu) {
                    DropdownMenuItem(
                        onClick = {
                            connectMenu = false
                        },
                    ) {
                        Text(
                            text = "Lamp 1",
                            modifier = Modifier
                                .padding(10.dp),
                            fontSize = 15.sp,
                        )
                    }
                }
            }
        }
        x = xPosition.value
        y = yPosition.value
    }
}