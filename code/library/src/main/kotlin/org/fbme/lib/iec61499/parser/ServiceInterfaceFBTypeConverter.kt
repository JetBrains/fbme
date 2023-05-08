package org.fbme.lib.iec61499.parser

import org.fbme.lib.common.Identifier
import org.fbme.lib.iec61499.declarations.ServiceInterfaceFBTypeDeclaration

class ServiceInterfaceFBTypeConverter(arguments: ConverterArguments) :
    DeclarationConverterBase<ServiceInterfaceFBTypeDeclaration>(arguments) {
    override fun extractDeclarationBody(identifier: Identifier?): ServiceInterfaceFBTypeDeclaration {
        val std = factory.createServiceInterfaceFBTypeDeclaration(identifier)
        FBInterfaceConverter(this, std).extractInterface()
        return std
    }
}
