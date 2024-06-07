package canvas.items

import androidx.compose.foundation.background
import androidx.compose.foundation.clickable
import androidx.compose.foundation.gestures.detectDragGestures
import androidx.compose.foundation.layout.offset
import androidx.compose.runtime.MutableState
import androidx.compose.ui.Modifier
import androidx.compose.ui.graphics.Color
import androidx.compose.ui.input.pointer.changedToUp
import androidx.compose.ui.input.pointer.pointerInput
import androidx.compose.ui.unit.Density
import androidx.compose.ui.unit.dp

interface Draggable {
    fun Modifier.makeDraggable(
        density: Density,
        x: MutableState<Float>,
        y: MutableState<Float>,
    ): Modifier =
        this.offset(
            (x.value / density.density).dp,
            (y.value / density.density).dp
        ).pointerInput(Unit) {
            detectDragGestures { change, dragAmount ->
                change.consume()
                x.value += dragAmount.x
                y.value += dragAmount.y
            }

        }.clickable {
            this.background(Color.LightGray)
        }
}