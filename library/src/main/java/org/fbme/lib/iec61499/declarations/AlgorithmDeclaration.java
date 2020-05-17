package org.fbme.lib.iec61499.declarations;

import org.fbme.lib.common.ContainedElement;
import org.fbme.lib.common.Declaration;
import org.fbme.lib.common.Element;
import org.jetbrains.annotations.Nullable;

public interface AlgorithmDeclaration extends Declaration, ContainedElement {

    @Nullable AlgorithmBody getBody();

    void setBody(@Nullable AlgorithmBody body);

    @Override
    @Nullable BasicFBTypeDeclaration getContainer();
}
