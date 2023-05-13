package org.fbme.lib.iec61499.stringify

import org.fbme.lib.iec61499.declarations.CompositeFBTypeDeclaration
import org.fbme.lib.iec61499.declarations.HMIInterfaceTypeDeclaration
import org.fbme.lib.iec61499.parser.ConverterArguments
import org.fbme.lib.iec61499.parser.STConverter
import org.fbme.lib.st.types.ElementaryType
import org.jdom.Element

class HMIBlockPrinter(declaration: HMIInterfaceTypeDeclaration, val converterArguments: ConverterArguments) :
    DeclarationPrinterBase<HMIInterfaceTypeDeclaration>(declaration, "FBType") {


    override fun printDeclarationBody(element: Element) {
        element.addContent(FBInterfacePrinterWithAdapters(this.element).print())
        val cFB = CompositeFBTypePrinter(generateComposite()).print().children
        for (c in cFB) {
            element.addContent(c)
        }
        element.setAttribute("UsedInCAT", "True")
    }

    fun generateComposite(): CompositeFBTypeDeclaration {
        var cFB = converterArguments.factory.createCompositeFBTypeDeclaration(null)
        cFB.name = this.element.name
        cFB.inputParameters.addAll(this.element.inputParameters)
        cFB.outputParameters.addAll(this.element.outputParameters)
        val initEvent = converterArguments.factory.createEventDeclaration(null)
        initEvent.name = "INIT"
        initEvent.associations
        val mappingInput = converterArguments.factory.createParameterDeclaration(null)
        mappingInput.name = "MAPPING"
        mappingInput.type = ElementaryType.STRING
        cFB.inputEvents.add(initEvent)
        return cFB
    }
}