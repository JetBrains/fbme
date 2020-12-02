package org.fbme.ide.platform.debugger;

import java.util.Map;

public interface Watcher {

    void watch(WatchableData w);

    void unwatch(WatchableData w);

    Map<WatchableData, String> readWatches();
}
