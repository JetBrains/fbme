package org.fbme.debugger.ui

import androidx.compose.foundation.background
import androidx.compose.foundation.layout.Row
import androidx.compose.material.MaterialTheme
import androidx.compose.runtime.Composable
import androidx.compose.ui.Modifier
import androidx.compose.ui.awt.ComposePanel
import org.fbme.debugger.Debugger
import org.fbme.debugger.VerticalDivider
import org.fbme.debugger.ui.colors.tableHeaderBackground

fun debugPanel(debugger: Debugger): ComposePanel {
    val composePanel = ComposePanel()

    composePanel.setContent {
        DebugContent(debugger)
    }

    return composePanel
}

@Composable
fun DebugContent(debugger: Debugger) {
    Row(
        modifier = Modifier
            .background(MaterialTheme.colors.tableHeaderBackground)
    ) {
        MenuColumn(debugger)
        VerticalDivider()
        StatesColumn(debugger)
        VerticalDivider()
        WatchablesColumn(debugger)
    }
}