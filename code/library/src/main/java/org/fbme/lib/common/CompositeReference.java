package org.fbme.lib.common;

import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

import java.util.Arrays;
import java.util.List;
import java.util.stream.Collectors;

public interface CompositeReference<DeclarationPathT extends DeclarationPath> {

    @Nullable DeclarationPathT getTarget();

    @NotNull List<Identifier> getPath();

    @NotNull String getPresentation();

    void setPath(@NotNull List<Identifier> path);

    default void setTarget(@NotNull DeclarationPathT target) {
        setPath(target.getDeclarations().stream().map(Declaration::getIdentifier).collect(Collectors.toList()));
    }

    default void setTargetNames(@NotNull List<String> names) {
        setPath(names.stream().map(StringIdentifier::new).collect(Collectors.toList()));
    }

    default void setFQName(@NotNull String fqName) {
        setTargetNames(Arrays.asList(fqName.split("\\.")));
    }
}
