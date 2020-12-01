package org.fbme.ide.richediting.inspections;

import org.fbme.lib.common.Declaration;
import org.fbme.lib.iec61499.fbnetwork.FBNetworkConnection;
import org.fbme.lib.iec61499.fbnetwork.PortPath;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

import java.awt.*;

public interface NetworkInspector {

    void setInspectionForPort(@NotNull PortPath<?> port, @Nullable Inspection inspection);

    void setInspectionForComponent(@NotNull Declaration component, @Nullable Inspection inspection);

    void setHighlightingForConnection(@NotNull FBNetworkConnection connection, @Nullable Color color);

    void clear();
}
