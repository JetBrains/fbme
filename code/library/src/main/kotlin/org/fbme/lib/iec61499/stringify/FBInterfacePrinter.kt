package org.fbme.lib.iec61499.stringify

import org.fbme.lib.iec61499.declarations.EventDeclaration
import org.fbme.lib.iec61499.declarations.FBInterfaceDeclaration
import org.jdom.Element

class FBInterfacePrinter(declaration: FBInterfaceDeclaration, private val mySubApp: Boolean) :
    PrinterElementBase<FBInterfaceDeclaration>(declaration, if (mySubApp) "SubAppInterfaceList" else "InterfaceList") {
    override fun printElementBody(element: Element) {
        if (mySubApp) {
            printInterfaceWithSubAppEvents(element)
        } else {
            printInterfaceWithEvents(element)
        }
    }

    private fun printInterfaceWithEvents(element: Element) {
        addNullableContent(element, printEvents("EventInputs", this.element.inputEvents))
        addNullableContent(element, printEvents("EventOutputs", this.element.outputEvents))
        addNullableContent(element, ParameterDeclarationPrinter.printAll("InputVars", this.element.inputParameters))
        addNullableContent(element, ParameterDeclarationPrinter.printAll("OutputVars", this.element.outputParameters))
    }

    private fun printInterfaceWithSubAppEvents(element: Element) {
        addNullableContent(element, printSubAppEvents("SubAppEventInputs", this.element.inputEvents))
        addNullableContent(element, printSubAppEvents("SubAppEventOutputs", this.element.outputEvents))
        addNullableContent(element, ParameterDeclarationPrinter.printAll("InputVars", this.element.inputParameters))
        addNullableContent(element, ParameterDeclarationPrinter.printAll("OutputVars", this.element.outputParameters))
    }

    private fun printEvents(collectionTag: String, events: List<EventDeclaration?>): Element? {
        if (events.isEmpty()) {
            return null
        }
        val element = Element(collectionTag)
        for (eventDeclaration in events) {
            element.addContent(EventPrinter.event(eventDeclaration).print())
        }
        return element
    }

    private fun printSubAppEvents(collectionTag: String, events: List<EventDeclaration?>): Element? {
        if (events.isEmpty()) {
            return null
        }
        val element = Element(collectionTag)
        for (eventDeclaration in events) {
            element.addContent(EventPrinter.subAppEvent(eventDeclaration).print())
        }
        return element
    }

    private class EventPrinter private constructor(tag: String, eventDeclaration: EventDeclaration) :
        DeclarationPrinterBase<EventDeclaration>(eventDeclaration, tag) {
        override fun printDeclarationBody(element: Element) {
            for (association in this.element.associations) {
                val with = Element("With")
                with.setAttribute("Var", association.parameterReference.presentation)
                element.addContent(with)
            }
        }

        companion object {
            fun event(eventDeclaration: EventDeclaration?): EventPrinter {
                return EventPrinter("Event", eventDeclaration!!)
            }

            fun subAppEvent(eventDeclaration: EventDeclaration?): EventPrinter {
                return EventPrinter("SubAppEvent", eventDeclaration!!)
            }
        }
    }
}
