package example.COUNTER

import androidx.compose.foundation.background
import androidx.compose.foundation.layout.Row
import androidx.compose.foundation.layout.height
import androidx.compose.foundation.layout.width
import androidx.compose.material.Text
import androidx.compose.runtime.Composable
import androidx.compose.ui.Modifier
import androidx.compose.ui.graphics.Color
import androidx.compose.ui.unit.dp
import connection.AbstractClient
import connection.ConnectionFieldRegistry
import lib.elements.getters.Bulb
import lib.elements.getters.TextBox
import lib.elements.setters.Checkbox
import lib.elements.setters.Toggle
import lib.visual.PositionedBox


@Composable
fun LampHMI(client: AbstractClient, id: String) {
    Bulb("$id#LAMP", client)
}
@Composable
fun ToggleHMI(client: AbstractClient, id: String) {
    Toggle("$id#TOGGLE", client)
}

@Composable
fun CounterHMI(client: AbstractClient, id: String) {
    Row {
        Text("Count of changes: ")
        TextBox("$id#COUNT", client, Modifier.width(40.dp).height(30.dp).background(Color.LightGray))
//            PositionedBox( children = {Indicator("count", "225.0.0.2", 65003, registry, 0, 100, 1000.dp)}, x = 100, y = 100)
    }
}

@Composable
fun CounterLampHMI(client: AbstractClient, id: String) {
    PositionedBox(children = {CounterHMI(client, "1")}, x = 200)
    LampHMI(client, "1")
    PositionedBox(children = {example.COUNTER.ToggleHMI(client, "1")}, x = 300, y = 100)
}