package org.fbme.lib.iec61499.stringify;


import org.antlr.v4.runtime.misc.Nullable;
import org.fbme.lib.common.Element;
import org.jdom.Content;
import org.jetbrains.annotations.NotNull;

public abstract class PrinterElementBase<ElementT extends Element> extends PrinterBase<ElementT> {

    @NotNull
    private final String myTag;

    public PrinterElementBase(@NotNull ElementT element, @NotNull String tag) {
        super(element);
        myTag = tag;
    }

    @NotNull
    public org.jdom.Element print() {
        org.jdom.Element element = new org.jdom.Element(myTag);
        printElementBody(element);
        return element;
    }

    @Nullable
    public org.jdom.Element printNullable() {
        org.jdom.Element element = print();
        if (element.getContent().isEmpty()) {
            return null;
        }
        return element;
    }

    protected abstract void printElementBody(org.jdom.Element element);
}
