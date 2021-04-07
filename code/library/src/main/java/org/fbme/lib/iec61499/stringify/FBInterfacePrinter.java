package org.fbme.lib.iec61499.stringify;


import org.fbme.lib.iec61499.declarations.EventAssociation;
import org.fbme.lib.iec61499.declarations.EventDeclaration;
import org.fbme.lib.iec61499.declarations.FBInterfaceDeclaration;
import org.jdom.Element;
import org.jetbrains.annotations.NotNull;

import java.util.List;

public class FBInterfacePrinter extends PrinterElementBase<FBInterfaceDeclaration> {

    private final boolean mySubApp;

    public FBInterfacePrinter(FBInterfaceDeclaration declaration, boolean subApp) {
        super(declaration, "InterfaceList");
        mySubApp = subApp;
    }

    @Override
    protected void printElementBody(Element element) {
        if (mySubApp) {
            printInterfaceWithSubAppEvents(element);
        } else {
            printInterfaceWithEvents(element);
        }
    }

    private void printInterfaceWithEvents(Element element) {
        addNullableContent(element, printEvents("EventInputs", myElement.getInputEvents()));
        addNullableContent(element, printEvents("EventOutputs", myElement.getOutputEvents()));
        addNullableContent(element, ParameterDeclarationPrinter.printAll("InputVars", myElement.getInputParameters()));
        addNullableContent(element, ParameterDeclarationPrinter.printAll("OutputVars", myElement.getOutputParameters()));
    }

    private void printInterfaceWithSubAppEvents(Element element) {
        addNullableContent(element, printSubAppEvents("SubAppEventInputs", myElement.getInputEvents()));
        addNullableContent(element, printSubAppEvents("SubAppEventOutputs", myElement.getOutputEvents()));
        addNullableContent(element, ParameterDeclarationPrinter.printAll("InputVars", myElement.getInputParameters()));
        addNullableContent(element, ParameterDeclarationPrinter.printAll("OutputVars", myElement.getOutputParameters()));
    }

    private Element printEvents(String collectionTag, List<EventDeclaration> events) {
        if (events.isEmpty()) {
            return null;
        }
        Element element = new Element(collectionTag);
        for (EventDeclaration eventDeclaration : events) {
            element.addContent(EventPrinter.event(eventDeclaration).print());
        }
        return element;
    }

    private Element printSubAppEvents(String collectionTag, List<EventDeclaration> events) {
        if (events.isEmpty()) {
            return null;
        }
        Element element = new Element(collectionTag);
        for (EventDeclaration eventDeclaration : events) {
            element.addContent(EventPrinter.subAppEvent(eventDeclaration).print());
        }
        return element;
    }

    private static class EventPrinter extends DeclarationPrinterBase<EventDeclaration> {

        private EventPrinter(String tag, EventDeclaration eventDeclaration) {
            super(eventDeclaration, tag);
        }

        @Override
        protected void printDeclarationBody(@NotNull Element element) {
            for (EventAssociation association : myElement.getAssociations()) {
                Element with = new Element("With");
                with.setAttribute("Var", association.getParameterReference().getPresentation());
                element.addContent(with);
            }
        }

        private static EventPrinter event(EventDeclaration eventDeclaration) {
            return new EventPrinter("Event", eventDeclaration);
        }

        private static EventPrinter subAppEvent(EventDeclaration eventDeclaration) {
            return new EventPrinter("SubAppEvent", eventDeclaration);
        }
    }
}
