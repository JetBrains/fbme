package org.fbme.ide.iec61499.editor;

import jetbrains.mps.project.Project;
import org.jetbrains.mps.openapi.model.SNode;

import java.util.HashMap;
import java.util.Map;

public abstract class ProjectEditorSpecs {

    static final Map<Project, ProjectEditorSpecs> ourInstances = new HashMap<>();

    public static ProjectEditorSpecs getInstance(Project project) {
        return ourInstances.get(project);
    }

    public abstract SNode getSpec(SNode target, String projectionState);

    public abstract SNode getSpecTarget(SNode spec);

    public abstract String getSpecProjectionState(SNode spec);
}
