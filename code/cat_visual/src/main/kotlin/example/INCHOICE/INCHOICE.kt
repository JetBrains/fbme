//package example.INCHOICE
//
//import androidx.compose.foundation.background
//import androidx.compose.foundation.layout.Box
//import androidx.compose.foundation.layout.Column
//import androidx.compose.foundation.layout.height
//import androidx.compose.foundation.layout.width
//import androidx.compose.material.Switch
//import androidx.compose.material.Text
//import androidx.compose.runtime.*
//import androidx.compose.ui.Modifier
//import androidx.compose.ui.graphics.Color
//import androidx.compose.ui.unit.dp
//import connection.field.BoolField
//import connection.field.ConnectionField
//import connection.field.StringField
//import connection.provider.ConnectionProvider
//
//val field: ConnectionField<Boolean> = BoolField()
//val toggleField: ConnectionField<Boolean> = BoolField()
//val ipField: ConnectionField<String> = StringField()
//
//var connectionProvider: ConnectionProvider<Boolean> = ConnectionProvider(field, 65001)
//var connectionProviderToggle: ConnectionProvider<Boolean> = ConnectionProvider(toggleField, 65000)
//var connectionProviderIpText: ConnectionProvider<String> = ConnectionProvider(ipField, 65002)
//
//
//val ping = 1
//
//@Composable
//fun LampToggle() {
//    val checkedState = remember { toggleField }
//    Switch(
//        checked = checkedState.contentState.value,
//        onCheckedChange = {
//            checkedState.setValue(it)
//            connectionProviderToggle.request()}
//    )
//}
//
//
//val trueColor = Color.Yellow
//val falseColor = Color.Black
//
//
//@Composable
//fun Lamp_HMI() {
//    fun getColor(s: Boolean): Color {
//        if (s) {
//            return trueColor
//        } else {
//            return falseColor
//        }
//    }
//
//
//    var checkedState = remember{ field }
//    Column {
//        Box(
//            modifier = Modifier.background(color = if (checkedState.contentState.value) trueColor else falseColor)
//                .width(600.dp)
//                .height(600.dp)
//        ) {
//            connectionProvider.response()
//        }
//        Box(
//            modifier = Modifier.background(color = Color.Gray)
//                .width(200.dp)
//                .height(200.dp)
//        ) {
//            Text(ipField.contentState.value)
//            connectionProviderIpText.response()
//        }
//    }
//}
