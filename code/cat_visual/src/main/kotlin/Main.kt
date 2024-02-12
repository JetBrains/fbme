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
import canvas.items.CustomItem
import canvas.items.TextItem
import connection.*
import example.COUNTER.CounterLampHMI
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
fun canvas(itemList: List<String>) {
    LazyColumn(
        modifier = Modifier
            .fillMaxHeight()
            .fillMaxWidth()
            .zIndex(0f),
//        horizontalAlignment = Alignment.Start,

    ) {
        items(itemList.size) { index ->
            TextItem(text = itemList[index]).getContent()
        }
    }
}

@Composable
fun itemBar(addNewItem: (String) -> Unit) {
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
                addNewItem("Added text")
            }
        ) {
            Text(text = "Add Item")
        }
    }
}

@Composable
fun testItem() {
    var scale by remember { mutableStateOf(1f) }
    var rotation by remember { mutableStateOf(0f) }
    var offset by remember { mutableStateOf(Offset.Zero) }
    val state = rememberTransformableState { zoomChange, offsetChange, rotationChange ->
        scale *= zoomChange
        rotation += rotationChange
        offset += offsetChange
    }
    Box(
        modifier = Modifier
            .graphicsLayer(
                scaleX = scale,
                scaleY = scale,
                rotationZ = rotation,
                translationX = offset.x,
                translationY = offset.y
            )
            .transformable(state = state)
            .background(Color.Blue)
            .width(50.dp)
            .height(50.dp)
    )
}

fun main() = application {
    Window(
        onCloseRequest = ::exitApplication,
        title = "Canvas for CAT",
        state = rememberWindowState(width = 600.dp, height = 600.dp)
    ) {
        var itemList by remember { mutableStateOf(listOf("text1", "text2")) }
            MaterialTheme {
                Row(
                    modifier = Modifier
                        .fillMaxWidth()
                        .fillMaxHeight(),
                ) {
//                CounterLampHMI(client, "1")
                    itemBar { item ->
                        itemList += listOf(item)
                    }
                    canvas(itemList)
                    testItem()
                    client.retrieveValues()
                }

            }
    }
}