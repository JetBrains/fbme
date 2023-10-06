package canvas.items.impl

import androidx.compose.foundation.clickable
import androidx.compose.foundation.layout.*
import androidx.compose.runtime.Composable
import androidx.compose.ui.Modifier
import androidx.compose.ui.unit.dp
import canvas.items.interfaces.CanvasItemInterface
import canvas.items.model.Input
import canvas.items.model.JsonCanvasModel
import canvas.items.model.Output
import connection.AbstractClient
import kotlinx.serialization.Serializable
import serializer.SerializationUtils
import java.util.UUID

open class AbstractItem(
    override val id: UUID = UUID.randomUUID(),
    override var x: Float,
    override var y: Float,
    override val inputs: List<Input> = listOf(),
    override val outputs: List<Output> = listOf(),
    protected open val modifier: Modifier = Modifier,
    protected open val content: Any? = null,
    protected open val client: AbstractClient? = null,
): CanvasItemInterface {

    override val type: CanvasItemInterface.Type
        get() = CanvasItemInterface.Type.UNKNOWN

    override fun toModel(): JsonCanvasModel =
        JsonCanvasModel(
            id = id.toString(),
            x = x,
            y = y,
            inputs = inputs,
            outputs = outputs,
            type = type.toString(),
            content = content.toString(),
        )

    @Composable
    override fun getContent(deleteCurrentItem: (String) -> Unit) {
        Box(modifier = modifier
            .wrapContentSize())
    }
}