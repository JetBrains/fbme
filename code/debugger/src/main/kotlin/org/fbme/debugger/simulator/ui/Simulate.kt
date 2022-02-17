package org.fbme.debugger.simulator.ui

import androidx.compose.foundation.*
import androidx.compose.foundation.layout.*
import androidx.compose.material.ButtonDefaults
import androidx.compose.material.Icon
import androidx.compose.material.MaterialTheme
import androidx.compose.material.Text
import androidx.compose.material.icons.Icons
import androidx.compose.material.icons.filled.LocalFireDepartment
import androidx.compose.runtime.Composable
import androidx.compose.ui.Alignment
import androidx.compose.ui.Modifier
import androidx.compose.ui.awt.ComposePanel
import androidx.compose.ui.graphics.Color
import androidx.compose.ui.unit.dp
import jetbrains.mps.project.Project
import org.fbme.debugger.ItemButton
import org.fbme.debugger.simulator.FBSimulator
import org.fbme.debugger.ui.colors.tableBackground

fun simulatePanel(fbSimulator: FBSimulator, project: Project): ComposePanel {
    val composePanel = ComposePanel()

    composePanel.setContent {
        SimulateContent(fbSimulator, project)
    }

    return composePanel
}

@Composable
fun SimulateContent(fbSimulator: FBSimulator, project: Project) {
    Row(
        modifier = Modifier
            .background(MaterialTheme.colors.tableBackground)
    ) {
        ScrollableBox(fbSimulator, project)
    }
}

@Composable
fun ScrollableBox(fbSimulator: FBSimulator, project: Project) {
    Box {
        val scrollState = rememberScrollState()
        Column(
            modifier = Modifier
                .verticalScroll(state = scrollState)
                .fillMaxWidth()
                .background(MaterialTheme.colors.tableBackground)
        ) {
            val inputEvents = fbSimulator.fbData.inputEvents
            val outputEvents = fbSimulator.fbData.outputEvents

            val inputVariables = fbSimulator.fbData.inputVariables
            val outputVariables = fbSimulator.fbData.outputVariables


            Row(
                modifier = Modifier.height(20.dp),
                verticalAlignment = Alignment.CenterVertically
            ) {
                Text("Input Events:")
            }
            for ((inputEventName, inputEventInfo) in inputEvents) {
                Row(
                    modifier = Modifier.height(20.dp),
                    verticalAlignment = Alignment.CenterVertically
                ) {
                    TriggerEventButton(fbSimulator, inputEventName, project)
                    Spacer(modifier = Modifier.width(10.dp))
                    Text("$inputEventName :")
                    Spacer(modifier = Modifier.width(10.dp))
                    Text(inputEventInfo.count.toString())
                }
            }

            Row(
                modifier = Modifier.height(20.dp),
                verticalAlignment = Alignment.CenterVertically
            ) {
                Text("Output Events:")
            }
            for ((outputEventName, outputEventInfo) in outputEvents) {
                Row(
                    modifier = Modifier.height(20.dp),
                    verticalAlignment = Alignment.CenterVertically
                ) {
                    Text("$outputEventName :")
                    Spacer(modifier = Modifier.width(10.dp))
                    Text(outputEventInfo.count.toString())
                }
            }

            Row(
                modifier = Modifier.height(20.dp),
                verticalAlignment = Alignment.CenterVertically
            ) {
                Text("Input Variables:")
            }
            for ((inputVariableName, inputVariableValue) in inputVariables) {
                Row(
                    modifier = Modifier.height(20.dp),
                    verticalAlignment = Alignment.CenterVertically
                ) {
                    Text("$inputVariableName :")
                    Spacer(modifier = Modifier.width(10.dp))
                    Text(inputVariableValue.value.toString())
                }
            }


            Row(
                modifier = Modifier.height(20.dp),
                verticalAlignment = Alignment.CenterVertically
            ) {
                Text("Output Variables:")
            }
            for ((outputVariableName, outputVariableValue) in outputVariables) {
                Row(
                    modifier = Modifier.height(20.dp),
                    verticalAlignment = Alignment.CenterVertically
                ) {
                    Text("$outputVariableName :")
                    Spacer(modifier = Modifier.width(10.dp))
                    Text(outputVariableValue.value.toString())
                }
            }
        }
        val scrollbarAdapter = rememberScrollbarAdapter(scrollState = scrollState)
        VerticalScrollbar(
            adapter = scrollbarAdapter,
            modifier = Modifier
                .align(Alignment.CenterEnd)
                .fillMaxHeight()
        )
    }
}

@Composable
private fun TriggerEventButton(fbSimulator: FBSimulator, inputEventName: String, project: Project) {
    ItemButton(
        onClick = {
            project.modelAccess.executeCommand {
                fbSimulator.triggerEvent(inputEventName)
            }
        },
        colors = ButtonDefaults.buttonColors(
            backgroundColor = Color.Transparent,
            contentColor = Color.Red
        )
    ) {
        Icon(
            Icons.Default.LocalFireDepartment,
            contentDescription = "Trigger Event",
            modifier = Modifier.size(20.dp),
        )
    }
}