package canvas.items

import androidx.compose.animation.animateContentSize
import androidx.compose.foundation.Canvas
import androidx.compose.foundation.background
import androidx.compose.foundation.gestures.*
import androidx.compose.foundation.layout.*
import androidx.compose.foundation.selection.selectable
import androidx.compose.material.RadioButton
import androidx.compose.material.Text
import androidx.compose.runtime.*
import androidx.compose.ui.Alignment
import androidx.compose.ui.Modifier
import androidx.compose.ui.draw.clip
import androidx.compose.ui.graphics.Color
import androidx.compose.ui.graphics.RectangleShape
import androidx.compose.ui.graphics.graphicsLayer
import androidx.compose.ui.input.pointer.PointerEventPass
import androidx.compose.ui.input.pointer.PointerEventType
import androidx.compose.ui.input.pointer.onPointerEvent
import androidx.compose.ui.input.pointer.pointerInput
import androidx.compose.ui.layout.onGloballyPositioned
import androidx.compose.ui.layout.onSizeChanged
import androidx.compose.ui.semantics.Role
import androidx.compose.ui.unit.IntOffset
import androidx.compose.ui.unit.IntSize
import androidx.compose.ui.unit.dp

enum class ItemType {
    RECTANGLE, RADIO, CHECKBOX
}

@Composable
fun ZoomableBox(
    modifier: Modifier = Modifier,
    minScale: Float = 0.1f,
    maxScale: Float = 5f,
    content: @Composable ZoomableBoxScope.() -> Unit
) {
    var scale by remember { mutableStateOf(1f) }
    var offsetX by remember { mutableStateOf(0f) }
    var offsetY by remember { mutableStateOf(0f) }
    var size by remember { mutableStateOf(IntSize(50, 50)) }
    Box(
        modifier = modifier
//            .clip(RectangleShape)
            .onSizeChanged { size = it }
            .pointerInput(Unit) {
                detectTransformGestures { _, pan, zoom, _ ->
                    scale = maxOf(minScale, minOf(scale * zoom, maxScale))
                    val maxX = (size.width * (scale - 1)) / 2
                    val minX = -maxX
                    offsetX = maxOf(minX, minOf(maxX, offsetX + pan.x))
                    val maxY = (size.height * (scale - 1)) / 2
                    val minY = -maxY
                    offsetY = maxOf(minY, minOf(maxY, offsetY + pan.y))
                }
            }
    ) {
        val scope = ZoomableBoxScopeImpl(scale, offsetX, offsetY)
        scope.content()
        println(scale)
        println(offsetX)
        println(offsetY)
        println(size)
    }
}

interface ZoomableBoxScope {
    val scale: Float
    val offsetX: Float
    val offsetY: Float
}

private data class ZoomableBoxScopeImpl(
    override val scale: Float,
    override val offsetX: Float,
    override val offsetY: Float
) : ZoomableBoxScope


abstract interface CustomItem {
    @Composable
    fun create();
}

class RectangleCustomItem : CustomItem {
    var c = Color.Blue
    @Composable
    fun RectangleItem() {
        var color by remember { mutableStateOf(c) }
        ZoomableBox {
            Box(
                modifier = Modifier
                    .graphicsLayer(
                        scaleX = scale,
                        scaleY = scale,
                        translationX = offsetX,
                        translationY = offsetY
                    )
                    .background(color = color)
                    .width(600.dp)
                    .height(600.dp)
            ) {
            }
        }

    }

    @Composable
    override fun create() {
        return RectangleItem();
    }
}

class CheckboxCustomItem : CustomItem {
    var c = Color.Blue
    @Composable
    fun RectangleItem() {
        var color by remember { mutableStateOf(c) }
        ZoomableBox {
            Box(
                modifier = Modifier
                    .graphicsLayer(
                        scaleX = scale,
                        scaleY = scale,
                        translationX = offsetX,
                        translationY = offsetY
                    )
                    .background(color = color)
                    .width(600.dp)
                    .height(600.dp)
            ) {
            }
        }

    }

    @Composable
    override fun create() {
        return RectangleItem();
    }
}

class RadioCustomItem : CustomItem {
    var c = Color.Blue
    @Composable
    fun RadioItem(items: List<String>) {
        var color by remember { mutableStateOf(c) }
        var selectedValue by remember { mutableStateOf("") }
        val isSelectedItem: (String) -> Boolean = { selectedValue == it }
        val onChangeState: (String) -> Unit = { selectedValue = it }
        ZoomableBox {
            items.forEach { item ->
                Row(
                    verticalAlignment = Alignment.CenterVertically,
                    modifier = Modifier.selectable(
                        selected = isSelectedItem(item),
                        onClick = { onChangeState(item) },
                        role = Role.RadioButton
                    ).padding(8.dp)
                ) {
                    RadioButton(
                        selected = isSelectedItem(item),
                        onClick = null
                    )
                    Text(
                        text = item,
                        modifier = Modifier.fillMaxWidth()
                    )
                }
            }
        }

    }

    @Composable
    override fun create() {
        val items = listOf("Item1", "Item2")
        return RadioItem(items);
    }
}
