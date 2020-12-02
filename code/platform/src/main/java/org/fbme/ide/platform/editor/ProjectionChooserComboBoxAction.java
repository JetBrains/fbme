package org.fbme.ide.platform.editor;

import com.intellij.ide.DataManager;
import com.intellij.openapi.actionSystem.*;
import com.intellij.openapi.actionSystem.ex.ComboBoxAction;
import com.intellij.openapi.vfs.VirtualFile;
import jetbrains.mps.nodefs.MPSNodeVirtualFile;
import jetbrains.mps.project.Project;
import jetbrains.mps.workbench.MPSDataKeys;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.mps.openapi.model.SNode;

import javax.swing.*;
import java.util.List;
import java.util.Objects;
import java.util.stream.Collectors;

public class ProjectionChooserComboBoxAction extends ComboBoxAction {

    private final HeaderedNodeEditor myEditor;

    public ProjectionChooserComboBoxAction(HeaderedNodeEditor editor) {
        myEditor = editor;
    }

    @Override
    public void update(@NotNull AnActionEvent e) {
        Presentation presentation = e.getPresentation();
        presentation.setText(myEditor.getCurrentProjection().getName());
    }

    @NotNull
    @Override
    protected DefaultActionGroup createPopupActionGroup(JComponent component) {
        DataContext context = DataManager.getInstance().getDataContext(component);
        final DefaultActionGroup group = new DefaultActionGroup();
        final VirtualFile vf = context.getData(LangDataKeys.VIRTUAL_FILE);
        final Project project = context.getData(MPSDataKeys.MPS_PROJECT);

        if (project != null && vf instanceof MPSNodeVirtualFile) {
            project.getModelAccess().runReadAction(() -> {
                final SNode node = Objects.requireNonNull(((MPSNodeVirtualFile) vf).getNode());

                List<EditorProjectionController> controllers = EditorProjectionControllerRegistry.getInstance()
                        .getFactories().stream()
                        .filter(it -> it.isApplicable(node))
                        .map(it -> it.create(node, project))
                        .collect(Collectors.toList());

                for (EditorProjectionController controller : controllers) {
                    group.addAll(controller.getChooseProjectionActions());
                }
                group.addSeparator();
                for (EditorProjectionController controller : controllers) {
                    group.addAll(controller.getCreateProjectionActions());
                }

            });
        }
        return group;
    }

}
