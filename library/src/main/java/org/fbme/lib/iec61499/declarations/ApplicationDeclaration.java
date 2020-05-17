package org.fbme.lib.iec61499.declarations;

import org.fbme.lib.common.ContainedElement;
import org.fbme.lib.common.Declaration;
import org.fbme.lib.iec61499.fbnetwork.FBNetwork;
import org.fbme.lib.iec61499.fbnetwork.subapp.SubappNetwork;
import org.jetbrains.annotations.NotNull;

public interface ApplicationDeclaration extends Declaration, ContainedElement {

    @NotNull SubappNetwork getNetwork();

    @NotNull SystemDeclaration getContainer();
}
