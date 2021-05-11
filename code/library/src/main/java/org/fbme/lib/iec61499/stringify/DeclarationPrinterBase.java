package org.fbme.lib.iec61499.stringify;


import org.fbme.lib.common.Declaration;
import org.jdom.Element;
import org.jetbrains.annotations.NotNull;

public abstract class DeclarationPrinterBase<DeclarationT extends Declaration> extends PrinterElementBase<DeclarationT> {

    public DeclarationPrinterBase(DeclarationT declaration, String tag) {
        super(declaration, tag);
    }

    @Override
    protected final void printElementBody(Element element) {
        element.setAttribute("Name", myElement.getName());
        printDeclarationBody(element);
    }

    protected abstract void printDeclarationBody(@NotNull Element element);
}
