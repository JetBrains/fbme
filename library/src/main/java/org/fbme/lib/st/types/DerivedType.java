package org.fbme.lib.st.types;

import org.fbme.lib.common.Identifier;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

public interface DerivedType extends DataType {

    @NotNull Identifier getIdentifier();

    @Nullable DataTypeDeclaration getDeclaration();
}