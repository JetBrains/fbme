package lib.elements.setters

import androidx.compose.animation.AnimatedVisibility
import androidx.compose.foundation.*
import androidx.compose.foundation.gestures.*
import androidx.compose.foundation.interaction.MutableInteractionSource
import androidx.compose.foundation.layout.*
import androidx.compose.foundation.lazy.LazyColumn
import androidx.compose.foundation.lazy.items
import androidx.compose.foundation.lazy.itemsIndexed
import androidx.compose.foundation.shape.CircleShape
import androidx.compose.foundation.shape.RoundedCornerShape
import androidx.compose.foundation.text.KeyboardOptions
import androidx.compose.material.*
import androidx.compose.material.icons.Icons
import androidx.compose.material.icons.filled.ArrowDropDown
import androidx.compose.material.icons.filled.Check
import androidx.compose.material.icons.filled.Done
import androidx.compose.runtime.Composable
import androidx.compose.runtime.mutableStateOf
import androidx.compose.runtime.remember
import androidx.compose.runtime.getValue
import androidx.compose.runtime.setValue
import androidx.compose.ui.Alignment
import androidx.compose.ui.Modifier
import androidx.compose.ui.draw.clip
import androidx.compose.ui.draw.rotate
import androidx.compose.ui.geometry.Offset
import androidx.compose.ui.geometry.Size
import androidx.compose.ui.graphics.*
import androidx.compose.ui.graphics.drawscope.Stroke
import androidx.compose.ui.input.pointer.consumeAllChanges
import androidx.compose.ui.input.pointer.consumePositionChange
import androidx.compose.ui.input.pointer.pointerInput
import androidx.compose.ui.input.pointer.positionChange
import androidx.compose.ui.layout.boundsInWindow
import androidx.compose.ui.layout.onGloballyPositioned
import androidx.compose.ui.layout.onSizeChanged
import androidx.compose.ui.platform.LocalDensity
import androidx.compose.ui.text.TextStyle
import androidx.compose.ui.text.input.ImeAction
import androidx.compose.ui.text.input.KeyboardType
import androidx.compose.ui.text.input.TextFieldValue
import androidx.compose.ui.text.style.TextAlign
import androidx.compose.ui.unit.*
import androidx.compose.ui.zIndex
import connection.AbstractClient
import connection.ConnectionFieldRegistry
import connection.field.*
import connection.provider.ConnectionProvider
import lib.elements.METALLIC_BRUSH
import java.lang.UnsupportedOperationException
import kotlin.concurrent.thread
import kotlin.math.PI
import kotlin.math.atan2
import kotlin.math.roundToInt

@Composable
fun CustomButton(
    text: String,
    onClick: () -> Unit,
    modifier: Modifier = Modifier,
    buttonColors: ButtonColors = ButtonDefaults.buttonColors(),
    textColor: Color = Color.Black,
    backgroundColor: Color = Color.White,
    borderColor: Color = Color.Transparent,
    borderWidth: Int = 0,
    cornerRadius: Int = 0
) {
    Button(
        onClick = onClick,
        modifier = modifier,
        colors = buttonColors,
        shape = RoundedCornerShape(cornerRadius.dp),
        border = BorderStroke(width = borderWidth.dp, color = borderColor),
        contentPadding = PaddingValues(16.dp),
        elevation = ButtonDefaults.elevation(defaultElevation = 0.dp, pressedElevation = 2.dp)
    ) {
        Text(
            text = text,
            color = textColor,
            modifier = Modifier.padding(4.dp)
        )
    }
}

@Composable
fun Toggle(
    name: String, client: AbstractClient,
    modifier: Modifier = Modifier,
    onCheckedChange: (Boolean) -> Unit = {}
) {
    val toggleField = client.getField(name) as ConnectionField<Boolean>

    val checkedStateToggle = remember { toggleField }
    Switch(
        modifier = modifier.size(24.dp),
        checked = checkedStateToggle.contentState.value,
        onCheckedChange = {
            checkedStateToggle.setValue(it)
            client.sendValue(name)
            onCheckedChange(it)
        }
    )
}

