package org.fbme.lib.iec61499.declarations.hierarchies

import org.fbme.lib.common.Declaration
import org.fbme.lib.common.DeclarationPath
import org.fbme.lib.iec61499.declarations.ApplicationDeclaration
import org.fbme.lib.iec61499.fbnetwork.subapp.SubapplicationDeclaration

abstract class ApplicationHierarchy internal constructor() : DeclarationPath {
    class Root(val application: ApplicationDeclaration) : ApplicationHierarchy() {
        override val declarations: List<Declaration>
            get() {
                val res = ArrayList<Declaration>()
                res.add(application)
                return res
            }
    }

    class Subapplication(val parent: ApplicationHierarchy, val subapplication: SubapplicationDeclaration) :
        ApplicationHierarchy() {
        override val declarations: List<Declaration>
            get() {
                return parent.declarations.plus(subapplication)
            }
    }
}
