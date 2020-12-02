package org.fbme.ide.platform.editor;

import com.intellij.openapi.actionSystem.AnAction;
import jetbrains.mps.project.Project;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import org.jetbrains.mps.openapi.model.SNode;

import java.util.Collections;
import java.util.List;
import java.util.Objects;

public class SimpleEditorProjectionController implements EditorProjectionController {

    private final SNode myNode;
    private final String myId;
    private final Project myProject;
    private final String[] myHints;
    private final boolean myDefault;

    public SimpleEditorProjectionController(SNode node, String id, Project project, String[] hints, boolean isDefautl) {
        myNode = node;
        myId = id;
        myProject = project;
        myHints = hints;
        myDefault = isDefautl;
    }

    @NotNull
    @Override
    public String getId() {
        return myId;
    }

    @NotNull
    public EditorProjection createProjection(@NotNull String name) {
        if (Objects.equals(name, getId())) {
            return createProjection0();
        } else {
            throw new IllegalArgumentException("Unknown projection");
        }
    }

    @Nullable
    @Override
    public EditorProjection createDefaultProjection() {
        if (myDefault) {
            return createProjection0();
        } else {
            return null;
        }
    }

    private SimpleEditorProjection createProjection0() {
        return new SimpleEditorProjection(myNode, this, myProject, myId, myHints);
    }

    public List<AnAction> getChooseProjectionActions() {
        return Collections.singletonList(new ChooseProjectionAction(this, getId()));
    }

    public List<AnAction> getCreateProjectionActions() {
        return Collections.emptyList();
    }
}