@Composable
fun Checkbox(
    name: String, client: AbstractClient,
    modifier: Modifier = Modifier,
    onCheckedChange: (Boolean) -> Unit = {},
    checkboxColor: Color = MaterialTheme.colors.primary,
    checkmarkColor: Color = Color.White,
    disabledColor: Color = MaterialTheme.colors.onSurface.copy(alpha = 0.38f),
    contentDescription: String? = null
) {
    val checkboxField = client.getField(name) as ConnectionField<Boolean>

    val checkedStateCheckbox = remember { checkboxField }

    Box(
        modifier = modifier
            .clickable(
                onClick = {
                    val changedValue = !checkedStateCheckbox.contentState.value
                    checkedStateCheckbox.setValue(changedValue)
                    client.sendValue(name)
                    onCheckedChange(changedValue)
                })
            .size(24.dp),
        contentAlignment = Alignment.Center
    ) {
        val backgroundColor = if (checkedStateCheckbox.contentState.value) checkboxColor else disabledColor
        Box(
            modifier = Modifier
                .size(20.dp)
                .background(color = backgroundColor)
                .border(width = 2.dp, brush = METALLIC_BRUSH, shape = RectangleShape),
            contentAlignment = Alignment.Center
        ) {
            if (checkedStateCheckbox.contentState.value) {
                Icon(
                    imageVector = Icons.Default.Check,
                    contentDescription = contentDescription,
                    tint = checkmarkColor,
                    modifier = Modifier.size(12.dp)
                )
            }
        }
    }
}

@Composable
fun ListBox(
    name: String, client: AbstractClient,
    modifier: Modifier = Modifier,
    items: List<String>,
    onItemSelected: (String) -> Unit = {},
    dropdownMaxHeight: Dp = 240.dp,
    content: @Composable (String) -> Unit
) {
    val comboBoxField = client.getField(name) as ConnectionField<String>

    val checkedStateComboBox = remember { comboBoxField }
    var expanded by remember { mutableStateOf(false) }
    var dropdownHeight by remember { mutableStateOf(0.dp) }
    val density = LocalDensity.current
    val dropdownHeightPx = with(density) { dropdownHeight.toPx() }
    var selectedItem: String by remember { mutableStateOf("") }
    var textfieldSize by remember { mutableStateOf(0) }
    val interactionSource = remember {
        MutableInteractionSource()
    }

    Column(
        modifier = modifier.wrapContentSize().clickable(
            interactionSource = interactionSource,
            indication = null,
            onClick = {
                expanded = false
            }
        ),
        horizontalAlignment = Alignment.Start
    ) {
        Box(
            modifier = Modifier
                .fillMaxWidth()
                .background(color = Color.White, shape = MaterialTheme.shapes.medium)
                .padding(horizontal = 16.dp, vertical = 12.dp)
        ) {
            Row(verticalAlignment = Alignment.CenterVertically,
                modifier = Modifier.onSizeChanged {
                    textfieldSize = it.width
//                    print(textfieldSize)
                }) {

                Box(modifier = Modifier.weight(1f)) {
                    content(selectedItem)
                }
                Icon(imageVector = Icons.Default.ArrowDropDown,
                    contentDescription = null,
                    Modifier.size(24.dp).alignByBaseline().clickable { expanded = !expanded })

            }
        }
        DropdownMenu(
            expanded = expanded,
            onDismissRequest = { expanded = false },
            modifier = Modifier
                .heightIn(max = dropdownMaxHeight)
                .width(with(LocalDensity.current) { textfieldSize.toDp() })
                .onSizeChanged { dropdownHeight = it.height.dp }
        ) {
            items.forEach { item ->
                DropdownMenuItem(
                    onClick = {
                        checkedStateComboBox.setValue(item)
                        client.sendValue(name)
                        onItemSelected(item)
                        selectedItem = item
                        expanded = false
                    },
                    modifier = Modifier
                        .fillMaxWidth()
                        .heightIn(min = 48.dp)
                ) {
                    content(item)
                }
            }
        }
    }
}


@Composable
fun ComboBox(
    name: String, client: AbstractClient,
    modifier: Modifier = Modifier,
    items: List<String>,
    onItemSelected: (String) -> Unit = {},
    dropdownMaxHeight: Dp = 240.dp,
    content: @Composable (String) -> Unit
) {
    val comboBoxField = client.getField(name) as ConnectionField<String>

    val checkedStateComboBox = remember { comboBoxField }
    var expanded by remember { mutableStateOf(false) }
    var dropdownHeight by remember { mutableStateOf(0.dp) }
    var selectedItem by remember { mutableStateOf("") }
    var textfieldSize by remember { mutableStateOf(0) }
    val scrollState = rememberScrollState()

    Column(
        modifier = modifier.wrapContentSize(),
        horizontalAlignment = Alignment.Start
    ) {

        Box(modifier = Modifier.fillMaxWidth()) {
            OutlinedTextField(
                value = selectedItem,
                onValueChange = {
                    selectedItem = it
                    expanded = true
                },
                modifier = Modifier.fillMaxWidth(),
                label = { Text("Select an item") },
                keyboardOptions = KeyboardOptions(
                    keyboardType = KeyboardType.Text,
                    imeAction = ImeAction.Done
                ),
                trailingIcon = {
                    Icon(
                        Icons.Default.ArrowDropDown,
                        "Drop Down",
                        Modifier.size(24.dp).clickable { expanded = !expanded }
                    )
                }
            )
        }
        AnimatedVisibility(visible = expanded) {
            Card(
                modifier = Modifier
                    .padding(horizontal = 5.dp)
                    .fillMaxWidth(),
                elevation = 15.dp
            ) {
                var currItems: List<String> = items.sorted()
                if (selectedItem.isNotEmpty()) {
                    currItems = items.filter { it.lowercase().contains(selectedItem.lowercase()) }
                }
                LazyColumn {
                    items(currItems){ item ->
                        Box(
                            modifier = Modifier.clickable {
                                checkedStateComboBox.setValue(item)
                                client.sendValue(name)
                                onItemSelected(item)
                                selectedItem = item
                                expanded = false
                            }
                                .fillMaxWidth()
                                .heightIn(min = 48.dp)
                        ) {
                            content(item)
                        }
                    }
                }

            }
        }
    }
}

