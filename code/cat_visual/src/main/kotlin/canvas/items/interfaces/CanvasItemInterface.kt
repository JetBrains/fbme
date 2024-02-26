package canvas.items.interfaces

import androidx.compose.runtime.Composable
import canvas.items.model.Input
import canvas.items.model.JsonCanvasModel
import canvas.items.model.Output
import connection.AbstractClient
import java.util.UUID

interface CanvasItemInterface {
    val id: UUID
    var x: Float
    var y: Float
    val inputs: List<Input>
    val outputs: List<Output>
    val type: Type

    @Composable
    fun getContent(deleteCurrentItem: (String) -> Unit)

    fun toModel(): JsonCanvasModel

    enum class Type {
        TEXT,
        LAMP,
        UNKNOWN,
    }
}