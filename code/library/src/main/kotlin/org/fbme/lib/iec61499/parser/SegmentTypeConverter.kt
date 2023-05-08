package org.fbme.lib.iec61499.parser

import org.fbme.lib.common.Identifier
import org.fbme.lib.iec61499.declarations.SegmentTypeDeclaration

class SegmentTypeConverter(arguments: ConverterArguments) :
    DeclarationConverterBase<SegmentTypeDeclaration>(arguments) {
    override fun extractDeclarationBody(identifier: Identifier?): SegmentTypeDeclaration {
        val std = factory.createSegmentTypeDeclaration(identifier)
        ParameterDeclarationConverter.extractAll(this, std.parameters)
        return std
    }
}
