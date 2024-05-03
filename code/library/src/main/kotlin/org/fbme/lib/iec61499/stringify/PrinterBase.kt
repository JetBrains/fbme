package org.fbme.lib.iec61499.stringify

import org.antlr.v4.runtime.misc.Nullable
import org.fbme.lib.common.Element
import org.jdom.Content

abstract class PrinterBase<ElementT : Element>(protected val element: ElementT) {
    companion object {
        @JvmStatic
        protected fun addNullableContent(parent: org.jdom.Element, @Nullable child: Content?) {
            if (child == null) {
                return
            }
            parent.addContent(child)
        }
    }
}
