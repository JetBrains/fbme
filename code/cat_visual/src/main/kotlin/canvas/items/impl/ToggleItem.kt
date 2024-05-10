package canvas.items.impl

import androidx.compose.foundation.clickable
import androidx.compose.foundation.layout.*
import androidx.compose.material.*
import androidx.compose.runtime.*
import androidx.compose.ui.Alignment
import androidx.compose.ui.Modifier
import androidx.compose.ui.focus.FocusRequester
import androidx.compose.ui.graphics.Color
import androidx.compose.ui.platform.LocalDensity
import androidx.compose.ui.unit.dp
import androidx.compose.ui.unit.sp
import canvas.items.Draggable
import canvas.items.interfaces.CanvasItemInterface
import canvas.items.interfaces.Focusable
import connection.AbstractClient
import java.util.*

class ToggleItem(
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


    override val type = CanvasItemInterface.Type.TOGGLE

    @Composable
    override fun getContent(deleteCurrentItem: (String) -> Unit) {
        val localDensity = LocalDensity.current
        val xPosition = remember { mutableStateOf(x) }
        val yPosition = remember { mutableStateOf(y) }
        val focusRequester = remember { FocusRequester() }
        val color = remember { mutableStateOf(Color.Black) }
        val checkedStateToggle = remember { mutableStateOf(false) }
        var connectMenu by remember { mutableStateOf( false) }
        var expandedDropDownMenu by remember { mutableStateOf(false) }
        val idStaq by remember {mutableStateOf(id.toString())}
        Box(
            modifier.makeDraggable(localDensity, xPosition, yPosition)
                .makeFocusable(focusRequester, color)
                .clickable{
                    expandedDropDownMenu = !expandedDropDownMenu
                }
        ) {
            Switch(
                modifier = modifier
                    .size(50.dp)
                    .wrapContentSize(),
                checked = checkedStateToggle.value,
                onCheckedChange = {checkedStateToggle.value = !checkedStateToggle.value},
            )
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
                            text = "Toggle 1",
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