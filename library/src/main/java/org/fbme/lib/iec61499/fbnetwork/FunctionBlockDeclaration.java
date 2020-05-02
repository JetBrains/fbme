package org.fbme.lib.iec61499.fbnetwork;

import org.fbme.lib.iec61499.declarations.NamedDeclaration;
import org.fbme.lib.iec61499.descriptors.FBPortDescriptor;
import org.fbme.lib.iec61499.descriptors.FBTypeDescriptor;
import org.jetbrains.annotations.NotNull;

import java.util.HashSet;
import java.util.List;
import java.util.Set;

public interface FunctionBlockDeclaration extends FBNetworkComponent, NamedDeclaration {

    void setName(String name);

    int getX();

    void setX(int x);

    int getY();

    void setY(int y);

    FBTypeDescriptor getType();

    default FBPortIdentity getPort(@NotNull FBPortDescriptor descriptor) {
        return new FunctionBlockPortIdentity(this, descriptor.getPosition(), descriptor.getConnecitonKind(), !(descriptor.isInput()), descriptor.getName(), descriptor.isValid());
    }

    @Override
    default Set<FBPortIdentity> getPorts() {
        Set<FBPortIdentity> result = new HashSet<FBPortIdentity>();

        FBTypeDescriptor type = getType();
        generatePorts(result, this, type.getEventInputPorts());
        generatePorts(result, this, type.getEventOutputPorts());
        generatePorts(result, this, type.getDataInputPorts());
        generatePorts(result, this, type.getDataOutputPorts());
        generatePorts(result, this, type.getSocketPorts());
        generatePorts(result, this, type.getPlugPorts());

        return result;
    }

    static void generatePorts(Set<FBPortIdentity> result, FunctionBlockDeclaration fb, List<FBPortDescriptor> ports) {
        for (FBPortDescriptor port : ports) {
            result.add(fb.getPort(port));
        }
    }
}
