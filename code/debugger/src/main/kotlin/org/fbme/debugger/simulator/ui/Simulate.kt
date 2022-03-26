//package org.fbme.debugger.simulator.ui
//
//import androidx.compose.foundation.*
//import androidx.compose.foundation.layout.*
//import androidx.compose.foundation.text.BasicTextField
//import androidx.compose.material.ButtonDefaults
//import androidx.compose.material.Icon
//import androidx.compose.material.MaterialTheme
//import androidx.compose.material.Text
//import androidx.compose.material.icons.Icons
//import androidx.compose.material.icons.filled.LocalFireDepartment
//import androidx.compose.runtime.Composable
//import androidx.compose.runtime.MutableState
//import androidx.compose.runtime.mutableStateOf
//import androidx.compose.runtime.remember
//import androidx.compose.ui.Alignment
//import androidx.compose.ui.Modifier
//import androidx.compose.ui.awt.ComposePanel
//import androidx.compose.ui.graphics.Color
//import androidx.compose.ui.graphics.SolidColor
//import androidx.compose.ui.text.TextStyle
//import androidx.compose.ui.unit.dp
//import androidx.compose.ui.unit.sp
//import jetbrains.mps.project.Project
//import org.fbme.debugger.common.ui.ItemButton
//import org.fbme.debugger.simulator.BasicFBData
//import org.fbme.debugger.simulator.FBData
//import org.fbme.debugger.simulator.FBSimulator
//import org.fbme.debugger.simulator.Value
//import org.fbme.debugger.ui.colors.*
//
//class FBDataUIHolder(val fbData: FBData)
//
//fun simulatePanel(fbSimulator: FBSimulator, project: Project): ComposePanel {
//    val composePanel = ComposePanel()
//
//    composePanel.setContent {
//        SimulateContent(fbSimulator, project)
//    }
//
//    return composePanel
//}
//
//@Composable
//fun SimulateContent(fbSimulator: FBSimulator, project: Project) {
//    Row(
//        modifier = Modifier
//            .background(MaterialTheme.colors.tableBackground)
//    ) {
//        ScrollableBox(fbSimulator, project)
//    }
//}
//
//@Composable
//fun ScrollableBox(fbSimulator: FBSimulator, project: Project) {
//    Box {
//        val scrollState = rememberScrollState()
//        Column(
//            modifier = Modifier
//                .verticalScroll(state = scrollState)
//                .fillMaxWidth()
//                .background(MaterialTheme.colors.tableBackground)
//        ) {
//            val fbDataState = remember { mutableStateOf(FBDataUIHolder(fbSimulator.fbData)) }
//
//            val inputEvents = fbDataState.value.fbData.inputEvents
//            val outputEvents = fbDataState.value.fbData.outputEvents
//
//            val inputVariables = fbDataState.value.fbData.inputVariables
//            val outputVariables = fbDataState.value.fbData.outputVariables
//
//            Row(
//                modifier = Modifier.height(20.dp),
//                verticalAlignment = Alignment.CenterVertically
//            ) {
//                Text("Input Events:")
//            }
//            for ((inputEventName, inputEventInfo) in inputEvents) {
//                Row(
//                    modifier = Modifier.height(20.dp),
//                    verticalAlignment = Alignment.CenterVertically
//                ) {
//                    TriggerEventButton(fbDataState, fbSimulator, inputEventName, project)
//                    Spacer(modifier = Modifier.width(10.dp))
//                    Text("$inputEventName :")
//                    Spacer(modifier = Modifier.width(10.dp))
//                    Text(inputEventInfo.count.toString())
//                }
//            }
//
//            Row(
//                modifier = Modifier.height(20.dp),
//                verticalAlignment = Alignment.CenterVertically
//            ) {
//                Text("Output Events:")
//            }
//            for ((outputEventName, outputEventInfo) in outputEvents) {
//                Row(
//                    modifier = Modifier.height(20.dp),
//                    verticalAlignment = Alignment.CenterVertically
//                ) {
//                    Text("$outputEventName :")
//                    Spacer(modifier = Modifier.width(10.dp))
//                    Text(outputEventInfo.count.toString())
//                }
//            }
//
//            Row(
//                modifier = Modifier.height(20.dp),
//                verticalAlignment = Alignment.CenterVertically
//            ) {
//                Text("Input Variables:")
//            }
//            for ((inputVariableName, inputVariableValue) in inputVariables) {
//                Row(
//                    modifier = Modifier.height(20.dp),
//                    verticalAlignment = Alignment.CenterVertically
//                ) {
//                    Text("$inputVariableName :")
//                    Spacer(modifier = Modifier.width(10.dp))
//                    val text = remember { mutableStateOf(inputVariableValue.value.toString()) }
//                    val textColor = remember { mutableStateOf(tableForeground) }
//                    BasicTextField(
//                        value = text.value,
//                        onValueChange = {
//                            val newValue = when (inputVariableValue.value) {
//                                is Boolean -> it.toBooleanStrictOrNull()
//                                is Int -> it.toIntOrNull()
//                                is String -> it
//                                else -> null
//                            }
//                            if (newValue == null) {
//                                textColor.value = Color.Red.awt
//                            } else {
//                                textColor.value = tableForeground
//                                fbSimulator.setInputVariable(inputVariableName, Value(newValue))
//                            }
//                            text.value = it
//                        },
//                        cursorBrush = SolidColor(MaterialTheme.colors.textFieldCaretForeground),
//                        textStyle = TextStyle(color = textColor.value.compose, fontSize = 14.sp),
//                        singleLine = true
//                    )
//                }
//            }
//
//            Row(
//                modifier = Modifier.height(20.dp),
//                verticalAlignment = Alignment.CenterVertically
//            ) {
//                Text("Output Variables:")
//            }
//            for ((outputVariableName, outputVariableValue) in outputVariables) {
//                Row(
//                    modifier = Modifier.height(20.dp),
//                    verticalAlignment = Alignment.CenterVertically
//                ) {
//                    Text("$outputVariableName :")
//                    Spacer(modifier = Modifier.width(10.dp))
//                    Text(outputVariableValue.value.toString())
//                }
//            }
//            if (fbDataState.value.fbData is BasicFBData) {
//                Row(
//                    modifier = Modifier.height(20.dp),
//                    verticalAlignment = Alignment.CenterVertically
//                ) {
//                    Text("State of ECC:")
//                }
//                Row(
//                    modifier = Modifier.height(20.dp),
//                    verticalAlignment = Alignment.CenterVertically
//                ) {
//                    Text((fbDataState.value.fbData as? BasicFBData)!!.currentState)
//                }
//            }
//        }
//        val scrollbarAdapter = rememberScrollbarAdapter(scrollState = scrollState)
//        VerticalScrollbar(
//            adapter = scrollbarAdapter,
//            modifier = Modifier
//                .align(Alignment.CenterEnd)
//                .fillMaxHeight()
//        )
//    }
//}
//
//@Composable
//private fun TriggerEventButton(
//    fbDataState: MutableState<FBDataUIHolder>,
//    fbSimulator: FBSimulator,
//    inputEventName: String,
//    project: Project
//) {
//    ItemButton(
//        onClick = {
//            project.modelAccess.executeCommand {
//                fbSimulator.triggerInputEvent(inputEventName)
//            }
//            fbDataState.value = FBDataUIHolder(fbSimulator.fbData)
//        },
//        colors = ButtonDefaults.buttonColors(
//            backgroundColor = Color.Transparent,
//            contentColor = Color.Red
//        )
//    ) {
//        Icon(
//            Icons.Default.LocalFireDepartment,
//            contentDescription = "Trigger Event",
//            modifier = Modifier.size(20.dp),
//        )
//    }
//}