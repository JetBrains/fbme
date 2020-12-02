package org.fbme.ide.platform.editor;

import com.intellij.openapi.actionSystem.AnAction;
import com.intellij.openapi.actionSystem.AnActionEvent;
import jetbrains.mps.project.MPSProject;
import jetbrains.mps.workbench.MPSDataKeys;
import org.jetbrains.annotations.NotNull;

public class ChooseProjectionAction extends AnAction {

    private final EditorProjectionController myController;
    private final String myProjectionName;

    public ChooseProjectionAction(EditorProjectionController conroller, String projectionName) {
        myController = conroller;
        myProjectionName = projectionName;
        getTemplatePresentation().setText(projectionName, false);
    }

    @Override
    public void actionPerformed(@NotNull AnActionEvent event) {
        MPSProject project = event.getData(MPSDataKeys.MPS_PROJECT);
        final HeaderedNodeEditor editor = event.getData(HeaderedEditorDataKeys.EDITOR);

        if (project == null || editor == null) {
            return;
        }
        project.getModelAccess().runReadAction(() -> editor.chooseProjection(myController.createProjection(myProjectionName)));
    }
}
