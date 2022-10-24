package org.fbme.lib.iec61499.declarations

import org.fbme.lib.common.Declaration
import org.fbme.lib.common.RootElement

interface SystemDeclaration : Declaration, RootElement {
    val applications: MutableList<ApplicationDeclaration>
    val devices: MutableList<DeviceDeclaration>
    val segments: MutableList<SegmentDeclaration>
    val links: MutableList<Link>
    val mappings: MutableList<Mapping>
}
