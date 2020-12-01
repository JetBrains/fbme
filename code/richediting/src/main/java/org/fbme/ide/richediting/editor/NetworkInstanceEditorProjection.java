package org.fbme.ide.richediting.editor;

import jetbrains.mps.project.Project;
import org.fbme.ide.iec61499.adapter.fbnetwork.MPSNetworkInstanceReference;
import org.fbme.ide.platform.editor.EditorProjectionController;
import org.fbme.ide.platform.editor.SimpleEditorProjection;
import org.fbme.lib.iec61499.instances.NetworkInstance;
import org.jdom.Element;
import org.jetbrains.annotations.NonNls;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import org.jetbrains.mps.openapi.model.SNode;

import javax.swing.*;
import java.util.Objects;

public class NetworkInstanceEditorProjection extends SimpleEditorProjection {

    @NotNull
    private final NetworkInstance myInstance;

    private final Project myProject;

    public static final String PERSISTENCE_KEY = "instance-ref";

    public NetworkInstanceEditorProjection(SNode node, EditorProjectionController controller, String name, @NotNull NetworkInstance instance, Project project) {
        super(node, controller, name, new String[]{"org.fbme.ide.richediting.lang.editor.Rich Editing Hint.network"});
        myInstance = instance;
        myProject = project;
    }

    public NetworkInstance getInstance() {
        return myInstance;
    }

    @NotNull
    @Override
    public JComponent createHeaderComponent() {
        return new NetworkInstanceHeaderComponentProvider(myNode, myInstance, myProject).getComponent();
    }

    @Nullable
    @Override
    public Object getData(@NotNull @NonNls String dataId) {
        if (Objects.equals(dataId, RichEditorDataKeys.NETWORK_INSTANCE.getName())) {
            return myInstance;
        }
        return null;
    }

    @Override
    public void saveState(@NotNull Element element) {
        element.setAttribute(PERSISTENCE_KEY, MPSNetworkInstanceReference.create(myInstance).serialize());
    }
}
