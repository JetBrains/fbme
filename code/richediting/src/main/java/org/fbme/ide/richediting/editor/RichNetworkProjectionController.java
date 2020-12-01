package org.fbme.ide.richediting.editor;

import com.intellij.openapi.actionSystem.AnAction;
import jetbrains.mps.project.Project;
import org.fbme.ide.iec61499.adapter.fbnetwork.MPSNetworkInstanceReference;
import org.fbme.ide.iec61499.repository.PlatformElementsOwner;
import org.fbme.ide.iec61499.repository.PlatformRepository;
import org.fbme.ide.platform.PlatformRepositoryProvider;
import org.fbme.ide.platform.editor.ChooseProjectionAction;
import org.fbme.ide.platform.editor.EditorProjection;
import org.fbme.ide.platform.editor.EditorProjectionController;
import org.fbme.lib.common.Declaration;
import org.fbme.lib.iec61499.instances.NetworkInstance;
import org.jdom.Element;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.mps.openapi.model.SNode;

import java.util.Collections;
import java.util.List;
import java.util.Objects;

public class RichNetworkProjectionController implements EditorProjectionController {

    private final SNode myNode;
    private final Project myProject;

    public RichNetworkProjectionController(SNode node, Project project) {
        myNode = node;
        myProject = project;
    }

    @NotNull
    @Override
    public String getId() {
        return "Network";
    }

    @NotNull
    @Override
    public EditorProjection createProjection(@NotNull String name) {
        if (Objects.equals(name, getId())) {
            return createProjectionInternal(name);
        } else {
            throw new IllegalArgumentException("Unsupported projection");
        }
    }

    @Override
    public EditorProjection restoreProjection(@NotNull String name, @NotNull Element e) {
        if (Objects.equals(name, getId())) {
            String ref = e.getAttributeValue(NetworkInstanceEditorProjection.PERSISTENCE_KEY);
            PlatformRepository repository = PlatformRepositoryProvider.getInstance(myProject);
            NetworkInstance instance = ref != null ? MPSNetworkInstanceReference.deserialize(ref).resolve(repository) : null;
            if (instance == null) {
                instance = NetworkInstance.createForDeclaration(repository.getAdapter(myNode, Declaration.class));
            }
            return new NetworkInstanceEditorProjection(myNode, this, name, instance, myProject);
        } else {
            throw new IllegalArgumentException("Unsupported projection");
        }
    }

    private NetworkInstanceEditorProjection createProjectionInternal(String name) {
        PlatformElementsOwner repository = PlatformRepositoryProvider.getInstance(myProject);
        NetworkInstance instance = NetworkInstance.createForDeclaration(repository.getAdapter(myNode, Declaration.class));
        return new NetworkInstanceEditorProjection(myNode, this, name, instance, myProject);
    }

    @Override
    public List<AnAction> getChooseProjectionActions() {
        return Collections.singletonList(new ChooseProjectionAction(this, "Network"));
    }

    @Override
    public List<AnAction> getCreateProjectionActions() {
        return Collections.emptyList();
    }
}
