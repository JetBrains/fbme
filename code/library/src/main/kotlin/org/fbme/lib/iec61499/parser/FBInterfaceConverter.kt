package org.fbme.lib.iec61499.parser

import org.fbme.lib.common.Identifier
import org.fbme.lib.iec61499.declarations.EventDeclaration
import org.fbme.lib.iec61499.declarations.FBInterfaceDeclaration
import org.jdom.Element

class FBInterfaceConverter(arguments: ConverterArguments, private val myDeclaration: FBInterfaceDeclaration) :
    ConverterBase(arguments) {
    fun extractInterface() {
        checkNotNull(element)
        val interfaceListElement = element.getChild("InterfaceList")
        extractEvents(interfaceListElement.getChild("EventInputs"), myDeclaration.inputEvents)
        ParameterDeclarationConverter.extractAll(
            with(interfaceListElement.getChild("InputVars")),
            myDeclaration.inputParameters
        )
        extractEvents(interfaceListElement.getChild("EventOutputs"), myDeclaration.outputEvents)
        ParameterDeclarationConverter.extractAll(
            with(interfaceListElement.getChild("OutputVars")),
            myDeclaration.outputParameters
        )
    }

    fun extractSubappInterface() {
        checkNotNull(element)
        val interfaceListElement = element.getChild("SubAppInterfaceList")
        extractSubappEvents(interfaceListElement.getChild("SubAppEventInputs"), myDeclaration.inputEvents)
        ParameterDeclarationConverter.extractAll(
            with(interfaceListElement.getChild("InputVars")),
            myDeclaration.inputParameters
        )
        extractSubappEvents(interfaceListElement.getChild("SubAppEventOutputs"), myDeclaration.outputEvents)
        ParameterDeclarationConverter.extractAll(
            with(interfaceListElement.getChild("OutputVars")),
            myDeclaration.outputParameters
        )
    }

    private fun extractEvents(container: Element?, events: MutableList<EventDeclaration>) {
        if (container == null) {
            return
        }
        val eventElements = container.getChildren("Event")
        for (eventElement in eventElements) {
            events.add(EventConverter(with(eventElement)).extract())
        }
    }

    private fun extractSubappEvents(container: Element?, events: MutableList<EventDeclaration>) {
        if (container == null) {
            return
        }
        val eventElements = container.getChildren("SubAppEvent")
        for (eventElement in eventElements) {
            events.add(EventConverter(with(eventElement)).extract())
        }
    }

    private inner class EventConverter(arguments: ConverterArguments) :
        DeclarationConverterBase<EventDeclaration>(arguments) {
        override fun extractDeclarationBody(identifier: Identifier?): EventDeclaration {
            checkNotNull(element)
            val event = factory.createEventDeclaration(identifier)
            for (withElement in element.getChildren("With")) {
                val eventAssociation = factory.createEventAssociation()
                eventAssociation.parameterReference.setTargetName(withElement.getAttributeValue("Var"))
                event.associations.add(eventAssociation)
            }
            return event
        }
    }
}
