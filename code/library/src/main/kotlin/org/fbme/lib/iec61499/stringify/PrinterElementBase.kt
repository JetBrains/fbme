package org.fbme.lib.iec61499.stringify

import org.antlr.v4.runtime.misc.Nullable
import org.fbme.lib.common.Element

abstract class PrinterElementBase<ElementT : Element>(element: ElementT, private val myTag: String) :
    PrinterBase<ElementT>(element) {

    fun print(): org.jdom.Element {
        val element = org.jdom.Element(myTag)
        printElementBody(element)
        return element
    }

    @Nullable
    fun printNullable(): org.jdom.Element? {
        val element = print()
        return if (element.content.isEmpty()) {
            null
        } else element
    }

    protected abstract fun printElementBody(element: org.jdom.Element)
}
