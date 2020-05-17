package org.fbme.lib.common;


import org.jetbrains.annotations.Nullable;

public interface RootElement extends Element {

    @Override
    default @Nullable Element getContainer() {
        return null;
    }
}
