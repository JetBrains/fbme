package canvas.items.model

import androidx.compose.ui.Modifier
import canvas.exceptions.UnknownTypeItemException
import canvas.items.impl.LampItem
import canvas.items.impl.TextItem
import canvas.items.interfaces.CanvasItemInterface
import connection.AbstractClient
import kotlinx.serialization.Serializable
import java.util.*

@Serializable
data class JsonCanvasModel(
    val id: String,
    val x: Float,
    val y: Float,
    val inputs: List<Input>,
    val outputs: List<Output>,
    val content: String = "",
    val type: String,
)

fun JsonCanvasModel.toItem(client: AbstractClient): CanvasItemInterface =
    when(type) {
        CanvasItemInterface.Type.TEXT.name -> TextItem(
            id = UUID.fromString(id),
            x = x,
            y = y,
            content = content,
        )
        CanvasItemInterface.Type.LAMP.name -> LampItem(
            id = UUID.fromString(id),
            x = x,
            y = y,
            client = client,
        )
        else -> throw UnknownTypeItemException(id, type)
    }