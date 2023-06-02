package lib.elements.getters

import androidx.compose.foundation.*
import androidx.compose.foundation.layout.*
import androidx.compose.foundation.shape.CircleShape
import androidx.compose.foundation.shape.RoundedCornerShape
import androidx.compose.material.MaterialTheme
import androidx.compose.material.Text
import androidx.compose.runtime.Composable
import androidx.compose.runtime.getValue
import androidx.compose.runtime.mutableStateOf
import androidx.compose.runtime.remember
import androidx.compose.ui.Alignment
import androidx.compose.ui.Modifier
import androidx.compose.ui.draw.clip
import androidx.compose.ui.graphics.Brush
import androidx.compose.ui.graphics.Color
import androidx.compose.ui.graphics.RectangleShape
import androidx.compose.ui.graphics.StrokeCap
import androidx.compose.ui.graphics.drawscope.Stroke
import androidx.compose.ui.text.font.FontFamily
import androidx.compose.ui.text.font.FontWeight
import androidx.compose.ui.text.font.SystemFontFamily
import androidx.compose.ui.text.style.TextAlign
import androidx.compose.ui.unit.Dp
import androidx.compose.ui.unit.TextUnit
import androidx.compose.ui.unit.dp
import androidx.compose.ui.unit.sp
import androidx.compose.ui.zIndex
import connection.AbstractClient
import connection.ConnectionFieldRegistry
import connection.field.ConnectionField
import connection.field.TYPE_ID
import connection.provider.ConnectionProvider
import lib.elements.*

@Composable
fun Bulb(name: String, client: AbstractClient,
         size: Dp = 60.dp, borderWidth:Dp = 10.dp,
         modifier: Modifier = Modifier
         ) {

    val field = client.getField(name) as ConnectionField<Boolean>

    var checkedStateBulb = remember { field }
    Round(
        modifier.background(brush = if (checkedStateBulb.contentState.value) LIGHT_RADIAL_BRUSH else DARK_RADIAL_BRUSH)
            .border(width = borderWidth, brush = METALLIC_BRUSH, shape = CircleShape),
        size,
        size
    )
}


@Composable
fun LightingText(name: String, client: AbstractClient,
                 text:String,
         width: Dp = 60.dp, height: Dp = 60.dp, borderWidth:Dp = 10.dp,
         modifier: Modifier = Modifier, lightBrush: Brush = LIGHT_RADIAL_BRUSH
         ) {

    val field = client.getField(name) as ConnectionField<Boolean>

    var checkedStateBulb = remember { field }

    Box(
        modifier = modifier.background(brush = if (checkedStateBulb.contentState.value) lightBrush else DARK_RADIAL_BRUSH, shape =  RoundedCornerShape(height / 4))
            .border(width = borderWidth, brush = METALLIC_BRUSH, shape = RoundedCornerShape(height / 4))
            .widthIn(min = width)
            .heightIn(min = height)
            .clip(RoundedCornerShape(height / 4)),
    ) {
        Text(text, modifier = Modifier.align(Alignment.Center))
    }
}

@Composable
fun TextBox(
    name: String,
    client: AbstractClient,
    modifier: Modifier = Modifier.focusable(true)
) {
    val field = client.getField(name)

    var checkedState = remember { field }
    Box(
        modifier = modifier.then(Modifier.fillMaxWidth().fillMaxHeight())
    ) {
        Text(checkedState!!.contentState.value.toString())
    }
}

@Composable
fun Indicator(
    name: String, client: AbstractClient,
    minIndicatorValue: Int, maxIndicatorValue: Int, size: Dp,
    indicatorThickness: Dp = 28.dp,
    animationDuration: Int = 1000,
    animationDelay: Int = 0
) {
    val field = client.getField(name) as ConnectionField<Number>

    var checkedState = remember { field }
    Box(
        contentAlignment = Alignment.Center,
        modifier = Modifier.wrapContentSize().padding(indicatorThickness)
    ) {
        Canvas(
            modifier = Modifier
                .height(size + indicatorThickness)
                .width(size + indicatorThickness)
        ) {
            drawArc(
                color = Color.LightGray,
                startAngle = 0f,
                sweepAngle = -180f,
                useCenter = false,
                style = Stroke(width = indicatorThickness.toPx(), cap = StrokeCap.Round)
            )

            var sweepAngle = 0f;
            if (checkedState.contentState.value.toInt() != 0) {
                sweepAngle = (checkedState.contentState.value.toInt() / (maxIndicatorValue - minIndicatorValue).toFloat()) * 180f
            }

            // Foreground circle
            drawArc(
                color = Color.Red,
                startAngle = 180f,
                sweepAngle = sweepAngle,
                useCenter = false,
                style = Stroke(indicatorThickness.toPx(), cap = StrokeCap.Round)
            )


        }
        Text(
            text = checkedState.contentState.value.toString(),
            color = Color.Black,
            style = MaterialTheme.typography.body1,
            textAlign = TextAlign.Center,
            modifier = Modifier
                .align(Alignment.Center),
            fontSize = 30.sp
        )
    }
}


@Composable
fun VerticalIndicator(
    name: String, client: AbstractClient,
    temperature: Float = 0f,
    maxTemperature: Float,
    minTemperature: Float,
    color: Color,
    step: Float,
    modifier: Modifier = Modifier,
    trackHeight: Dp = 400.dp,
    indicatorWidth: Dp = 48.dp,
    legendFontSize: TextUnit = 12.sp,
    legendFontColor: Color = Color.Black,
    font: SystemFontFamily = FontFamily.Default,
    showCurrentState: Boolean = false
) {
    val field = client.getField(name) as ConnectionField<Number>
    var checkedState = remember { field }

    val stepCount = ((maxTemperature - minTemperature) / step).toInt()
    val temperatureRange = maxTemperature - minTemperature

    Box(
        modifier = modifier
            .width(indicatorWidth)
            .height(trackHeight)
            .background(Color.LightGray)
            .border(BorderStroke(3.dp, METALLIC_BRUSH), RectangleShape)
    ) {
        val temperatureOffset = (checkedState.contentState.value.toFloat() - minTemperature) / temperatureRange
        val indicatorHeight = (temperatureOffset * trackHeight.value).dp


        Box(
            modifier = Modifier
                .fillMaxWidth()
                .height(indicatorHeight)
                .background(color)
                .align(Alignment.BottomCenter)
        ) {

            if (showCurrentState) {
                Text(
                    text = "${checkedState.contentState.value}",
                    fontSize = 16.sp,
                    fontWeight = FontWeight.Bold,
                    color = legendFontColor,
                    modifier = Modifier.offset(y = trackHeight)
                )
            }
        }

    }
    for (i in (minTemperature.toInt()..maxTemperature.toInt()).reversed() step step.toInt()) {
        val halfLegendHeight = legendFontSize.value.dp / 2f
        val labelOffset = ((i - minTemperature) / temperatureRange).coerceIn(0f, 1f)
        val labelTop = (((1f - labelOffset) * (trackHeight.value)) - halfLegendHeight.value).coerceIn(0f, trackHeight.value).dp
        Box(modifier = Modifier.width(indicatorWidth * 2)) {
            Text(
                modifier = Modifier.offset(x = indicatorWidth, y = labelTop),
                text = "$i",
                fontSize = legendFontSize,
                fontWeight = FontWeight.Light,
                fontFamily = font,
                color = legendFontColor,
                softWrap = false,
                lineHeight = legendFontSize
            )
        }
    }

}