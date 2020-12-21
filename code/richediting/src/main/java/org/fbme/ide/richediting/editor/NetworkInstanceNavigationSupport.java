package org.fbme.ide.richediting.editor;

import jetbrains.mps.lang.smodel.generator.smodelAdapter.SNodeOperations;
import jetbrains.mps.openapi.editor.Editor;
import jetbrains.mps.openapi.navigation.NavigationSupport;
import jetbrains.mps.project.Project;
import org.fbme.ide.iec61499.editor.ProjectEditorSpecs;
import org.fbme.ide.iec61499.fbnetwork.MPSNetworkInstanceReference;
import org.fbme.ide.iec61499.repository.PlatformElement;
import org.fbme.ide.platform.editor.HeaderedNodeEditor;
import org.fbme.lib.common.Declaration;
import org.fbme.lib.iec61499.declarations.ApplicationDeclaration;
import org.fbme.lib.iec61499.declarations.ResourceDeclaration;
import org.fbme.lib.iec61499.instances.NetworkInstance;
import org.jdom.Element;
import org.jdom.output.XMLOutputter;
import org.jetbrains.mps.openapi.model.SNode;

public class NetworkInstanceNavigationSupport {

    public static Editor navigate(Project project, NetworkInstance instance, boolean focus) {
        return NavigationSupport.getInstance().openNode(project, getNavigationStub(project, instance), focus, true);
    }

    public static boolean canNavigate(Project project, NetworkInstance instance) {
        return getNavigationStub(project, instance) != null;
    }

    public static SNode getNavigationStub(Project project, NetworkInstance instance) {
        Declaration container = instance.getRootInstance().getDeclaration();
        if (container instanceof PlatformElement) {
            SNode targetNode = ((PlatformElement) container).getNode();

            Element element = new Element(HeaderedNodeEditor.PROJECTION_DATA_KEY);

            if (container instanceof ApplicationDeclaration) {
                element.setAttribute(HeaderedNodeEditor.CONTROLLER_ID_KEY, "Application");
                element.setAttribute(HeaderedNodeEditor.PROJECTION_NAME_KEY, container.getName());
                element.setAttribute(RichApplicationProjection.PERSISTENCE_KEY, MPSNetworkInstanceReference.create(instance).serialize());
                targetNode = SNodeOperations.getParent(targetNode);
            } else if (container instanceof ResourceDeclaration) {
                element.setAttribute(HeaderedNodeEditor.CONTROLLER_ID_KEY, "Resource");
                element.setAttribute(HeaderedNodeEditor.PROJECTION_NAME_KEY, ((ResourceDeclaration) container).getContainer().getName() + "." + container.getName());
                element.setAttribute(RichResourceProjection.PERSISTENCE_KEY, MPSNetworkInstanceReference.create(instance).serialize());
                targetNode = SNodeOperations.getParent(SNodeOperations.getParent(targetNode));
            } else {
                element.setAttribute(HeaderedNodeEditor.CONTROLLER_ID_KEY, "Network");
                element.setAttribute(HeaderedNodeEditor.PROJECTION_NAME_KEY, "Network");
                element.setAttribute(NetworkInstanceEditorProjection.PERSISTENCE_KEY, MPSNetworkInstanceReference.create(instance).serialize());
            }

            ProjectEditorSpecs specs = ProjectEditorSpecs.getInstance(project);
            return specs.getSpec(targetNode, new XMLOutputter().outputString(element));
        }
        return null;
    }
}
