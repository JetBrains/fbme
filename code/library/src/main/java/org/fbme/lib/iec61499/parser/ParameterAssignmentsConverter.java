package org.fbme.lib.iec61499.parser;


import org.fbme.lib.iec61499.declarations.ParameterAssignment;
import org.jdom.Element;

import java.util.List;

public class ParameterAssignmentsConverter extends ConverterBase {

    private final List<ParameterAssignment> myAssignmnents;

    public ParameterAssignmentsConverter(ConverterArguments arguments, List<ParameterAssignment> assignmnents) {
        super(arguments);
        myAssignmnents = assignmnents;
    }

    public void extractParameters() {
        List<Element> parameterElements = myElement.getChildren("Parameter");
        for (Element parameterElement : parameterElements) {
            ParameterAssignment parameter = myFactory.createParameterAssignment();
            parameter.getParameterReference().setTargetName(parameterElement.getAttributeValue("Name"));
            String valueText = unescapeXML(parameterElement.getAttributeValue("Value"));
            parameter.setValue(STConverter.parseLiteral(myStFactory, valueText));
            myAssignmnents.add(parameter);
        }
    }
}
