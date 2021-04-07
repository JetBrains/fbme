package org.fbme.lib.iec61499.parser;


import org.fbme.lib.common.Identifier;
import org.fbme.lib.iec61499.declarations.SegmentTypeDeclaration;
import org.jetbrains.annotations.Nullable;

public class SegmentTypeConverter extends DeclarationConverterBase<SegmentTypeDeclaration> {

    public SegmentTypeConverter(ConverterArguments arguments) {
        super(arguments);
    }

    @Override
    protected SegmentTypeDeclaration extractDeclarationBody(@Nullable Identifier identifier) {
        SegmentTypeDeclaration std = myFactory.createSegmentTypeDeclaration(identifier);
        ParameterDeclarationConverter.extractAll(this, std.getParameters());
        return std;
    }
}
