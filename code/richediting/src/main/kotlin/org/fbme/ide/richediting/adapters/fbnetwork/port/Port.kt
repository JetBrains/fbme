package org.fbme.ide.richediting.adapters.fbnetwork.port

import org.fbme.lib.iec61499.fbnetwork.EntryKind

interface Port {
    val connectionKind: EntryKind
}
