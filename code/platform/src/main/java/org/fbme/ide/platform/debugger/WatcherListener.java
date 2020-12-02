package org.fbme.ide.platform.debugger;

public interface WatcherListener {

    void onWatchAdded(WatchableData watchable);

    void onWatchRemoved(WatchableData watchable);
}
