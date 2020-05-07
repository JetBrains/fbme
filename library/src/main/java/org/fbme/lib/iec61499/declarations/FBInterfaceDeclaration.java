package org.fbme.lib.iec61499.declarations;

import org.fbme.lib.iec61499.descriptors.FBTypeDescriptor;
import org.jetbrains.annotations.NotNull;

import java.util.List;

public interface FBInterfaceDeclaration extends NamedDeclaration {

    @NotNull List<EventDeclaration> getInputEvents();

    @NotNull List<EventDeclaration> getOutputEvents();

    @NotNull List<ParameterDeclaration> getInputParameters();

    @NotNull List<ParameterDeclaration> getOutputParameters();

    default @NotNull FBTypeDescriptor getTemplateTypeDescriptor() {
        if (this instanceof FBTypeDeclaration) {
            return ((FBTypeDeclaration) this).getTypeDescriptor();
        }
        if (this instanceof SubapplicationTypeDeclaration) {
            return ((SubapplicationTypeDeclaration) this).getTypeDescriptor();
        }
        if (this instanceof AdapterTypeDeclaration) {
            return ((AdapterTypeDeclaration) this).getSocketTypeDescriptor();
        }
        throw new IllegalArgumentException("Unknown declaration with FB interface: " + this.getClass().getName());
    }
}
