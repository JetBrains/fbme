package org.fbme.ide.richediting.editor;

import com.intellij.ide.navigationToolbar.NavBarModel;
import com.intellij.openapi.actionSystem.DataContext;
import com.intellij.pom.Navigatable;
import jetbrains.mps.ide.project.ProjectHelper;
import jetbrains.mps.openapi.navigation.NavigationSupport;
import jetbrains.mps.project.Project;
import jetbrains.mps.smodel.ModelAccessHelper;
import org.fbme.ide.iec61499.editor.ProjectEditorSpecs;
import org.fbme.ide.iec61499.repository.PlatformElement;
import org.fbme.ide.platform.editor.HeaderedNodeEditor;
import org.fbme.lib.common.Declaration;
import org.fbme.lib.iec61499.declarations.ApplicationDeclaration;
import org.fbme.lib.iec61499.declarations.DeviceDeclaration;
import org.fbme.lib.iec61499.declarations.ResourceDeclaration;
import org.fbme.lib.iec61499.declarations.SystemDeclaration;
import org.fbme.lib.iec61499.instances.FunctionBlockInstance;
import org.fbme.lib.iec61499.instances.Instance;
import org.fbme.lib.iec61499.instances.NetworkInstance;
import org.jdom.Element;
import org.jdom.output.XMLOutputter;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.mps.openapi.model.SNode;

import java.util.ArrayList;
import java.util.Collections;

public class NetworkInstanceNavBarModel extends NavBarModel {

    private final Project myProject;

    public NetworkInstanceNavBarModel(com.intellij.openapi.project.Project project) {
        super(project);
        myProject = ProjectHelper.fromIdeaProject(project);
    }

    @Override
    protected void updateModel(DataContext context) {
    }

    @Override
    public void updateModel(Object object) {
        myProject.getModelAccess().runReadAction(() -> {
            NetworkInstance instance;
            if (object instanceof Item) {
                instance = ((Item) object).getInstance();
            } else if (object instanceof NetworkInstance) {
                instance = (NetworkInstance) object;
            } else {
                setModel(Collections.emptyList());
                return;
            }
            ArrayList<Object> model = new ArrayList<>();
            SystemDeclaration system = null;
            DeviceDeclaration device = null;
            Declaration container = instance.getRootInstance().getDeclaration();
            if (container instanceof ApplicationDeclaration) {
                system = ((ApplicationDeclaration) container).getContainer();
            }
            if (container instanceof ResourceDeclaration) {
                device = (DeviceDeclaration) ((ResourceDeclaration) container).getContainer();
                system = device.getContainer();
            }
            while (instance != null) {
                model.add(new Item(instance, myProject));
                Instance parentInstace = instance.getParent();
                if (parentInstace instanceof FunctionBlockInstance) {
                    instance = ((FunctionBlockInstance) parentInstace).getParent();
                } else {
                    instance = null;
                }
            }

            if (device != null) {
                model.add(new DeviceItem(device, myProject));
            }
            if (system != null) {
                model.add(new SystemItem(system, myProject));
            }

            Collections.reverse(model);
            setModel(model);
        });
    }

    public static class Item implements Navigatable {
        private final NetworkInstance myInstance;
        private final Project myProject;

        public Item(@NotNull NetworkInstance instance, Project project) {
            myInstance = instance;
            myProject = project;
        }

        @Override
        public void navigate(final boolean requestFocus) {
            myProject.getModelAccess().runReadAction(() -> NetworkInstanceNavigationSupport.navigate(myProject, myInstance, requestFocus));
        }

        @Override
        public boolean canNavigate() {
            return new ModelAccessHelper(myProject.getModelAccess()).runReadAction(() -> NetworkInstanceNavigationSupport.canNavigate(myProject, myInstance));
        }

        @Override
        public boolean canNavigateToSource() {
            return canNavigate();
        }

        public NetworkInstance getInstance() {
            return myInstance;
        }

        public Project getProject() {
            return myProject;
        }
    }

    public static class SystemItem implements Navigatable {
        private final SystemDeclaration mySystem;
        private final Project myProject;

        public SystemItem(@NotNull SystemDeclaration system, Project project) {
            mySystem = system;
            myProject = project;
        }

        @Override
        public void navigate(final boolean requestFocus) {
            new ModelAccessHelper(myProject.getModelAccess()).runReadAction(() -> NavigationSupport.getInstance().openNode(myProject, getSpec(), requestFocus, true));
        }

        @Override
        public boolean canNavigate() {
            return new ModelAccessHelper(myProject.getModelAccess()).runReadAction(() -> getSpec() != null);
        }

        private SNode getSpec() {
            if (mySystem instanceof PlatformElement) {
                Element element = new Element(HeaderedNodeEditor.PROJECTION_DATA_KEY);

                element.setAttribute(HeaderedNodeEditor.CONTROLLER_ID_KEY, "Overview");
                element.setAttribute(HeaderedNodeEditor.PROJECTION_NAME_KEY, "Overview");

                ProjectEditorSpecs specs = ProjectEditorSpecs.getInstance(myProject);
                return specs.getSpec(((PlatformElement) mySystem).getNode(), new XMLOutputter().outputString(element));
            }
            return null;
        }

        @Override
        public boolean canNavigateToSource() {
            return canNavigate();
        }

        public SystemDeclaration getSystem() {
            return mySystem;
        }

        public Project getProject() {
            return myProject;
        }
    }

    public static class DeviceItem {
        private final DeviceDeclaration myDevice;
        private final Project myProject;

        public DeviceItem(@NotNull DeviceDeclaration device, Project project) {
            myDevice = device;
            myProject = project;
        }

        public DeviceDeclaration getDevice() {
            return myDevice;
        }

        public Project getProject() {
            return myProject;
        }
    }
}
