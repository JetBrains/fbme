package org.fbme.lib.iec61499.fbnetwork;

import org.fbme.lib.common.Declaration;
import org.fbme.lib.common.DeclarationPath;
import org.fbme.lib.iec61499.declarations.EventDeclaration;
import org.fbme.lib.iec61499.declarations.ParameterDeclaration;
import org.fbme.lib.iec61499.declarations.PlugDeclaration;
import org.fbme.lib.iec61499.declarations.SocketDeclaration;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

import java.util.List;
import java.util.Objects;

public final class PortPath<DeclarationT extends Declaration> implements DeclarationPath {

    private final @Nullable FunctionBlockDeclarationBase myFunctionBlock;

    private final @NotNull DeclarationT myPortTarget;

    private PortPath(@Nullable FunctionBlockDeclarationBase functionBlock, @NotNull DeclarationT portTarget) {
        myFunctionBlock = functionBlock;
        myPortTarget = portTarget;
    }

    public @Nullable FunctionBlockDeclarationBase getFunctionBlock() {
        return myFunctionBlock;
    }

    public @NotNull DeclarationT getPortTarget() {
        return myPortTarget;
    }

    @Override
    public @NotNull List<Declaration> getDeclarations() {
        if (myFunctionBlock != null) {
            return List.of(myFunctionBlock, myPortTarget);
        } else {
            return List.of(myPortTarget);
        }
    }

    public static PortPath<EventDeclaration> createEventPortPath(@Nullable FunctionBlockDeclarationBase functionBlock, @NotNull EventDeclaration portTarget) {
        return new PortPath<>(functionBlock, portTarget);
    }

    public static PortPath<ParameterDeclaration> createDataPortPath(@Nullable FunctionBlockDeclarationBase functionBlock, @NotNull ParameterDeclaration portTarget) {
        return new PortPath<>(functionBlock, portTarget);
    }

    public static PortPath<PlugDeclaration> createPlugPortPath(@Nullable FunctionBlockDeclarationBase functionBlock, @NotNull PlugDeclaration portTarget) {
        return new PortPath<>(functionBlock, portTarget);
    }

    public static PortPath<SocketDeclaration> createSocketPortPath(@Nullable FunctionBlockDeclarationBase functionBlock, @NotNull SocketDeclaration portTarget) {
        return new PortPath<>(functionBlock, portTarget);
    }

    public static PortPath<? extends Declaration> createPortPath(@Nullable FunctionBlockDeclarationBase functionBlock, @NotNull EntryKind kind, @NotNull Declaration portTarget) {
        switch (kind) {
            case EVENT:
                return createEventPortPath(functionBlock, (EventDeclaration) portTarget);
            case DATA:
                return createDataPortPath(functionBlock, (ParameterDeclaration) portTarget);
            case ADAPTER:
                if (portTarget instanceof SocketDeclaration) {
                    return createSocketPortPath(functionBlock, (SocketDeclaration) portTarget);
                } else {
                    return createPlugPortPath(functionBlock, (PlugDeclaration) portTarget);
                }
        }
        throw new IllegalArgumentException("Should never happen");
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) {
            return true;
        }
        if (!(o instanceof PortPath)) {
            return false;
        }
        PortPath<?> portPath = (PortPath<?>) o;
        return Objects.equals(myFunctionBlock, portPath.myFunctionBlock) && myPortTarget.equals(portPath.myPortTarget);
    }

    @Override
    public int hashCode() {
        return Objects.hash(myFunctionBlock, myPortTarget);
    }
}
