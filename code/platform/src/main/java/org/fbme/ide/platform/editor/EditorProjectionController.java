package org.fbme.ide.platform.editor;

import com.intellij.openapi.actionSystem.AnAction;
import jetbrains.mps.project.Project;
import org.jdom.Element;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import org.jetbrains.mps.openapi.model.SNode;

import java.util.List;

public interface EditorProjectionController {

    @NotNull
    String getId();

    @NotNull
    EditorProjection createProjection(@NotNull String name);

    default EditorProjection restoreProjection(@NotNull String name, @NotNull Element e) {
        return createProjection(name);
    }

    @Nullable
    default EditorProjection createDefaultProjection() {
        return null;
    }

    List<AnAction> getChooseProjectionActions();

    List<AnAction> getCreateProjectionActions();

    interface Factory {

        @NotNull
        String getId();

        EditorProjectionController create(@NotNull SNode node, @NotNull Project project);

        boolean isApplicable(@NotNull SNode node);
    }
}
