package org.fbme.lib.common;

import org.jetbrains.annotations.Nullable;

public interface ContainedElement extends Element {

    void remove();

    @Nullable Role getRole();

    int index();
}
