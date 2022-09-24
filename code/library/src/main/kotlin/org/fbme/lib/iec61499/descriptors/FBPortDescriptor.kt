package org.fbme.lib.iec61499.descriptors

import org.fbme.lib.common.Declaration
import org.fbme.lib.iec61499.fbnetwork.EntryKind

class FBPortDescriptor(
    val name: String,
    val connectionKind: EntryKind,
    val position: Int,
    val isInput: Boolean,
    val isValid: Boolean,
    val declaration: Declaration?
)
