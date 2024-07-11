package canvas.items.model.figures

import androidx.compose.foundation.layout.Box
import androidx.compose.foundation.layout.height
import androidx.compose.foundation.layout.width
import androidx.compose.foundation.shape.CircleShape
import androidx.compose.runtime.Composable
import androidx.compose.ui.Modifier
import androidx.compose.ui.draw.clip
import androidx.compose.ui.unit.Dp

@Composable
fun Round(modifier: Modifier, width: Dp, height: Dp) {
    Box(
        modifier = Modifier
            .then(modifier)
            .width(width)
            .height(height)
            .clip(CircleShape)
    ){
    }
}