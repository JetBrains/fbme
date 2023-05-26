package org.fbme.ide.richediting.viewmodel

import org.fbme.lib.common.Declaration
import org.fbme.lib.iec61499.fbnetwork.EntryKind

interface NetworkPortView {
    val kind: EntryKind
    val component: NetworkComponentView
}

interface NetworkPortViewAdd: NetworkPortView {
    val isSource: Boolean
    val target: Declaration
}
