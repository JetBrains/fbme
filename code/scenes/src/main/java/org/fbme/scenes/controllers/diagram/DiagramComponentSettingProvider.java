package org.fbme.scenes.controllers.diagram;

import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

public interface DiagramComponentSettingProvider<CompT, CFormT> {

    @NotNull
    CFormT getModelForm(@NotNull CompT component);

    @Nullable
    CFormT getTransformedForm(@NotNull CompT component);
}
