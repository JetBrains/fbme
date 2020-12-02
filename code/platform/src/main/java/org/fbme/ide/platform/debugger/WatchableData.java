package org.fbme.ide.platform.debugger;

import org.fbme.ide.iec61499.repository.PlatformRepository;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.mps.openapi.module.SRepository;

import java.util.Objects;

public class WatchableData {
    private final WatchablePathData myPath;
    private final String myPort;

    public WatchableData(WatchablePathData path, String port) {
        myPath = path;
        myPort = port;
    }

    public Watchable resolve(@NotNull PlatformRepository repository) {
        return new Watchable(myPath.resolve(repository), myPort);
    }

    public WatchablePathData getPath() {
        return myPath;
    }

    public String getPort() {
        return myPort;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) {
            return true;
        }
        if (!(o instanceof WatchableData)) {
            return false;
        }
        WatchableData that = (WatchableData) o;
        return Objects.equals(myPath, that.myPath) && Objects.equals(myPort, that.myPort);
    }

    @Override
    public int hashCode() {
        int result = 0;
        result = 31 * result + myPath.hashCode();
        result = 31 * result + myPort.hashCode();
        return result;
    }
}
