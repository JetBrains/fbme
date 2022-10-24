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

        @JvmStatic
        protected fun escapeXML(text: String?): String? {
            var text = text ?: return null
            text = text.replace("\n", "&#10;")
            text = text.replace("\"", "&#34;")
            text = text.replace("&", "&#38;")
            text = text.replace("'", "&#39;")
            text = text.replace("<", "&#60;")
            text = text.replace(">", "&#62;")
            return text
        }
    }
}
