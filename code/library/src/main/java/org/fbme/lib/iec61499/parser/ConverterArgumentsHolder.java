package org.fbme.lib.iec61499.parser;


import org.fbme.lib.iec61499.IEC61499Factory;
import org.fbme.lib.st.STFactory;
import org.jdom.Element;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

public class ConverterArgumentsHolder implements ConverterArguments {

    @NotNull
    private final IEC61499Factory myFactory;

    @NotNull
    private final STFactory myStFactory;

    @NotNull
    private final IdentifierLocus myIdentifierLocus;

    @Nullable
    private final Element myElement;

    public ConverterArgumentsHolder(@NotNull IEC61499Factory factory, @NotNull STFactory stFactory, @NotNull IdentifierLocus identifierProvider, @Nullable Element element) {
        myFactory = factory;
        myStFactory = stFactory;
        myIdentifierLocus = identifierProvider;
        myElement = element;
    }

    @Override
    public @Nullable Element getElement() {
        return myElement;
    }

    @NotNull
    @Override
    public IEC61499Factory getFactory() {
        return myFactory;
    }

    @NotNull
    @Override
    public STFactory getStFactory() {
        return myStFactory;
    }

    @NotNull
    @Override
    public IdentifierLocus getIdentifierLocus() {
        return myIdentifierLocus;
    }
}