@Composable
fun InputTextBox(
    name: String, client: AbstractClient,
    modifier: Modifier = Modifier,
    onItemChanged: (String) -> Unit = {},
    hintText: String = "Write something"
) {
    val textBoxField = client.getField(name) as ConnectionField<String>
    val checkedStateTextBox = remember { textBoxField }
    var selectedItem: String by remember { mutableStateOf("") }
    Box(modifier = Modifier.fillMaxWidth()) {
        OutlinedTextField(
            value = selectedItem,
            onValueChange = {
                selectedItem = it
            },
            modifier = modifier.fillMaxWidth(),
            label = { Text(hintText) },
            keyboardOptions = KeyboardOptions(
                keyboardType = KeyboardType.Text,
                imeAction = ImeAction.Done
            ),
            trailingIcon = {
                Icon(
                    Icons.Default.Check,
                    "Drop Down",
                    Modifier.size(24.dp).clickable {
                        checkedStateTextBox.setValue(selectedItem)
                        client.sendValue(name)
                        onItemChanged(checkedStateTextBox.getValue())
                    }
                )
            }
        )
    }
}



@Composable
fun HorizontalTracker(
    name: String, client: AbstractClient,
    range: ClosedFloatingPointRange<Float>,
    initialValue: Float,
    onValueSelected: (Float) -> Unit = {},
    modifier: Modifier = Modifier,
    thumbColor: Color = Color.Magenta,
    trackColor: Color = Color.LightGray,
    borderWidth: Dp = 3.dp,
    thumbSize: Dp = 24.dp,
    trackWidth: Dp = 100.dp,
    trackHeight: Dp = 24.dp,
    legend: Boolean = true,
    steps: Int = 0,
    tickSize: Dp = 1.dp,
    legendFontSize: TextUnit = 10.sp
) {
    val trackerField = client.getField(name) as ConnectionField<Number>
    val checkedStateTracker = remember { trackerField }

    var offsetX by remember { mutableStateOf(0f) }
    var position by remember { mutableStateOf(getThumbPosition(initialValue, range, thumbSize, trackWidth)) }
    var selectedValue by remember { mutableStateOf(initialValue) }

    Box(modifier = modifier.padding(thumbSize / 2)) {
        Spacer(
            modifier = Modifier
                .width(trackWidth)
                .height(trackHeight)
                .background(trackColor)
                .zIndex(1f)
                .border(BorderStroke(borderWidth, METALLIC_BRUSH))
        )

        Box(
            modifier = Modifier
                .offset(x = position)
                .size(thumbSize)
                .background(thumbColor, CircleShape)
                .zIndex(2f)
                .pointerInput(Unit) {
                    detectDragGestures(
                        onDragStart = {
                        },
                        onDragEnd = {
                            val newValue = ((position.value + thumbSize.value / 2) / trackWidth.value) * (range.endInclusive - range.start)
                            selectedValue = newValue.coerceIn(range)
                            checkedStateTracker.setValue(selectedValue)
                            client.sendValue(name)
                            onValueSelected(selectedValue)
                        },
                        onDragCancel = {
                        },
                        onDrag = { change, _ ->
                            offsetX = change.positionChange().x
                            position = max(0.dp - thumbSize / 2, min(position + offsetX.toDp(), trackWidth - thumbSize / 2))
                            change.consumePositionChange()
                        }
                    )
                }
        )

        if (legend && steps > 0) {
            val tickPositions =
                (0..steps).map { Pair(range.start + it.toFloat() / steps * (range.endInclusive - range.start), it) }
            tickPositions.forEach { position ->
                val tickPosition = getTickPosition(position.first, range, thumbSize)
                Column(modifier = Modifier.offset(x = tickPosition.dp).zIndex(0f)) {
                    Spacer(
                        modifier = Modifier
                            .height(trackHeight + tickSize)
                            .width(1.dp)
                            .background(Color.Black)

                    )
                    Text(position.second.toString(), modifier = Modifier.align(Alignment.CenterHorizontally), fontSize = legendFontSize)
                }
            }
        }
    }
}

