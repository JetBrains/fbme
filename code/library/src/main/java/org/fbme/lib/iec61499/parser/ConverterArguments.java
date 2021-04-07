package org.fbme.lib.iec61499.parser;

import org.fbme.lib.iec61499.IEC61499Factory;
import org.fbme.lib.st.STFactory;
import org.jdom.Element;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

public interface ConverterArguments {

    @Nullable
    Element getElement();

    @NotNull
    IEC61499Factory getFactory();

    @NotNull
    STFactory getStFactory();

    @NotNull
    IdentifierLocus getIdentifierLocus();

    default ConverterArgumentsHolder with(Element element) {
        return new ConverterArgumentsHolder(getFactory(), getStFactory(), getIdentifierLocus(), element);
    }

    static ConverterArguments create(IEC61499Factory factory, STFactory stFactory, IdentifierLocus locus, Element element) {
        return new ConverterArgumentsHolder(factory, stFactory, locus, element);
    }

}
