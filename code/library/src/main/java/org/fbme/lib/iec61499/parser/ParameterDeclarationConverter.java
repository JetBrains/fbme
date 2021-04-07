package org.fbme.lib.iec61499.parser;


import org.fbme.lib.common.Identifier;
import org.fbme.lib.iec61499.declarations.ParameterDeclaration;
import org.jdom.Element;
import org.jetbrains.annotations.Nullable;

import java.util.List;

public class ParameterDeclarationConverter extends DeclarationConverterBase<ParameterDeclaration> {

    public ParameterDeclarationConverter(ConverterArguments arguments) {
        super(arguments);
    }

    @Override
    protected ParameterDeclaration extractDeclarationBody(@Nullable Identifier identifier) {
        assert myElement != null;

        ParameterDeclaration parameter = myFactory.createParameterDeclaration(identifier);
        parameter.setType(STConverter.parseType(myStFactory, myElement.getAttributeValue("Type")));
        String initialValueText = myElement.getAttributeValue("InitialValue");
        if (initialValueText != null) {
            parameter.setInitialValue(STConverter.parseLiteral(myStFactory, initialValueText));
        }
        return parameter;
    }

    public static void extractAll(ConverterArguments arguments, List<ParameterDeclaration> declarations) {
        Element element = arguments.getElement();
        if (element == null) {
            return;
        }
        List<Element> varElements = element.getChildren("VarDeclaration");
        for (Element varElement : varElements) {
            declarations.add(new ParameterDeclarationConverter(arguments.with(varElement)).extract());
        }
    }
}
