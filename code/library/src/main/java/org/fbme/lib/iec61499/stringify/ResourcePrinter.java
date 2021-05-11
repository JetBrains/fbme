package org.fbme.lib.iec61499.stringify;


import org.fbme.lib.iec61499.declarations.ResourceDeclaration;
import org.jdom.Element;
import org.jetbrains.annotations.NotNull;

public class ResourcePrinter extends DeclarationPrinterBase<ResourceDeclaration> {

  public ResourcePrinter(ResourceDeclaration declaration) {
    super(declaration, "Resource");
  }

  @Override
  protected void printDeclarationBody(@NotNull Element element) {
    element.setAttribute("Type", myElement.getTypeReference().getPresentation());
    ParameterAssignmentPrinter.printAll(myElement.getParameters(), element);
    addNullableContent(element, new FBNetworkPrinter<>(myElement.getNetwork()).printNullable());
  }
}
