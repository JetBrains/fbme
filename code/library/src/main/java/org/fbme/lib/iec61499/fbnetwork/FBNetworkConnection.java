package org.fbme.lib.iec61499.fbnetwork;

import org.fbme.lib.common.CompositeReference;
import org.fbme.lib.common.ContainedElement;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

import java.awt.*;
import java.util.ArrayList;
import java.util.List;

public interface FBNetworkConnection extends ContainedElement {

    @Nullable FBNetwork getContainer();

    @Nullable ConnectionPath getPath();

    void setPath(@Nullable ConnectionPath path);

    @NotNull CompositeReference<PortPath<?>> getSourceReference();

    @NotNull CompositeReference<PortPath<?>> getTargetReference();

    @NotNull EntryKind getKind();
}
