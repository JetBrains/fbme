package org.fbme.debugger.common.ui

import androidx.compose.foundation.layout.*
import androidx.compose.foundation.shape.RoundedCornerShape
import androidx.compose.material.*
import androidx.compose.runtime.Composable
import androidx.compose.ui.ExperimentalComposeUiApi
import androidx.compose.ui.Modifier
import androidx.compose.ui.awt.awtEventOrNull
import androidx.compose.ui.input.key.*
import androidx.compose.ui.unit.dp
import org.fbme.debugger.common.ui.colors.tableHeaderSeparatorColor

@Composable
fun VerticalDivider() {
    Divider(
        color = MaterialTheme.colors.tableHeaderSeparatorColor,
        modifier = Modifier
            .fillMaxHeight()
            .width(1.dp)
    )
}

@Composable
fun HorizontalDivider() {
    Divider(
        color = MaterialTheme.colors.tableHeaderSeparatorColor,
        modifier = Modifier
            .fillMaxWidth()
            .height(1.dp)
    )
}

@Composable
fun ItemButton(
    modifier: Modifier = Modifier.size(20.dp),
    onClick: () -> Unit,
    colors: ButtonColors = ButtonDefaults.buttonColors(),
    content: @Composable () -> Unit
) {
    Button(
        onClick = onClick,
        modifier = modifier,
        shape = RoundedCornerShape(6.dp),
        elevation = null,
        colors = colors,
        contentPadding = PaddingValues(0.dp)
    ) {
        content()
    }
}

fun keyUpPressed(keyEvent: KeyEvent) =
    keyEvent.awtEventOrNull?.keyCode == java.awt.event.KeyEvent.VK_UP && keyEvent.type == KeyEventType.KeyDown

fun keyDownPressed(keyEvent: KeyEvent) =
    keyEvent.awtEventOrNull?.keyCode == java.awt.event.KeyEvent.VK_DOWN && keyEvent.type == KeyEventType.KeyDown

fun keyLeftPressed(keyEvent: KeyEvent) =
    keyEvent.awtEventOrNull?.keyCode == java.awt.event.KeyEvent.VK_LEFT && keyEvent.type == KeyEventType.KeyDown

fun keyRightPressed(keyEvent: KeyEvent) =
    keyEvent.awtEventOrNull?.keyCode == java.awt.event.KeyEvent.VK_RIGHT && keyEvent.type == KeyEventType.KeyDown