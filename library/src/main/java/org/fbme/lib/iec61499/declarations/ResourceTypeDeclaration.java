package org.fbme.lib.iec61499.declarations;

import org.fbme.lib.iec61499.fbnetwork.FBNetwork;

import java.util.List;

public interface ResourceTypeDeclaration extends NamedDeclaration {

    List<ParameterDeclaration> getParameters();

    FBNetwork getNetwork();
}
