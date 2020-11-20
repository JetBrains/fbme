package org.fbme.scenes.viewmodel;

import org.jetbrains.annotations.NotNull;

import java.util.Set;

public interface ComponentsView<CompT> {

    @NotNull
    Set<CompT> getComponents();

    void remove(@NotNull CompT entry);
}
