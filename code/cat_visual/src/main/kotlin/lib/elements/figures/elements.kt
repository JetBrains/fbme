package lib.elements

import androidx.compose.animation.core.AnimationSpec
import androidx.compose.animation.core.animateFloatAsState
import androidx.compose.animation.core.tween
import androidx.compose.foundation.Canvas
import androidx.compose.foundation.background
import androidx.compose.foundation.border
import androidx.compose.foundation.layout.*
import androidx.compose.foundation.shape.CircleShape
import androidx.compose.foundation.shape.CutCornerShape
import androidx.compose.foundation.shape.RoundedCornerShape
import androidx.compose.material.MaterialTheme
import androidx.compose.runtime.Composable
import androidx.compose.runtime.MutableState
import androidx.compose.runtime.getValue
import androidx.compose.ui.Modifier
import androidx.compose.ui.draw.clip
import androidx.compose.ui.draw.rotate
import androidx.compose.ui.geometry.Offset
import androidx.compose.ui.geometry.Size
import androidx.compose.ui.graphics.*
import androidx.compose.ui.graphics.drawscope.Stroke
import androidx.compose.ui.unit.Dp
import androidx.compose.ui.unit.dp


@Composable
fun Rectangle(color: Color, width: Dp, height: Dp) {
    Box(
        modifier = Modifier.background(color = color)
            .width(width)
            .height(height)
    ) {
    }
}

@Composable
fun Rectangle(color: Color, size: Dp) {
    Box(
        modifier = Modifier.background(color = color)
            .size(size)
    ) {
    }
}

@Composable
fun Round(color: Color, width: Dp, height: Dp) {
    Box(
        modifier = Modifier.background(color = color)
            .clip(CircleShape)
            .width(width)
            .height(height)
    ) {
    }
}

@Composable
fun Round(color: Color, size: Dp) {
    Box(
        modifier = Modifier.background(color = color)
            .clip(CircleShape)
            .size(size)
    ) {
    }
}

@Composable
fun Round(modifier: Modifier, width: Dp, height: Dp) {
    Box(
        modifier = Modifier
            .clip(CircleShape)
            .width(width)
            .height(height)
            .then(modifier)
    ) {
    }
}

@Composable
fun RoundedRectangle(color: Color, width: Dp, height: Dp, radius: Dp) {
    Box(
        modifier = Modifier.background(color = color)
            .clip(RoundedCornerShape(radius))
            .width(width)
            .height(height)
    ) {
    }
}

@Composable
fun RoundedRectangle(color: Color, size: Dp, radius: Dp) {
    Box(
        modifier = Modifier.background(color = color)
            .clip(RoundedCornerShape(radius))
            .size(size)
    ) {
    }
}


@Composable
fun RoundedRectangle(modifier: Modifier, width: Dp, height: Dp, radius: Dp) {
    Box(
        modifier = modifier
            .clip(RoundedCornerShape(radius))
            .width(width)
            .height(height)
    ) {
    }
}

@Composable
fun CutRectangle(color: Color, width: Dp, height: Dp, radius: Dp) {
    Figure(shape = CutCornerShape(radius),
        modifier = Modifier.background(color = color)
            .width(width)
            .height(height)
    )
}

@Composable
fun CutRectangle(color: Color, size: Dp, radius: Dp) {
    Figure(
        shape = CutCornerShape(radius),
        modifier = Modifier.background(color = color)
            .clip(CutCornerShape(radius))
            .size(size)
    )
}


@Composable
fun Figure(shape: Shape = RectangleShape, modifier: Modifier = Modifier) {
    Box(modifier = modifier.clip(shape)){
    }
}

@Composable
fun OneDAnimatedComposable(
    content: @Composable () -> Unit,
    isAtTheEnd: Boolean,
    targetValue: Float,
    horizontally: Boolean = true,
    animationSpec: AnimationSpec<Float> = tween(durationMillis = 1000),
) {
    val animatedValue by animateFloatAsState(
        targetValue = if (isAtTheEnd) targetValue else 0f,
        animationSpec = animationSpec
    )

    var modifier:Modifier = Modifier;
    if (horizontally) {
        modifier = modifier.offset(x = animatedValue.dp)
    } else {
        modifier = modifier.offset(y = animatedValue.dp)
    }
    Box(
        modifier = modifier
    ) {
        content()
    }
}

@Composable
fun Pipe(
    color: Color,
    pipeWidth: Dp,
    pipeHeight: Dp,
    modifier: Modifier = Modifier
) {
    Box(
        modifier = modifier
            .width(pipeWidth)
            .height(pipeHeight)
            .background(brush = Brush.verticalGradient(listOf(color, color.copy(alpha = 0.2f), color)))
    ){}
}

@Composable
fun PipeConnector(
    color: Color,
    connectorWidth: Dp,
    connectorHeight: Dp,
    modifier: Modifier = Modifier
) {
        Box(modifier = modifier) {
            Box(
                modifier = Modifier
                    .offset()
                    .width(connectorWidth)
                    .height(connectorHeight)
                    .background(
                        brush = Brush.verticalGradient(listOf(color, color.copy(alpha = 0.2f), color)),
                        shape = RoundedCornerShape(0.dp, connectorHeight, connectorHeight, 0.dp)
                    )
            ) {}
            val rotatedBoxOffset = connectorWidth / 2 - connectorHeight /2
            Box(
                modifier = Modifier
                    .offset(x = rotatedBoxOffset, y = rotatedBoxOffset)
                    .rotate(-90f)
                    .width(connectorWidth)
                    .height(connectorHeight)
                    .background(
                        brush = Brush.verticalGradient(listOf(color, color.copy(alpha = 0.2f), color)),
                        shape = RoundedCornerShape(0.dp, connectorHeight, connectorHeight, 0.dp)
                    )
            ) {}
        }

}