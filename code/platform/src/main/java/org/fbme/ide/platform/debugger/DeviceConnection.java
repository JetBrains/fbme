package org.fbme.ide.platform.debugger;

import org.jetbrains.annotations.NotNull;
import org.jetbrains.mps.openapi.model.SNode;

import java.io.Closeable;
import java.io.IOException;

public interface DeviceConnection extends Closeable {

    void deployResource(SNode resource) throws IOException;

    void addWatch(@NotNull Watchable watchable) throws IOException;

    void removeWatch(@NotNull Watchable watchable) throws IOException;

    String readWatches() throws IOException;

    boolean isAlive();
}
