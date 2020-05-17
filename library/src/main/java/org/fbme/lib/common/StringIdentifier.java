package org.fbme.lib.common;

import org.jetbrains.annotations.NotNull;

import java.util.Objects;

public class StringIdentifier implements Identifier {

    private final @NotNull String myValue;

    public StringIdentifier(@NotNull String value) {
        myValue = value;
    }

    public @NotNull String getValue() {
        return myValue;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;
        StringIdentifier that = (StringIdentifier) o;
        return Objects.equals(myValue, that.myValue);
    }

    @Override
    public int hashCode() {
        return myValue.hashCode();
    }
}
