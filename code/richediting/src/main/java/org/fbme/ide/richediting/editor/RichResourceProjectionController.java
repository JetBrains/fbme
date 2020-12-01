package org.fbme.ide.richediting.editor;

import com.intellij.openapi.actionSystem.AnAction;
import jetbrains.mps.project.Project;
import jetbrains.mps.smodel.ModelAccessHelper;
import org.fbme.ide.iec61499.adapter.fbnetwork.MPSNetworkInstanceReference;
import org.fbme.ide.iec61499.repository.PlatformRepository;
import org.fbme.ide.platform.PlatformRepositoryProvider;
import org.fbme.ide.platform.editor.ChooseProjectionAction;
import org.fbme.ide.platform.editor.EditorProjection;
import org.fbme.ide.platform.editor.EditorProjectionController;
import org.fbme.lib.iec61499.declarations.ResourceDeclaration;
import org.fbme.lib.iec61499.declarations.SystemDeclaration;
import org.fbme.lib.iec61499.instances.NetworkInstance;
import org.jdom.Element;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.mps.openapi.model.SNode;

import java.util.Collections;
import java.util.List;
import java.util.Objects;
import java.util.stream.Collectors;

public class RichResourceProjectionController implements EditorProjectionController {

    private final SNode myNode;
    private final Project myProject;
    private final SystemDeclaration mySystem;


    public RichResourceProjectionController(SNode node, Project project) {
        myNode = node;
        myProject = project;
        mySystem = PlatformRepositoryProvider.getInstance(project).getAdapter(node, SystemDeclaration.class);
    }

    @NotNull
    @Override
    public String getId() {
        return "Resource";
    }

    @NotNull
    @Override
    public EditorProjection createProjection(@NotNull String name) {
        String[] names = name.split("\\.");
        final String deviceName = names[0];
        final String resourceName = names[1];
        final ResourceDeclaration resource = new ModelAccessHelper(myProject.getModelAccess()).runReadAction(() ->
                mySystem.getDevices().stream()
                        .filter(it -> Objects.equals(it.getName(), deviceName))
                        .findFirst()
                        .orElseThrow()
                        .getResources().stream()
                        .filter(it -> Objects.equals(it.getName(), resourceName))
                        .findFirst()
                        .orElseThrow()
        );
        NetworkInstance instance = NetworkInstance.createForResource(resource);
        return createProjection0(name, instance);
    }

    @Override
    public EditorProjection restoreProjection(@NotNull String name, @NotNull Element e) {
        PlatformRepository repository = PlatformRepositoryProvider.getInstance(myProject);

        String ref = e.getAttributeValue(RichApplicationProjection.PERSISTENCE_KEY);
        NetworkInstance instance = ref != null ? MPSNetworkInstanceReference.deserialize(ref).resolve(repository) : null;
        if (instance != null) {
            return createProjection0(name, instance);
        } else {
            return createProjection(name);
        }

    }

    private EditorProjection createProjection0(String name, NetworkInstance instance) {
        return new RichResourceProjection(myNode, this, name, new String[]{"org.fbme.ide.richediting.lang.editor.Rich Editing Hint.system_res"}, instance, myProject);
    }

    @Override
    public List<AnAction> getChooseProjectionActions() {
        return new ModelAccessHelper(myProject.getModelAccess()).runReadAction(() ->
                mySystem.getDevices().stream()
                        .flatMap(it -> it.getResources().stream())
                        .map(it -> new ChooseProjectionAction(this, it.getContainer().getName() + "." + it.getName()))
                        .collect(Collectors.toList())
        );
    }

    @Override
    public List<AnAction> getCreateProjectionActions() {
        return Collections.emptyList();
    }
}
