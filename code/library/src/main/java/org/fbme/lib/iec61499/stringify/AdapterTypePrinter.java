package org.fbme.lib.iec61499.stringify;


import org.fbme.lib.iec61499.declarations.AdapterTypeDeclaration;
import org.jdom.Element;
import org.jetbrains.annotations.NotNull;

public class AdapterTypePrinter extends DeclarationPrinterBase<AdapterTypeDeclaration> {

  public AdapterTypePrinter(AdapterTypeDeclaration declaration) {
    super(declaration, "AdapterType");
  }

  protected void printDeclarationBody(@NotNull Element element) {
    element.addContent(new FBInterfacePrinter(myElement, false).print());
  }
}
