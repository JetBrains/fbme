package org.fbme.debugger

import androidx.compose.foundation.layout.*
import androidx.compose.foundation.shape.RoundedCornerShape
import androidx.compose.material.*
import androidx.compose.runtime.Composable
import androidx.compose.ui.Modifier
import androidx.compose.ui.unit.dp
import org.fbme.debugger.ui.colors.tableHeaderSeparatorColor

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
    onClick: () -> Unit,
    colors: ButtonColors = ButtonDefaults.buttonColors(),
    content: @Composable () -> Unit
) {
    Button(
        onClick = onClick,
        modifier = Modifier.size(20.dp),
        shape = RoundedCornerShape(6.dp),
        elevation = null,
        colors = colors,
        contentPadding = PaddingValues(0.dp)
    ) {
        content()
    }
}