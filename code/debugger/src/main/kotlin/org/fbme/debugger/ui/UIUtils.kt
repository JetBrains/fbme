package org.fbme.debugger

import androidx.compose.foundation.layout.fillMaxHeight
import androidx.compose.foundation.layout.fillMaxWidth
import androidx.compose.foundation.layout.height
import androidx.compose.foundation.layout.width
import androidx.compose.material.Divider
import androidx.compose.material.MaterialTheme
import androidx.compose.runtime.Composable
import androidx.compose.ui.Modifier
import androidx.compose.ui.unit.dp

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