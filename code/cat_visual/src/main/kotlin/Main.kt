import androidx.compose.foundation.background
import androidx.compose.foundation.gestures.rememberTransformableState
import androidx.compose.foundation.gestures.transformable
import androidx.compose.foundation.layout.*
import androidx.compose.foundation.lazy.LazyColumn
import androidx.compose.material.Button
import androidx.compose.material.MaterialTheme
import androidx.compose.material.Scaffold
import androidx.compose.material.Text
import androidx.compose.runtime.*
import androidx.compose.runtime.snapshots.SnapshotStateList
import androidx.compose.ui.Alignment
import androidx.compose.ui.Modifier
import androidx.compose.ui.geometry.Offset
import androidx.compose.ui.graphics.Color
import androidx.compose.ui.graphics.graphicsLayer
import androidx.compose.ui.unit.dp
import androidx.compose.ui.window.Window
import androidx.compose.ui.window.application
import androidx.compose.ui.window.rememberWindowState
import androidx.compose.ui.zIndex
import canvas.items.impl.CustomItem
import canvas.items.impl.LampItem
import canvas.items.impl.TextItem
import canvas.items.interfaces.CanvasItemInterface
import canvas.items.model.JsonCanvasModel
import canvas.items.model.toItem
import connection.*
import example.COUNTER.CounterLampHMI
import kotlinx.serialization.decodeFromString
import kotlinx.serialization.encodeToString
import kotlinx.serialization.json.Json
import serializer.SerializationUtils
import serializer.getConf
import serializer.getMapping
import serializer.getPlainMapping
import java.io.File

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

@Composable
fun canvas(
    itemList: List<CanvasItemInterface>,
    deleteItem: (String) -> Unit,
) {
    LazyColumn(
        modifier = Modifier
            .fillMaxHeight()
            .fillMaxWidth()
            .zIndex(0f),
    ) {
        items(itemList.size) { index ->
            itemList[index].getContent { deleteItem(it)}
        }
    }
}

@Composable
fun itemBar(
    itemList: List<CanvasItemInterface>,
    addNewItem: (CanvasItemInterface) -> Unit
) {
    Column(
        modifier = Modifier
            .background(Color.LightGray)
            .width(100.dp)
            .fillMaxHeight()
            .zIndex(-2f),
        horizontalAlignment = Alignment.End,
    ) {
        Button(
            modifier = Modifier.align(alignment = Alignment.CenterHorizontally),
            onClick = {
                addNewItem(TextItem(content = "AddedText"))
            }
        ) {
            Text(text = "Add text")
        }
        Button(
            modifier = Modifier.align(alignment = Alignment.CenterHorizontally),
            onClick = {
                addNewItem(LampItem(client = client))
            }
        ) {
            Text(text = "Add lamp")
        }
        Button(
            modifier = Modifier.align(alignment = Alignment.CenterHorizontally),
            onClick = {
                val x = itemList.map {it.toModel()}
                val json = Json.encodeToString(x)
                SerializationUtils.saveSnapshot(json)
            }
        ) {
            Text(text = "save")
        }
    }
}

fun main() = application {
    Window(
        onCloseRequest = ::exitApplication,
        title = "Canvas for CAT",
        state = rememberWindowState(width = 600.dp, height = 600.dp)
    ) {
        val listxxx = Json.decodeFromString<List<JsonCanvasModel>>(SerializationUtils.readSnapshot())
        var itemList by remember { mutableStateOf(listxxx.map { it.toItem(client) }) }
            MaterialTheme {
                Row(
                    modifier = Modifier
                        .fillMaxWidth()
                        .fillMaxHeight(),
                ) {
//                CounterLampHMI(client, "1")
                    itemBar(itemList) { item ->
                        itemList += listOf(item)
                    }
                    canvas(itemList) { idToDelete ->
                        itemList = itemList.filter { it.id.toString() != idToDelete }
                        val x = 1
                        println(itemList.map { it.id })
                    }
                    client.retrieveValues()
                }

            }
    }
}