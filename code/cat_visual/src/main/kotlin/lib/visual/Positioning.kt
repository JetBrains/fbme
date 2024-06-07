package lib.visual

import androidx.compose.foundation.layout.*
import androidx.compose.runtime.Composable

import androidx.compose.ui.Modifier
import androidx.compose.ui.unit.Dp
import androidx.compose.ui.unit.IntOffset
import androidx.compose.ui.unit.dp
import androidx.compose.ui.zIndex

@Composable
fun PositionedBox(children: @Composable () -> Unit, x: Int = 0, y:Int = 0, zIndex: Float = 1f) {
    Box(modifier = Modifier.
        zIndex(zIndex)
        .offset {IntOffset(x, y)}
        .wrapContentSize()) {
        children()
    }
}

@Composable
fun PositionedBox(children: @Composable () -> Unit, x: Float = 0f, y:Float = 0f, zIndex: Float = 1f) {
    Box(modifier = Modifier.
        zIndex(zIndex)
        .offset(x.dp, y.dp)
        .wrapContentSize()) {
        children()
    }
}


