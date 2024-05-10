package org.fbme.lib.iec61499.stringify

import org.fbme.lib.iec61499.declarations.HMIInterfaceTypeDeclaration
import org.fbme.lib.iec61499.parser.Iec61499ConverterConfiguration
import org.jdom.Element

class HMIBlockPrinter(declaration: HMIInterfaceTypeDeclaration) :
    DeclarationPrinterBase<HMIInterfaceTypeDeclaration>(declaration, "HMIDeclaration") {

//    val factory = converterArguments.entryFactory
//    val stFactory = converterArguments.stEntryFactory
    override fun printDeclarationBody(element: Element) {
        element.addContent(FBInterfacePrinterWithAdapters(this.element).print())
//        val cFB = CompositeFBTypePrinter(HMIInterfaceTypeGenerator.generateComposite(factory, stFactory, this.element)).print().children
//        for (c in cFB) {
//            element.addContent(c.clone().detach())
//        }
        addNullableContent(element, ParameterDeclarationPrinter.printAll("InputVars", this.element.inputParameters))
        addNullableContent(element, ParameterDeclarationPrinter.printAll("OutputVars", this.element.outputParameters))
        element.setAttribute("UsedInCAT", "True")
    }

}