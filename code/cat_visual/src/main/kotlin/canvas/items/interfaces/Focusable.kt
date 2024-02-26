package canvas.items.interfaces

import androidx.compose.foundation.border
import androidx.compose.foundation.clickable
import androidx.compose.foundation.focusable
import androidx.compose.runtime.MutableState
import androidx.compose.ui.Modifier
import androidx.compose.ui.focus.FocusRequester
import androidx.compose.ui.focus.focusRequester
import androidx.compose.ui.focus.onFocusChanged
import androidx.compose.ui.graphics.Color
import androidx.compose.ui.unit.dp

interface Focusable {
    fun Modifier.makeFocusable(
        focusRequester: FocusRequester,
        color: MutableState<Color>,
    ): Modifier =
        this.clickable { focusRequester.requestFocus() }
            .border(1.dp, color.value)
            .focusRequester(focusRequester)
            .onFocusChanged { color.value = if (it.isFocused) Color.LightGray else Color.Transparent }
            .focusable()
}