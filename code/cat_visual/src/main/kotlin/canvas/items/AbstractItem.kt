package canvas.items

import androidx.compose.foundation.clickable
import androidx.compose.foundation.layout.*
import androidx.compose.runtime.Composable
import androidx.compose.ui.Modifier
import androidx.compose.ui.unit.dp
import java.util.UUID

open class AbstractItem(
    private val id: UUID = UUID.randomUUID(),
    private var x: Int,
    private var y: Int,
    private val inputs: List<String> = listOf(),
    private val outputs: List<String> = listOf(),
    private val modifier: Modifier = Modifier,
) {

    @Composable
    open fun getContent() {
        Box(modifier = modifier
            .wrapContentSize())
    }
}