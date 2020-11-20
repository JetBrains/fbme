package org.fbme.scenes.controllers.components;

import org.jetbrains.annotations.NotNull;

import java.util.function.Supplier;

public interface ComponentSynchronizer<CompT, FormT> {

    @NotNull
    Supplier<FormT> getForm(@NotNull CompT component);

    void setForm(@NotNull CompT component, @NotNull FormT form);
}