fun getThumbPosition(value: Float, range: ClosedFloatingPointRange<Float>, thumbWidth: Dp, trackWidth: Dp): Dp {
    val normalizedValue = (value - range.start) / (range.endInclusive - range.start)
    return trackWidth * normalizedValue + thumbWidth / 2
}

fun getTickPosition(value: Float, range: ClosedFloatingPointRange<Float>, thumbWidth: Dp): Float {
    val normalizedValue = (value - range.start) / (range.endInclusive - range.start)
    val availableWidth = (range.endInclusive - range.start)
    return availableWidth * normalizedValue
}


@Composable
fun RoundKnob(
    name: String, client: AbstractClient,
    range: IntRange,
    value: Float,
    onValueSelected: (Number) -> Unit = {},
    knobSize: Dp = 48.dp,
    strokeWidth: Dp = 4.dp,
    knobColor: Color = MaterialTheme.colors.primary,
    legendColor: Color = MaterialTheme.colors.onBackground
) {
    val knobField = client.getField(name) as ConnectionField<Float>
    val checkedStateKnob = remember { knobField }

    var rotationAngle by remember { mutableStateOf(calculateRotationAngle(value, range))}
    var currValue by remember { mutableStateOf(value) }
    var offsetX by remember { mutableStateOf(0f) }
    var offsetY by remember { mutableStateOf(0f) }
    var centerX by remember { mutableStateOf(0f) }
    var centerY by remember { mutableStateOf(0f) }
    Box(
        contentAlignment = Alignment.Center,
        modifier = Modifier.size(knobSize)
    ) {
        Box(modifier = Modifier.pointerInput(Unit) {
            detectDragGestures(
                onDragStart = {
                },
                onDragEnd = {
                    var angle = atan2(centerY - offsetY, centerX - offsetX) * (180f / PI).toFloat() - 90
                    if (angle < -180) {
                        angle = (angle + 360) % 360
                    }
                    rotationAngle = (angle).coerceIn(-150f, 150f)
                    currValue = calculateValue(rotationAngle, range)

                    checkedStateKnob.setValue(currValue)
                    client.sendValue(name)
                    onValueSelected(currValue)
                },
                onDrag = { change, dragAmount ->
                    offsetX = change.position.x
                    offsetY = change.position.y
                    var angle = atan2(centerY - offsetY, centerX - offsetX) * (180f / PI).toFloat() - 90
                    if (angle < -180) {
                        angle = (angle + 360) % 360
                    }
                    rotationAngle = (angle).coerceIn(-150f , 150f)
                    currValue = calculateValue(rotationAngle, range)
                    change.consumePositionChange()
                }
            )
        }) {
            Canvas(modifier = Modifier.matchParentSize().onGloballyPositioned {
                val windowBounds = it.boundsInWindow()
                centerX = windowBounds.size.width / 2f
                centerY = windowBounds.size.height / 2f
            }) {
                drawCircle(
                    brush = METALLIC_BRUSH,
                    radius = size.minDimension / 2,
                    style = Stroke(width = strokeWidth.toPx())
                )
            }

            Canvas(
                modifier = Modifier
                    .size(knobSize)
                    .rotate(rotationAngle)
            ) {
                drawLine(
                    color = knobColor,
                    start = Offset(x = size.width / 2, y = 0f),
                    end = Offset(x = size.width / 2, y = size.height / 2),
                    strokeWidth = strokeWidth.toPx(),
                    cap = StrokeCap.Round
                )
            }
        }

        Text(
            text = currValue.toString(),
            color = legendColor,
            style = MaterialTheme.typography.body1,
            textAlign = TextAlign.Center,
            modifier = Modifier
                .align(Alignment.BottomCenter)
                .padding(bottom = 8.dp)
        )
    }
}

private fun calculateRotationAngle(value: Float, range: IntRange):Float {
    val ratio = (value - range.start) / (range.endInclusive - range.start)
    return ratio * 300 - 150
}

private fun calculateValue(rotationAngle: Float, range: IntRange): Float {
    val ratio = (rotationAngle + 150) / 300
    val value = ratio * (range.endInclusive - range.start) + range.start
    return value
}
