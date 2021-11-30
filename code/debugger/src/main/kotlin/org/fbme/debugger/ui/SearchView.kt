package org.fbme.debugger.ui

import androidx.compose.foundation.background
import androidx.compose.foundation.border
import androidx.compose.foundation.clickable
import androidx.compose.foundation.interaction.MutableInteractionSource
import androidx.compose.foundation.layout.*
import androidx.compose.foundation.shape.RoundedCornerShape
import androidx.compose.foundation.text.BasicTextField
import androidx.compose.material.Icon
import androidx.compose.material.MaterialTheme
import androidx.compose.material.icons.Icons
import androidx.compose.material.icons.filled.Close
import androidx.compose.material.icons.filled.Search
import androidx.compose.runtime.Composable
import androidx.compose.runtime.MutableState
import androidx.compose.runtime.remember
import androidx.compose.ui.Alignment
import androidx.compose.ui.Modifier
import androidx.compose.ui.graphics.SolidColor
import androidx.compose.ui.text.TextStyle
import androidx.compose.ui.text.input.TextFieldValue
import androidx.compose.ui.unit.dp
import androidx.compose.ui.unit.sp
import org.fbme.debugger.tableBackground
import org.fbme.debugger.tableForeground
import org.fbme.debugger.tableHeaderSeparatorColor
import org.fbme.debugger.textFieldCaretForeground

@Composable
fun SearchView(search: MutableState<TextFieldValue>) {
    Row(
        modifier = Modifier
            .border(
                width = 1.dp,
                color = MaterialTheme.colors.tableHeaderSeparatorColor,
                shape = RoundedCornerShape(6.dp)
            )
            .width(300.dp)
            .height(26.dp)
            .background(color = MaterialTheme.colors.tableBackground, shape = RoundedCornerShape(6.dp)),
        verticalAlignment = Alignment.CenterVertically
    ) {
        Icon(
            Icons.Default.Search,
            contentDescription = "Search",
            modifier = Modifier
                .size(22.dp)
                .padding(start = 5.dp),
            tint = MaterialTheme.colors.tableForeground
        )
        BasicTextField(
            value = search.value,
            onValueChange = { value ->
                search.value = value
            },
            modifier = Modifier
                .padding(horizontal = 5.dp)
                .fillMaxWidth()
                .weight(1f),
            cursorBrush = SolidColor(MaterialTheme.colors.textFieldCaretForeground),
            textStyle = TextStyle(color = MaterialTheme.colors.tableForeground, fontSize = 14.sp),
            singleLine = true
        )
        if (search.value != TextFieldValue("")) {
            Icon(
                Icons.Default.Close,
                contentDescription = "Clear",
                modifier = Modifier
                    .clickable(
                        interactionSource = remember { MutableInteractionSource() },
                        indication = null
                    ) {
                        search.value = TextFieldValue("")
                    }
                    .size(22.dp)
                    .padding(end = 5.dp),
                tint = MaterialTheme.colors.tableForeground
            )
        }
    }
}