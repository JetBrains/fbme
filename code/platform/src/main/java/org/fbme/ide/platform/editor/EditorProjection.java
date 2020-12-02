package org.fbme.ide.platform.editor;

import com.intellij.openapi.actionSystem.DataProvider;
import org.jdom.Element;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

import javax.swing.*;

public interface EditorProjection extends DataProvider {

    @NotNull
    String getName();

    @NotNull
    String[] getInitialEditorHints();

    @Nullable
    JComponent createHeaderComponent();

    @NotNull
    EditorProjectionController getController();

    void saveState(@NotNull Element element);
}
