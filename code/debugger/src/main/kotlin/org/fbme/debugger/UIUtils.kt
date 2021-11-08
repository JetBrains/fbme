package org.fbme.debugger

import androidx.compose.foundation.lazy.LazyItemScope
import androidx.compose.foundation.lazy.LazyListScope
import androidx.compose.runtime.Composable

inline fun <K, V> LazyListScope.items(
    items: MutableMap<K, V>,
    noinline key: ((item: MutableMap.MutableEntry<K, V>) -> Any)? = null,
    crossinline itemContent: @Composable LazyItemScope.(item: MutableMap.MutableEntry<K, V>) -> Unit
) {
    for (item in items) {
        item(null) {
            itemContent(item)
        }
    }
}