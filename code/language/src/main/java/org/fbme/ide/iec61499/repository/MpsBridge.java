package org.fbme.ide.iec61499.repository;

import org.fbme.lib.iec61499.IEC61499Factory;
import org.fbme.lib.st.STFactory;
import org.jetbrains.annotations.NotNull;

public abstract class MpsBridge {

    protected static MpsBridge PROVIDER = null;

    @NotNull
    protected abstract PlatformElementAdapter provideElementAdapter(@NotNull PlatformElementsOwner owner);

    @NotNull
    protected abstract STFactory provideStFactory(@NotNull PlatformElementsOwner owner);

    @NotNull
    protected abstract IEC61499Factory provideIec61499Factory(@NotNull PlatformElementsOwner owner);

    @NotNull
    public static PlatformElementAdapter createElementAdapter(@NotNull PlatformElementsOwner owner) {
        return PROVIDER.provideElementAdapter(owner);
    }

    @NotNull
    public static STFactory createStFactory(@NotNull PlatformElementsOwner owner) {
        return PROVIDER.provideStFactory(owner);
    }

    @NotNull
    public static IEC61499Factory createIec61499Factory(@NotNull PlatformElementsOwner owner) {
        return PROVIDER.provideIec61499Factory(owner);
    }
}
