package org.fbme.lib.iec61499.parser

import org.fbme.lib.common.Identifier
import org.fbme.lib.iec61499.fbnetwork.subapp.SubappNetwork
import org.fbme.lib.iec61499.fbnetwork.subapp.SubapplicationDeclaration

class SubappNetworkConverter(arguments: ConverterArguments, private val network: SubappNetwork) :
    FBNetworkConverter(arguments, network) {
    override fun extractNetwork() {
        if (element == null) {
            return
        }
        super.extractNetwork()
        val subappElements = element.getChildren("SubApp")
        for (subappElement in subappElements) {
            network.subapplications.add(SubapplicationConverter(with(subappElement)).extract())
        }
    }

    private inner class SubapplicationConverter(arguments: ConverterArguments) :
        DeclarationConverterBase<SubapplicationDeclaration>(arguments) {
        override fun extractDeclarationBody(identifier: Identifier?): SubapplicationDeclaration {
            checkNotNull(element)
            val sd = factory.createSubapplicationDeclaration(identifier)
            sd.x = element.getAttributeValue("x").toFloat().toInt()
            sd.y = element.getAttributeValue("y").toFloat().toInt()
            sd.typeReference.setTargetName(element.getAttributeValue("Type"))
            return sd
        }
    }
}
