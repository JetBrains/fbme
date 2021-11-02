package org.fbme.debugger

import androidx.compose.foundation.background
import androidx.compose.foundation.clickable
import androidx.compose.foundation.layout.*
import androidx.compose.foundation.lazy.LazyColumn
import androidx.compose.foundation.lazy.items
import androidx.compose.material.*
import androidx.compose.material.icons.Icons
import androidx.compose.material.icons.filled.Close
import androidx.compose.material.icons.filled.Search
import androidx.compose.runtime.Composable
import androidx.compose.runtime.MutableState
import androidx.compose.runtime.toMutableStateList
import androidx.compose.ui.Modifier
import androidx.compose.ui.graphics.Color
import androidx.compose.ui.graphics.RectangleShape
import androidx.compose.ui.text.TextStyle
import androidx.compose.ui.text.input.TextFieldValue
import androidx.compose.ui.unit.dp
import androidx.compose.ui.unit.sp
import org.fbme.ide.platform.debugger.Watchable

@Composable
fun SearchView(state: MutableState<TextFieldValue>) {
    TextField(
        value = state.value,
        onValueChange = { value ->
            state.value = value
        },
        modifier = Modifier.fillMaxWidth(),
        textStyle = TextStyle(color = MaterialTheme.colors.onPrimary, fontSize = 16.sp),
        leadingIcon = {
            Icon(
                Icons.Default.Search,
                contentDescription = "",
                modifier = Modifier
                    .padding(2.dp)
                    .size(24.dp)
            )
        },
        trailingIcon = {
            if (state.value != TextFieldValue("")) {
                IconButton(
                    onClick = {
                        state.value = TextFieldValue("")
                    }
                ) {
                    Icon(
                        Icons.Default.Close,
                        contentDescription = "",
                        modifier = Modifier
                            .padding(2.dp)
                            .size(24.dp)
                    )
                }
            }
        },
        singleLine = true,
        shape = RectangleShape,
        colors = TextFieldDefaults.textFieldColors(
            textColor = MaterialTheme.colors.onPrimary,
            cursorColor = MaterialTheme.colors.onPrimary,
            leadingIconColor = MaterialTheme.colors.onPrimary,
            trailingIconColor = MaterialTheme.colors.onPrimary,
            backgroundColor = MaterialTheme.colors.primary,
            focusedIndicatorColor = Color.Transparent,
            unfocusedIndicatorColor = Color.Transparent,
            disabledIndicatorColor = Color.Transparent
        )
    )
}

@Composable
fun WatchableItem(name: String, onItemClick: (String) -> Unit) {
    Row(
        modifier = Modifier
            .clickable(onClick = { onItemClick(name) })
            .background(MaterialTheme.colors.secondary)
            .height(24.dp)
            .fillMaxWidth()
            .padding(8.dp, 2.dp)
    ) {
        Text(text = name, fontSize = 16.sp, color = MaterialTheme.colors.onSecondary)
    }
}

@Composable
fun WatchableList(watchables: MutableList<Watchable>, state: MutableState<TextFieldValue>) {
    var filteredWatchables: MutableList<Watchable>
    LazyColumn(modifier = Modifier.fillMaxWidth()) {
        val search = state.value.text
        filteredWatchables = if (search.isEmpty()) {
            watchables
        } else {
            watchables.filter { watchable ->
                watchable.name.lowercase().contains(search.lowercase())
            }.toMutableStateList()
        }
        items(filteredWatchables, null) { watchable ->
            WatchableItem(
                name = watchable.name,
                onItemClick = { _ ->
                    // TODO
                }
            )
        }
    }
}