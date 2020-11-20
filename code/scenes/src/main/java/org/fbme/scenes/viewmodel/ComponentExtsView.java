package org.fbme.scenes.viewmodel;

import org.jetbrains.annotations.NotNull;

import java.util.Set;

public interface ComponentExtsView<CompT, CompExtT> {

    @NotNull
    Set<CompExtT> getExtensions(@NotNull CompT component);
}
