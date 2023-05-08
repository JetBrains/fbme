package org.fbme.lib.iec61499.instances

import org.fbme.lib.common.Declaration

interface Instance {
    val parent: Instance?
    val declaration: Declaration
    val rootInstance: Instance
        get() {
            var root = this
            var parent = parent
            while (parent != null) {
                root = parent
                parent = root.parent
            }
            return root
        }
}
