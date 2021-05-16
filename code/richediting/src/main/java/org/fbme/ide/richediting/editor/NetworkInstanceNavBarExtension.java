package org.fbme.ide.richediting.editor;

import com.intellij.ide.navigationToolbar.AbstractNavBarModelExtension;
import com.intellij.openapi.project.Project;
import com.intellij.openapi.vfs.VirtualFile;
import com.intellij.psi.PsiElement;
import com.intellij.util.Processor;
import jetbrains.mps.smodel.MPSModuleRepository;
import jetbrains.mps.smodel.ModelAccessHelper;
import org.fbme.lib.iec61499.declarations.ApplicationDeclaration;
import org.fbme.lib.iec61499.declarations.DeviceDeclaration;
import org.fbme.lib.iec61499.declarations.ResourceDeclaration;
import org.fbme.lib.iec61499.declarations.SystemDeclaration;
import org.fbme.lib.iec61499.fbnetwork.FunctionBlockDeclaration;
import org.fbme.lib.iec61499.instances.FunctionBlockInstance;
import org.fbme.lib.iec61499.instances.Instance;
import org.fbme.lib.iec61499.instances.NetworkInstance;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

import java.util.Collection;
import java.util.Collections;
import java.util.Objects;

public class NetworkInstanceNavBarExtension extends AbstractNavBarModelExtension {

    @Nullable
    @Override
    public String getPresentableText(Object object) {
        ModelAccessHelper modelAccess = new ModelAccessHelper(MPSModuleRepository.getInstance().getModelAccess());
        if (object instanceof NetworkInstanceNavBarModel.Item) {
            final NetworkInstance instance = ((NetworkInstanceNavBarModel.Item) object).getInstance();
            return modelAccess.runReadAction(() -> Objects.requireNonNullElse(instance.getParent(), instance).getDeclaration().getName());
        }
        if (object instanceof NetworkInstanceNavBarModel.SystemItem) {
            final SystemDeclaration system = ((NetworkInstanceNavBarModel.SystemItem) object).getSystem();
            return modelAccess.runReadAction(system::getName);
        }
        if (object instanceof NetworkInstanceNavBarModel.DeviceItem) {
            final DeviceDeclaration device = ((NetworkInstanceNavBarModel.DeviceItem) object).getDevice();
            return modelAccess.runReadAction(device::getName);
        }
        return null;
    }

    @Nullable
    @Override
    public PsiElement getParent(PsiElement element) {
        return null;
    }

    @Nullable
    @Override
    public PsiElement adjustElement(@NotNull PsiElement element) {
        return null;
    }

    @NotNull
    @Override
    public Collection<VirtualFile> additionalRoots(Project project) {
        return Collections.emptyList();
    }

    @Override
    public boolean processChildren(Object object, Object rootElement, final Processor<Object> processor) {
        if (object instanceof NetworkInstanceNavBarModel.Item) {
            NetworkInstanceNavBarModel.Item item = (NetworkInstanceNavBarModel.Item) object;
            final NetworkInstance instance = item.getInstance();
            final jetbrains.mps.project.Project project = item.getProject();

            project.getModelAccess().runReadAction(() -> {
                for (FunctionBlockDeclaration component : instance.getNetworkDeclaration().getFunctionBlocks()) {
                    FunctionBlockInstance child = instance.getChild(component);
                    if (child != null) {
                        @Nullable Instance childNetwork = child.getContainedNetwork();

                        if (childNetwork instanceof NetworkInstance) {
                            processor.process(new NetworkInstanceNavBarModel.Item((NetworkInstance) childNetwork, project));
                        }
                    }

                }
            });
        }
        if (object instanceof NetworkInstanceNavBarModel.SystemItem) {
            NetworkInstanceNavBarModel.SystemItem systemItem = (NetworkInstanceNavBarModel.SystemItem) object;
            final SystemDeclaration system = systemItem.getSystem();
            final jetbrains.mps.project.Project project = systemItem.getProject();

            project.getModelAccess().runReadAction(() -> {
                for (ApplicationDeclaration application : system.getApplications()) {

                    NetworkInstance root = NetworkInstance.createForApplication(application);
                    processor.process(new NetworkInstanceNavBarModel.Item(root, project));
                }
            });
        }
        if (object instanceof NetworkInstanceNavBarModel.DeviceItem) {
            NetworkInstanceNavBarModel.DeviceItem deviceItem = (NetworkInstanceNavBarModel.DeviceItem) object;
            final DeviceDeclaration device = deviceItem.getDevice();
            final jetbrains.mps.project.Project project = deviceItem.getProject();

            project.getModelAccess().runReadAction(() -> {
                for (ResourceDeclaration resource : device.getResources()) {
                    NetworkInstance root = NetworkInstance.createForResource(resource);
                    processor.process(new NetworkInstanceNavBarModel.Item(root, project));
                }
            });
        }
        return true;
    }
}
