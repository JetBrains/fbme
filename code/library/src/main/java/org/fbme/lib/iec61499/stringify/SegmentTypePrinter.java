package org.fbme.lib.iec61499.stringify;


import org.fbme.lib.iec61499.declarations.SegmentTypeDeclaration;
import org.jdom.Element;
import org.jetbrains.annotations.NotNull;

public class SegmentTypePrinter extends DeclarationPrinterBase<SegmentTypeDeclaration> {

    public SegmentTypePrinter(SegmentTypeDeclaration declaration) {
        super(declaration, "SegmentType");
    }

    @Override
    protected void printDeclarationBody(@NotNull Element element) {
        ParameterDeclarationPrinter.printAll(myElement.getParameters(), element);
    }
}
