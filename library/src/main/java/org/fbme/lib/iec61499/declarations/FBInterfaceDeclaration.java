package org.fbme.lib.iec61499.declarations;

import org.fbme.lib.iec61499.descriptors.FBTypeDescriptor;

import java.util.List;

public interface FBInterfaceDeclaration extends NamedDeclaration {

    List<EventDeclaration> getInputEvents();

    List<EventDeclaration> getOutputEvents();

    List<ParameterDeclaration> getInputParameters();

    List<ParameterDeclaration> getOutputParameters();

    default FBTypeDescriptor getTemplateTypeDescriptor() {
        if (this instanceof FBTypeDeclaration) {
            return ((FBTypeDeclaration) this).getTypeDescriptor();
        }
        if (this instanceof SubapplicationTypeDeclaration) {
            return ((SubapplicationTypeDeclaration) this).getTypeDescriptor();
        }
        if (this instanceof AdapterTypeDeclaration) {
            return ((AdapterTypeDeclaration) this).getSocketTypeDescriptor();
        }
        return null;
    }
}
