package canvas.items

import androidx.compose.foundation.border
import androidx.compose.foundation.clickable
import androidx.compose.foundation.focusable
import androidx.compose.foundation.gestures.detectDragGestures
import androidx.compose.foundation.layout.offset
import androidx.compose.foundation.layout.wrapContentSize
import androidx.compose.material.Text
import androidx.compose.runtime.*
import androidx.compose.ui.Modifier
import androidx.compose.ui.focus.FocusRequester
import androidx.compose.ui.graphics.Color
import androidx.compose.ui.platform.LocalDensity

class TextItem(
    private val x: Int = 0,
    private val y: Int = 0,
    private val width: Int = 200,
    private val height: Int = 100,
    private val modifier: Modifier = Modifier,
    private val text: String,
): AbstractItem(
    x = x,
    y = y,
    modifier = modifier,
), Draggable, Focusable {

    @Composable
    override fun getContent() {
        val d = LocalDensity.current
        val xPosition = remember { mutableStateOf(x.toFloat()) }
        val yPosition = remember { mutableStateOf(y.toFloat()) }

        val focusRequester = remember { FocusRequester() }
        val color = remember { mutableStateOf(Color.Black) }
        Text(
            text = text,
            modifier = modifier
                .makeDraggable(d, xPosition, yPosition)
                .makeFocusable(focusRequester, color)
                .wrapContentSize(),
        )
    }
}