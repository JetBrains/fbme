package org.fbme.ide.richediting.adapters.fbnetwork

import org.fbme.lib.iec61499.descriptors.FBPortDescriptor
import org.fbme.lib.iec61499.fbnetwork.EntryKind

open class PortBase(port: FBPortDescriptor) : Port {
    override val connectionKind: EntryKind = port.connectionKind
}
