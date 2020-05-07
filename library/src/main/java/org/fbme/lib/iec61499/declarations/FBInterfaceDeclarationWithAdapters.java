package org.fbme.lib.iec61499.declarations;

import org.jetbrains.annotations.NotNull;

import java.util.List;

public interface FBInterfaceDeclarationWithAdapters extends FBInterfaceDeclaration {

    @NotNull List<PlugDeclaration> getPlugs();

    @NotNull List<SocketDeclaration> getSockets();
}
