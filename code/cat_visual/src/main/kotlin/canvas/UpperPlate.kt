import androidx.compose.desktop.ui.tooling.preview.Preview
import androidx.compose.foundation.layout.Arrangement
import androidx.compose.foundation.layout.Row
import androidx.compose.foundation.layout.fillMaxSize
import androidx.compose.material.Button
import androidx.compose.material.Checkbox
import androidx.compose.material.MaterialTheme
import androidx.compose.material.Text
import androidx.compose.runtime.*
import androidx.compose.ui.unit.dp

@Composable
fun UpperPlate() {
    Row(horizontalArrangement = Arrangement.spacedBy(5.dp)) {
        PointerButton()
    }
}
@Composable
@Preview
fun PointerButton() {
    var text by remember { mutableStateOf("P") }

    MaterialTheme {
        Button(onClick = {
            text = "O"
        }) {
            Text(text)
        }
    }
}

@Composable
@Preview
fun RectangleButton(onClickFun: () -> Unit) {
    var text by remember { mutableStateOf("R") }

    MaterialTheme {
        Button(onClick = onClickFun) {
            Text(text)
        }
    }
}


@Composable
@Preview
fun CheckboxButton(onClickFun: () -> Unit) {
    var text by remember { mutableStateOf("CB") }

    MaterialTheme {
        Button(onClick = onClickFun) {
            Text(text)
        }
    }
}

@Composable
@Preview
fun RadioButton(onClickFun: () -> Unit) {
    var text by remember { mutableStateOf("RB") }

    MaterialTheme {
        Button(onClick = onClickFun) {
            Text(text)
        }
    }
}

@Composable
@Preview
fun ToggleButton(onClickFun: () -> Unit) {
    var text by remember { mutableStateOf("TB") }

    MaterialTheme {
        Button(onClick = onClickFun) {
            Text(text)
        }
    }
}

@Composable
@Preview
fun DropdownButton(onClickFun: () -> Unit) {
    var text by remember { mutableStateOf("DB") }

    MaterialTheme {
        Button(onClick = onClickFun) {
            Text(text)
        }
    }
}
