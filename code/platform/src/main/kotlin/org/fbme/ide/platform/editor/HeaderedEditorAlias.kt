package org.fbme.ide.platform.editor

import org.fbme.lib.common.Declaration
import org.fbme.lib.iec61499.declarations.*
import org.fbme.lib.iec61499.fbnetwork.subapp.SubapplicationDeclaration

object HeaderedEditorAlias {
    fun getAlias(declaration: Declaration): String {
        if (declaration is AdapterTypeDeclaration) {
            return "Adapter"
        } else if (declaration is BasicFBTypeDeclaration) {
            return "Basic Function Block"
        } else if (declaration is CompositeFBTypeDeclaration) {
            return "Composite Function Block"
        } else if (declaration is DeviceTypeDeclaration) {
            return "Device"
        } else if (declaration is ResourceTypeDeclaration) {
            return "Resource"
        } else if (declaration is SegmentTypeDeclaration) {
            return "Segment"
        } else if (declaration is ServiceInterfaceFBTypeDeclaration) {
            return "Service Interface Function Block"
        } else if (declaration is SubapplicationDeclaration) {
            return "Subapplication"
        } else if (declaration is SystemDeclaration) {
            return "System"
        }
        return "Library Element"
    }
}
