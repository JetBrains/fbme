package org.fbme.ide.platform.editor;

import jetbrains.mps.project.Project;
import org.jdom.Element;
import org.jetbrains.annotations.NonNls;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import org.jetbrains.mps.openapi.model.SNode;

import javax.swing.*;

public class SimpleEditorProjection implements EditorProjection {

    protected final Project myProject;
    protected final String myName;
    protected final EditorProjectionController myController;
    protected final SNode myNode;
    protected final String[] myHints;

    public SimpleEditorProjection(SNode node, EditorProjectionController controller, Project project, String name, String[] hints) {
        myController = controller;
        myProject = project;
        myName = name;
        myNode = node;
        myHints = hints.clone();
    }

    @NotNull
    @Override
    public String getName() {
        return myName;
    }

    @NotNull
    @Override
    public JComponent createHeaderComponent() {
        return new DefaultHeaderComponentProvider(myNode, myProject).getComponent();
    }

    @NotNull
    @Override
    public EditorProjectionController getController() {
        return myController;
    }

    @Override
    public void saveState(@NotNull Element element) {
    }

    @NotNull
    @Override
    public String[] getInitialEditorHints() {
        return myHints;
    }

    @Nullable
    @Override
    public Object getData(@NotNull @NonNls String string) {
        return null;
    }
}
