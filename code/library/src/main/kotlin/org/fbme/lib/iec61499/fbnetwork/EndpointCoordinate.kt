package org.fbme.lib.iec61499.fbnetwork

import org.fbme.lib.common.CompositeReference
import org.fbme.lib.common.Element

interface EndpointCoordinate : Element {
    var x: Int
    var y: Int
    val portReference: CompositeReference<PortPath<*>>
}
