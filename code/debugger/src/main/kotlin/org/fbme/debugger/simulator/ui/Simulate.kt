package org.fbme.debugger.simulator.ui

import androidx.compose.foundation.background
import androidx.compose.foundation.layout.Row
import androidx.compose.material.MaterialTheme
import androidx.compose.material.Text
import androidx.compose.runtime.Composable
import androidx.compose.ui.Modifier
import androidx.compose.ui.awt.ComposePanel
import org.fbme.debugger.ui.colors.tableBackground

fun simulatePanel(): ComposePanel {
    val composePanel = ComposePanel()

    composePanel.setContent {
        SimulateContent()
    }

    return composePanel
}

@Composable
fun SimulateContent() {
    Row(
        modifier = Modifier
            .background(MaterialTheme.colors.tableBackground)
    ) {
        Text("Simulator")
    }
}