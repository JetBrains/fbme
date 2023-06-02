import androidx.compose.foundation.background
import androidx.compose.foundation.layout.Box
import androidx.compose.foundation.layout.Column
import androidx.compose.foundation.layout.fillMaxHeight
import androidx.compose.foundation.layout.fillMaxWidth
import androidx.compose.material.MaterialTheme
import androidx.compose.material.Scaffold
import androidx.compose.runtime.Composable
import androidx.compose.runtime.snapshots.SnapshotStateList
import androidx.compose.ui.Modifier
import androidx.compose.ui.graphics.Color
import androidx.compose.ui.unit.dp
import androidx.compose.ui.window.Window
import androidx.compose.ui.window.application
import androidx.compose.ui.window.rememberWindowState
import canvas.items.CustomItem
import connection.*
import connection.field.BoolField
import connection.field.TYPE_ID
import example.COUNTER.CounterLampHMI
import example.WATER_TANK.System
import example.WATER_TANK.WaterTank
import serializer.PlainMapping
import serializer.getConf
import serializer.getMapping
import serializer.getPlainMapping
import java.io.BufferedReader
import java.io.File
import java.io.InputStreamReader
import java.net.DatagramPacket
import java.net.InetAddress
import java.net.ServerSocket

@Composable
fun CanvasContext(listFigures: SnapshotStateList<CustomItem>) {
    Scaffold { innerPadding ->
        Box(Modifier.fillMaxHeight().fillMaxWidth().background(Color.Gray)) {
            listFigures.forEach { f -> f.create() }
        }
    }
}

fun buildMappingClient(modelFile: String, configFile: String = "", mode: String = ""): AbstractClient {
    if (mode.equals("plain")) {
        val modelText = File(modelFile).readText()
        val mapping = getPlainMapping(modelText)

        return PlainClient(mapping)
    }

    val modelText = File(modelFile).readText()
    val mapping = getMapping(modelText)
    val configText = File(configFile).readText()
    val conf = getConf(configText)

    if (mode.equals("json")) {
        return JSONClient(mapping, conf)
    }
    return NamedClient(mapping, conf)
}

//val client = buildMappingClient("src/main/kotlin/example/COUNTER/COUNTER.xml", "src/main/kotlin/example/COUNTER/COUNTER_CONF.xml", "")
val client = buildMappingClient("src/main/kotlin/example/COUNTER/COUNTER.xml", "src/main/kotlin/example/COUNTER/COMMON_CONF.xml", "json")
//val client = buildMappingClient("src/main/kotlin/example/WATER_TANK/WATER_TANK.xml", "src/main/kotlin/example/WATER_TANK/WATER_TANK_CONF.xml", "")
//val client = buildMappingClient("src/main/kotlin/example/WATER_TANK/WATER_TANK.xml", "src/main/kotlin/example/WATER_TANK/COMMON_CONF.xml", "json")


fun main() = application {
    Window(
        onCloseRequest = ::exitApplication,
        title = "Canvas for CAT",
        state = rememberWindowState(width = 600.dp, height = 600.dp)
    ) {
        MaterialTheme {
            CounterLampHMI(client, "1")
            client.retrieveValues()
        }
    }
}