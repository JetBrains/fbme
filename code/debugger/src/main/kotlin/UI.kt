package org.fbme.debugger

import androidx.compose.foundation.background
import androidx.compose.foundation.border
import androidx.compose.foundation.clickable
import androidx.compose.foundation.layout.*
import androidx.compose.foundation.lazy.LazyColumn
import androidx.compose.foundation.lazy.items
import androidx.compose.foundation.shape.RoundedCornerShape
import androidx.compose.material.*
import androidx.compose.material.icons.Icons
import androidx.compose.material.icons.filled.Close
import androidx.compose.material.icons.filled.Search
import androidx.compose.runtime.Composable
import androidx.compose.runtime.MutableState
import androidx.compose.runtime.toMutableStateList
import androidx.compose.ui.Alignment
import androidx.compose.ui.Modifier
import androidx.compose.ui.awt.ComposePanel
import androidx.compose.ui.graphics.Color
import androidx.compose.ui.graphics.RectangleShape
import androidx.compose.ui.text.TextStyle
import androidx.compose.ui.text.input.TextFieldValue
import androidx.compose.ui.unit.dp
import androidx.compose.ui.unit.sp
import org.fbme.ide.platform.debugger.Watchable

fun debuggerPanel(watchables: MutableList<Watchable>, searchWatchables: MutableState<TextFieldValue>): ComposePanel {
    val composePanel = ComposePanel()

    composePanel.setContent {
        DebuggerContent(watchables, searchWatchables)
    }

    return composePanel
}

@Composable
fun DebuggerContent(watchables: MutableList<Watchable>, searchWatchables: MutableState<TextFieldValue>) {
    Row(
        modifier = Modifier
            .background(MaterialTheme.colors.tableBackground)
    ) {
        StepsColumn()
        VerticalDivider()
        WatchablesColumn(searchWatchables, watchables)
    }
}

@Composable
fun StepsColumn() {
    Column(
        modifier = Modifier
            .background(MaterialTheme.colors.tableBackground)
            .width(350.dp)
            .fillMaxHeight()
    ) {
        // TODO: display steps
    }
}

@Composable
fun WatchablesColumn(
    searchWatchables: MutableState<TextFieldValue>,
    watchables: MutableList<Watchable>
) {
    Column(
        modifier = Modifier
            .background(MaterialTheme.colors.tableBackground)
            .fillMaxWidth()
            .fillMaxHeight()
    ) {
        Row(
            verticalAlignment = Alignment.CenterVertically,
            modifier = Modifier
                .background(MaterialTheme.colors.tableBackground)
                .fillMaxWidth()
                .padding(4.dp)
        ) {
            SearchView(searchWatchables)
        }
        HorizontalDivider()
        WatchableList(watchables, searchWatchables)
    }
}

@Composable
fun SearchView(search: MutableState<TextFieldValue>) {
    TextField(
        value = search.value,
        onValueChange = { value ->
            search.value = value
        },
        modifier = Modifier
            .border(
                width = 1.dp,
                color = MaterialTheme.colors.tableHeaderSeparatorColor,
                shape = RoundedCornerShape(6.dp)
            )
            .width(300.dp),
        textStyle = TextStyle(fontSize = 14.sp),
        leadingIcon = {
            Icon(
                Icons.Default.Search,
                contentDescription = "",
                modifier = Modifier
                    .padding(2.dp)
                    .size(18.dp)
            )
        },
        trailingIcon = {
            if (search.value != TextFieldValue("")) {
                IconButton(
                    onClick = {
                        search.value = TextFieldValue("")
                    }
                ) {
                    Icon(
                        Icons.Default.Close,
                        contentDescription = "",
                        modifier = Modifier
                            .padding(2.dp)
                            .size(18.dp)
                    )
                }
            }
        },
        singleLine = true,
        shape = RectangleShape,
        colors = TextFieldDefaults.textFieldColors(
            textColor = MaterialTheme.colors.textFieldForeground,
            disabledTextColor = MaterialTheme.colors.textFieldForeground,
            cursorColor = MaterialTheme.colors.textFieldCaretForeground,
            leadingIconColor = MaterialTheme.colors.tableHeaderForeground,
            trailingIconColor = MaterialTheme.colors.tableHeaderForeground,
            backgroundColor = MaterialTheme.colors.tableHeaderBackground,
            focusedIndicatorColor = Color.Transparent,
            unfocusedIndicatorColor = Color.Transparent,
            disabledIndicatorColor = Color.Transparent
        )
    )
}

@Composable
fun WatchableItem(watchable: Watchable, onItemClick: (Watchable) -> Unit) {
    Row(
        modifier = Modifier
            .clickable(onClick = { onItemClick(watchable) })
            .background(MaterialTheme.colors.listBackground)
            .height(20.dp)
            .fillMaxWidth()
            .padding(20.dp, 2.dp)
    ) {
        Text(
            text = watchable.name,
            fontSize = 14.sp,
            color = MaterialTheme.colors.listForeground

        )
    }
}

@Composable
fun WatchableList(watchables: MutableList<Watchable>, state: MutableState<TextFieldValue>) {
    var filteredWatchables: MutableList<Watchable>
    LazyColumn(
        modifier = Modifier
            .background(MaterialTheme.colors.listBackground)
            .fillMaxWidth()
    ) {
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
                watchable = watchable,
                onItemClick = {}
            )
        }
    }
}

@Composable
fun VerticalDivider() {
    Divider(
        color = MaterialTheme.colors.tableHeaderSeparatorColor,
        modifier = Modifier
            .fillMaxHeight()
            .width(1.dp)
    )
}

@Composable
fun HorizontalDivider() {
    Divider(
        color = MaterialTheme.colors.tableHeaderSeparatorColor,
        modifier = Modifier
            .fillMaxWidth()
            .height(1.dp)
    )
}