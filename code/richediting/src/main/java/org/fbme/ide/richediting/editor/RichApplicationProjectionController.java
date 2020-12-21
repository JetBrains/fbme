package org.fbme.ide.richediting.editor;

import com.intellij.openapi.actionSystem.AnAction;
import com.intellij.openapi.actionSystem.AnActionEvent;
import jetbrains.mps.project.MPSProject;
import jetbrains.mps.project.Project;
import jetbrains.mps.smodel.ModelAccessHelper;
import jetbrains.mps.workbench.MPSDataKeys;
import org.fbme.ide.iec61499.fbnetwork.MPSNetworkInstanceReference;
import org.fbme.ide.iec61499.repository.PlatformRepository;
import org.fbme.ide.iec61499.repository.PlatformRepositoryProvider;
import org.fbme.ide.platform.editor.*;
import org.fbme.lib.common.StringIdentifier;
import org.fbme.lib.iec61499.declarations.ApplicationDeclaration;
import org.fbme.lib.iec61499.declarations.SystemDeclaration;
import org.fbme.lib.iec61499.instances.NetworkInstance;
import org.jdom.Element;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.mps.openapi.model.SNode;

import java.util.Collections;
import java.util.List;
import java.util.Objects;
import java.util.stream.Collectors;

public class RichApplicationProjectionController implements EditorProjectionController {

    private final SNode myNode;
    private final Project myProject;
    private final SystemDeclaration mySystem;
    private final PlatformRepository myRepository;

    public RichApplicationProjectionController(SNode node, Project project) {
        myNode = node;
        myProject = project;
        myRepository = PlatformRepositoryProvider.getInstance(myProject);
        mySystem = myRepository.getAdapter(node, SystemDeclaration.class);
    }

    @NotNull
    @Override
    public String getId() {
        return "Application";
    }

    @NotNull
    @Override
    public EditorProjection createProjection(@NotNull final String name) {
        final ApplicationDeclaration app = new ModelAccessHelper(myProject.getModelAccess()).runReadAction(() ->
                mySystem.getApplications().stream()
                        .filter(it -> Objects.equals(it.getName(), name))
                        .findFirst()
                        .orElse(null)
        );

        NetworkInstance instance = NetworkInstance.createForApplication(app);
        return createProjection0(name, instance);
    }


    @Override
    public EditorProjection restoreProjection(@NotNull String name, @NotNull Element e) {
        String ref = e.getAttributeValue(RichApplicationProjection.PERSISTENCE_KEY);
        PlatformRepository repository = PlatformRepositoryProvider.getInstance(myProject);

        NetworkInstance instance = ref != null ? MPSNetworkInstanceReference.deserialize(ref).resolve(repository) : null;
        if (instance != null) {
            return createProjection0(name, instance);
        } else {
            return createProjection(name);
        }

    }

    private EditorProjection createProjection0(String name, NetworkInstance instance) {
        return new RichApplicationProjection(myNode, this, name, new String[]{"org.fbme.ide.richediting.lang.editor.Rich Editing Hint.system_app"}, instance, myProject);
    }

    @Override
    public List<AnAction> getChooseProjectionActions() {
        return new ModelAccessHelper(myProject.getModelAccess()).runReadAction(() ->
                mySystem.getApplications().stream()
                        .map(it -> new ChooseProjectionAction(this, it.getName()))
                        .collect(Collectors.toList())
        );
    }

    @Override
    public List<AnAction> getCreateProjectionActions() {
        return Collections.singletonList(new AnAction("New Application") {

            @Override
            public void actionPerformed(@NotNull AnActionEvent event) {
                MPSProject project = event.getData(MPSDataKeys.MPS_PROJECT);
                final HeaderedNodeEditor editor = event.getData(HeaderedEditorDataKeys.EDITOR);

                if (project == null || editor == null) {
                    return;
                }
                project.getModelAccess().executeCommand(() -> {
                    ApplicationDeclaration application = myRepository.getIEC61499Factory().createApplicationDeclaration(new StringIdentifier(""));
                    mySystem.getApplications().add(application);
                    editor.chooseProjection(createProjection(""));
                });
            }
        });
    }
}
