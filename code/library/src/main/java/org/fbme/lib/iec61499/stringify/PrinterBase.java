package org.fbme.lib.iec61499.stringify;


import org.antlr.v4.runtime.misc.Nullable;
import org.fbme.lib.common.Element;
import org.jdom.Content;
import org.jetbrains.annotations.NotNull;

public abstract class PrinterBase<ElementT extends Element> {

    @NotNull
    protected final ElementT myElement;

    public PrinterBase(@NotNull ElementT element) {
        myElement = element;
    }


    protected static void addNullableContent(@NotNull org.jdom.Element parent, @Nullable Content child) {
        if (child == null) {
            return;
        }
        parent.addContent(child);
    }

    protected static String escapeXML(String text) {
        if (text == null) {
            return null;
        }
        text = text.replace("\n", "&#10;");
        text = text.replace("\"", "&#34;");
        text = text.replace("&", "&#38;");
        text = text.replace("'", "&#39;");
        text = text.replace("<", "&#60;");
        text = text.replace(">", "&#62;");
        return text;
    }

}
