package org.fbme.ide.richediting.adapters.fbnetwork.port

import org.fbme.lib.iec61499.descriptors.FBPortDescriptor
import org.fbme.lib.iec61499.fbnetwork.EntryKind

open class PortBase(val port: FBPortDescriptor) : Port {
    override val connectionKind: EntryKind
        get() = port.connectionKind
}
