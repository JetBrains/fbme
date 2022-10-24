package org.fbme.lib.iec61499.fbnetwork

import org.fbme.lib.common.CompositeReference
import org.fbme.lib.common.ContainedElement

interface FBNetworkConnection : ContainedElement {
    override val container: FBNetwork?
    var path: ConnectionPath?
    val sourceReference: CompositeReference<PortPath<*>>
    val targetReference: CompositeReference<PortPath<*>>
    val kind: EntryKind
}
