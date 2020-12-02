package org.fbme.ide.platform.debugger;

import java.util.Objects;

public class Watchable {

    private final WatchablePath myPath;
    private final String myPort;

    public Watchable(WatchablePath path, String port) {
        myPath = path;
        myPort = port;
    }

    public WatchablePath getPath() {
        return myPath;
    }

    public String getPort() {
        return myPort;
    }

    public WatchableData serialize() {
        return new WatchableData(myPath.serialize(), myPort);
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) {
            return true;
        }
        if (!(o instanceof Watchable)) {
            return false;
        }

        Watchable that = (Watchable) o;
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
