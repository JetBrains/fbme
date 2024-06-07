package canvas.items.interfaces

import androidx.compose.foundation.border
import androidx.compose.foundation.clickable
import androidx.compose.foundation.focusable
import androidx.compose.foundation.gestures.detectDragGestures
import androidx.compose.foundation.layout.offset
import androidx.compose.runtime.MutableState
import androidx.compose.ui.Modifier
import androidx.compose.ui.focus.FocusRequester
import androidx.compose.ui.focus.focusRequester
import androidx.compose.ui.focus.onFocusChanged
import androidx.compose.ui.graphics.Color
import androidx.compose.ui.input.pointer.pointerInput
import androidx.compose.ui.unit.Density
import androidx.compose.ui.unit.dp

interface Draggable {
    fun Modifier.makeDraggable(
        localDensity: Density,
        xPosition: MutableState<Float>,
        yPosition: MutableState<Float>,
    ): Modifier =
        this.offset(
            (xPosition.value / localDensity.density).dp,
            (yPosition.value / localDensity.density).dp
        ).pointerInput(Unit) {
            detectDragGestures { change, dragAmount ->
                change.consume()
                xPosition.value += dragAmount.x
                yPosition.value += dragAmount.y
            }

        }
}