package org.fbme.lib.iec61499.fbnetwork;

import org.fbme.lib.common.ContainedElement;
import org.fbme.lib.common.Declaration;
import org.fbme.lib.iec61499.declarations.EventDeclaration;
import org.fbme.lib.iec61499.declarations.ParameterAssignment;
import org.fbme.lib.iec61499.declarations.ParameterDeclaration;
import org.fbme.lib.iec61499.descriptors.FBPortDescriptor;
import org.fbme.lib.iec61499.descriptors.FBTypeDescriptor;
import org.jetbrains.annotations.NotNull;

import java.util.HashSet;
import java.util.List;
import java.util.Set;

public interface FunctionBlockDeclarationBase extends Declaration, ContainedElement {

    @NotNull FBTypeDescriptor getType();

    @NotNull List<ParameterAssignment> getParameters();

    default PortPath<? extends Declaration> getPort(@NotNull FBPortDescriptor descriptor) {
        assert descriptor.getDeclaration() != null;
        return PortPath.createPortPath(this, descriptor.getConnectionKind(), descriptor.getDeclaration());
    }

    default @NotNull Set<PortPath<? extends Declaration>> getPorts() {
        Set<PortPath<? extends Declaration>> result = new HashSet<>();

        FBTypeDescriptor type = getType();
        generatePorts(result, this, type.getEventInputPorts());
        generatePorts(result, this, type.getEventOutputPorts());
        generatePorts(result, this, type.getDataInputPorts());
        generatePorts(result, this, type.getDataOutputPorts());
        generatePorts(result, this, type.getSocketPorts());
        generatePorts(result, this, type.getPlugPorts());

        return result;
    }

    static void generatePorts(Set<PortPath<?>> result, FunctionBlockDeclarationBase fb, List<FBPortDescriptor> ports) {
        for (FBPortDescriptor port : ports) {
            result.add(fb.getPort(port));
        }
    }

    int getX();

    void setX(int x);

    int getY();

    void setY(int y);
}
