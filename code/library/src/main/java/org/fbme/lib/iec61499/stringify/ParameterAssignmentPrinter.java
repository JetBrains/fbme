package org.fbme.lib.iec61499.stringify;


import org.fbme.lib.iec61499.declarations.ParameterAssignment;
import org.jdom.Element;

import java.util.List;
import java.util.Objects;

public class ParameterAssignmentPrinter extends PrinterElementBase<ParameterAssignment> {

    public ParameterAssignmentPrinter(ParameterAssignment assignment) {
        super(assignment, "Parameter");
    }

    @Override
    protected void printElementBody(Element element) {
        element.setAttribute("Name", myElement.getParameterReference().getPresentation());
        element.setAttribute("Value", STPrinter.printLiteral(Objects.requireNonNull(myElement.getValue())));
    }

    public static void printAll(List<ParameterAssignment> assignments, Element element) {
        for (ParameterAssignment assignment : assignments) {
            element.addContent(new ParameterAssignmentPrinter(assignment).print());
        }
    }
}
