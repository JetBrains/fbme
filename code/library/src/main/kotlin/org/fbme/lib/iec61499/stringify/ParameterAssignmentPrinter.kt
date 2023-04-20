package org.fbme.lib.iec61499.stringify

import org.fbme.lib.iec61499.declarations.ParameterAssignment
import org.jdom.Element

class ParameterAssignmentPrinter(assignment: ParameterAssignment) :
    PrinterElementBase<ParameterAssignment>(assignment, "Parameter") {
    override fun printElementBody(element: Element) {
        element.setAttribute("Name", this.element.parameterReference.presentation)
        element.setAttribute("Value", STPrinter.printLiteral(requireNotNull(this.element.value)))
    }

    companion object {
        @JvmStatic
        fun printAll(assignments: List<ParameterAssignment>, element: Element) {
            for (assignment in assignments) {
                element.addContent(ParameterAssignmentPrinter(assignment).print())
            }
        }
    }
}
