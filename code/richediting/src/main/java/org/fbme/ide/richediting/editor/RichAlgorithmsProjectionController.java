package org.fbme.ide.richediting.editor;

import com.intellij.openapi.actionSystem.AnAction;
import com.intellij.openapi.actionSystem.AnActionEvent;
import jetbrains.mps.nodeEditor.NodeEditorComponent;
import jetbrains.mps.project.MPSProject;
import jetbrains.mps.project.Project;
import jetbrains.mps.smodel.ModelAccessHelper;
import jetbrains.mps.workbench.MPSDataKeys;
import org.fbme.ide.iec61499.repository.PlatformElement;
import org.fbme.ide.iec61499.repository.PlatformRepository;
import org.fbme.ide.iec61499.repository.PlatformRepositoryProvider;
import org.fbme.ide.platform.editor.*;
import org.fbme.lib.common.StringIdentifier;
import org.fbme.lib.iec61499.declarations.AlgorithmDeclaration;
import org.fbme.lib.iec61499.declarations.BasicFBTypeDeclaration;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.mps.openapi.model.SNode;

import java.util.List;
import java.util.Objects;
import java.util.stream.Collectors;

public class RichAlgorithmsProjectionController implements EditorProjectionController {

    private final SNode myNode;
    private final Project myProject;
    private final BasicFBTypeDeclaration myTypeDeclaration;
    private final PlatformRepository myPlatformRepository;

    public RichAlgorithmsProjectionController(SNode node, Project project) {
        myNode = node;
        myProject = project;
        myPlatformRepository = PlatformRepositoryProvider.getInstance(project);
        myTypeDeclaration = myPlatformRepository.getAdapter(myNode, BasicFBTypeDeclaration.class);
    }

    @NotNull
    @Override
    public String getId() {
        return "Algorithm";
    }

    @NotNull
    @Override
    public EditorProjection createProjection(@NotNull final String name) {
        AlgorithmDeclaration algorithm = new ModelAccessHelper(myProject.getModelAccess()).runReadAction(() ->
                myTypeDeclaration.getAlgorithms()
                        .stream()
                        .filter(it -> Objects.equals(it.getName(), name))
                        .findFirst()
                        .orElseThrow()
        );
        return new RichAlgorithmProjection(myNode, this, myProject, name, new String[]{"org.fbme.ide.richediting.lang.editor.Rich Editing Hint.algorithm"}, algorithm);
    }

    @Override
    public List<AnAction> getChooseProjectionActions() {
        return new ModelAccessHelper(myProject.getModelAccess()).runReadAction(() ->
                myTypeDeclaration.getAlgorithms()
                        .stream()
                        .map(it -> new ChooseProjectionAction(this, it.getName()))
                        .collect(Collectors.toList())
        );
    }

    @Override
    public List<AnAction> getCreateProjectionActions() {
        return List.of(new AnAction("New Algorithm") {

            @Override
            public void actionPerformed(@NotNull AnActionEvent event) {
                MPSProject project = event.getData(MPSDataKeys.MPS_PROJECT);
                final HeaderedNodeEditor editor = event.getData(HeaderedEditorDataKeys.EDITOR);

                if (project == null || editor == null) {
                    return;
                }
                project.getModelAccess().executeCommand(() -> {
                    AlgorithmDeclaration algorithm = myPlatformRepository.getIEC61499Factory().createAlgorithmDeclaration(new StringIdentifier(""));
                    myTypeDeclaration.getAlgorithms().add(algorithm);
                    editor.chooseProjection(createProjection(""));
                    NodeEditorComponent component = editor.getCurrentEditorComponent();
                    component.changeSelection(component.findNodeCellWithRole(((PlatformElement) algorithm).getNode(), "name"));
                });
            }
        });
    }
}
