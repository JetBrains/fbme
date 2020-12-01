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

public class RichApplicationProjection extends SimpleEditorProjection {

    private final NetworkInstance myInstance;
    private final Project myProject;

    public static final String PERSISTENCE_KEY = "instance-ref";

    public RichApplicationProjection(SNode node, EditorProjectionController controller, String name, String[] hints, NetworkInstance instance, Project project) {
        super(node, controller, name, hints);
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
    public Object getData(@NotNull @NonNls String string) {
        if (Objects.equals(RichEditorDataKeys.APPLICATION.getName(), string)) {
            return myInstance.getRootInstance().getDeclaration();
        }
        if (Objects.equals(RichEditorDataKeys.NETWORK_INSTANCE.getName(), string)) {
            return myInstance;
        }
        return null;
    }

    @Override
    public void saveState(@NotNull Element element) {
        element.setAttribute(PERSISTENCE_KEY, MPSNetworkInstanceReference.create(myInstance).serialize());
    }
}
