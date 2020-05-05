package org.fbme.lib.iec61499.declarations;

import java.util.List;

public interface FBInterfaceDeclarationWithAdapters extends FBInterfaceDeclaration {

    List<PlugDeclaration> getPlugs();

    List<SocketDeclaration> getSockets();
}
