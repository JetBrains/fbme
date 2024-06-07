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
import kotlinx.serialization.encodeToString
import kotlinx.serialization.json.Json
import serializer.SerializationUtils
import java.util.*

class TextItem(
    override val id: UUID = UUID.randomUUID(),
    override var x: Float = 0f,
    override var y: Float = 0f,
    override val modifier: Modifier = Modifier,
    override var content: String,
): AbstractItem(
    x = x,
    y = y,
    modifier = modifier,
    content = content,
), Draggable, Focusable {

    override val type = CanvasItemInterface.Type.TEXT

    @Composable
    override fun getContent(deleteCurrentItem: (String) -> Unit) {
        val localDensity = LocalDensity.current
        val idStaq by remember {mutableStateOf(id.toString())}
        val xPosition = remember { mutableStateOf(x) }
        val yPosition = remember { mutableStateOf(y) }
        var currentText by remember { mutableStateOf(content) }
        var currentTexInInputBar by remember { mutableStateOf("") }
        var visibleInputBar by remember { mutableStateOf( false) }
        val focusRequester = remember { FocusRequester() }
        var expandedDropDownMenu by remember { mutableStateOf(false) }
        val color = remember { mutableStateOf(Color.Black) }
        Box(
            modifier
                .makeDraggable(localDensity, xPosition, yPosition)
        ) {
            Text(
                text = currentText,
                modifier = modifier
                    .makeFocusable(focusRequester, color)
                    .clickable {
                        println("${xPosition.value} : ${yPosition.value}")
                        println("$expandedDropDownMenu")
                        println(content)
                        println(currentText)
                        expandedDropDownMenu = !expandedDropDownMenu
                    }
                    .wrapContentSize(),
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
                        visibleInputBar = !visibleInputBar
                    },
                ) {
                    Text(
                        text = "Изменить",
                        modifier = Modifier
                            .padding(5.dp),
                        fontSize = 15.sp,
                    )
                }
                if (visibleInputBar) {
                    TextField(
                        value = currentTexInInputBar,
                        onValueChange = { currentTexInInputBar = it },
                        modifier = Modifier
                            .fillMaxWidth(0.9f)
                            .align(Alignment.CenterHorizontally)
                            .padding(5.dp)
                            .height(50.dp)
                    )
                    Row(
                        modifier = Modifier.width(200.dp)
                    ) {
                        Button(
                            modifier = Modifier
                                .width(80.dp).height(30.dp).offset(x = 10.dp),
                            onClick = {
                                currentText = currentTexInInputBar
                                currentTexInInputBar = ""
                                visibleInputBar = false
                            },

                        ) {
                            Text(text = "save", fontSize = 12.sp)
                        }
                        Button(
                            modifier = Modifier
                                .width(80.dp).height(30.dp).offset(x = 20.dp),
                            onClick = {
                                currentTexInInputBar = ""
                                visibleInputBar = false
                            }
                        ) {
                            Text(text = "cancel", fontSize = 12.sp)
                        }
                    }
                }

            }

        }
        x = xPosition.value
        y = yPosition.value
        content = currentText
    }
}

