package org.fbme.debugger.ui
//
//import androidx.compose.foundation.background
//import androidx.compose.foundation.layout.*
//import androidx.compose.foundation.rememberScrollState
//import androidx.compose.foundation.shape.RoundedCornerShape
//import androidx.compose.foundation.verticalScroll
//import androidx.compose.material.Button
//import androidx.compose.material.ButtonDefaults
//import androidx.compose.material.Icon
//import androidx.compose.material.MaterialTheme
//import androidx.compose.material.icons.Icons
//import androidx.compose.material.icons.filled.DeleteSweep
//import androidx.compose.runtime.Composable
//import androidx.compose.ui.Alignment
//import androidx.compose.ui.Modifier
//import androidx.compose.ui.unit.dp
//import org.fbme.debugger.Debugger
//import org.fbme.debugger.ui.colors.tableHeaderBackground
//import org.fbme.debugger.ui.colors.tableHeaderForeground
//
//@Composable
//fun MenuColumn(debugger: Debugger) {
//    val scrollState = rememberScrollState()
//    Column(
//        horizontalAlignment = Alignment.CenterHorizontally,
//        modifier = Modifier
//            .verticalScroll(state = scrollState)
//            .fillMaxHeight()
//            .background(MaterialTheme.colors.tableHeaderBackground)
//            .padding(4.dp)
//    ) {
//        Button(
//            onClick = {
//                debugger.clear()
//            },
//            modifier = Modifier.size(26.dp),
//            shape = RoundedCornerShape(6.dp),
//            elevation = null,
//            colors = ButtonDefaults.buttonColors(
//                backgroundColor = MaterialTheme.colors.tableHeaderBackground,
//                contentColor = MaterialTheme.colors.tableHeaderForeground
//            ),
//            contentPadding = PaddingValues(3.dp)
//        ) {
//            Icon(
//                Icons.Default.DeleteSweep,
//                contentDescription = "Clear",
//                modifier = Modifier.size(20.dp),
//                tint = MaterialTheme.colors.tableHeaderForeground
//            )
//        }
//    }
//}