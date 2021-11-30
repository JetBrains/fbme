package org.fbme.debugger.ui

import androidx.compose.foundation.background
import androidx.compose.foundation.layout.Row
import androidx.compose.material.MaterialTheme
import androidx.compose.runtime.Composable
import androidx.compose.ui.Modifier
import androidx.compose.ui.awt.ComposePanel
import org.fbme.debugger.Debugger
import org.fbme.debugger.tableBackground

fun deployPanel(debugger: Debugger): ComposePanel {
    val composePanel = ComposePanel()

    composePanel.setContent {
        DeployContent(debugger)
    }

    return composePanel
}

@Composable
fun DeployContent(debugger: Debugger) {
    Row(
        modifier = Modifier
            .background(MaterialTheme.colors.tableBackground)
    ) {
        DeploymentTree(debugger)
    }
}