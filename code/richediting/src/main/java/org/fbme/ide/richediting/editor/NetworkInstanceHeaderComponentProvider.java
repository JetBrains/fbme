package org.fbme.ide.richediting.editor;

import com.intellij.ide.navigationToolbar.NavBarItem;
import com.intellij.ide.navigationToolbar.NavBarModel;
import com.intellij.ide.navigationToolbar.NavBarPanel;
import com.intellij.ide.navigationToolbar.ui.CommonNavBarUI;
import com.intellij.ide.navigationToolbar.ui.NavBarUI;
import com.intellij.util.ui.JBInsets;
import jetbrains.mps.nodeEditor.EditorSettings;
import jetbrains.mps.nodeEditor.MPSColors;
import jetbrains.mps.project.MPSProject;
import jetbrains.mps.project.Project;
import org.fbme.ide.iec61499.repository.PlatformRepositoryProvider;
import org.fbme.lib.common.Declaration;
import org.fbme.lib.iec61499.declarations.*;
import org.fbme.lib.iec61499.fbnetwork.subapp.SubapplicationDeclaration;
import org.fbme.lib.iec61499.instances.NetworkInstance;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.mps.openapi.model.SNode;

import javax.swing.*;
import java.awt.*;
import java.awt.font.TextAttribute;
import java.util.Map;

public class NetworkInstanceHeaderComponentProvider {

    private final JPanel myComponent;

    public NetworkInstanceHeaderComponentProvider(SNode baseNode, NetworkInstance instance, Project project) {
        myComponent = new JPanel(new FlowLayout());
        Declaration declaration = PlatformRepositoryProvider.getInstance(project).getAdapter(baseNode, Declaration.class);
        JLabel aliasLabel = new JLabel(chooseAliasFor(declaration));
        Font defaultFont = EditorSettings.getInstance().getDefaultEditorFont();
        Map<TextAttribute, Number> attributes = (Map<TextAttribute, Number>) defaultFont.getAttributes();
        attributes.put(TextAttribute.UNDERLINE, TextAttribute.UNDERLINE_ON);
        attributes.put(TextAttribute.WEIGHT, TextAttribute.WEIGHT_BOLD);
        attributes.put(TextAttribute.POSTURE, TextAttribute.POSTURE_OBLIQUE);
        Font font = defaultFont.deriveFont(attributes);
        aliasLabel.setFont(font);
        aliasLabel.setForeground(MPSColors.DARK_GREEN);
        myComponent.add(aliasLabel);

        com.intellij.openapi.project.Project ideaProject = ((MPSProject) project).getProject();
        NavBarPanel panel = new NavBarPanel(ideaProject, true) {
            @Override
            protected NavBarModel createModel() {
                return new NetworkInstanceNavBarModel(myProject);
            }

            @NotNull
            @Override
            public NavBarUI getNavBarUI() {
                return NavBarUI;
            }
        };
        myComponent.putClientProperty("NavBarPanel", panel);
        panel.getModel().updateModel(instance);
        myComponent.add(panel);
    }

    public JComponent getComponent() {
        return myComponent;
    }

    private static String chooseAliasFor(Declaration declaration) {
        if (declaration instanceof AdapterTypeDeclaration) {
            return "Adapter";
        } else if (declaration instanceof BasicFBTypeDeclaration) {
            return "Basic Function Block";
        } else if (declaration instanceof CompositeFBTypeDeclaration) {
            return "Composite Function Block";
        } else if (declaration instanceof DeviceTypeDeclaration) {
            return "Device";
        } else if (declaration instanceof ResourceTypeDeclaration) {
            return "Resource";
        } else if (declaration instanceof SegmentTypeDeclaration) {
            return "Segment";
        } else if (declaration instanceof ServiceInterfaceFBTypeDeclaration) {
            return "Service Interface Function Block";
        } else if (declaration instanceof SubapplicationDeclaration) {
            return "Subapplication";
        } else if (declaration instanceof SystemDeclaration) {
            return "System";
        }
        return "Library Element";
    }

    private static final NavBarUI NavBarUI = new CommonNavBarUI() {
        @Override
        public Font getElementFont(NavBarItem navBarItem) {
            Object object = navBarItem.getObject();
            if (object instanceof NetworkInstanceNavBarModel.Item || object instanceof NetworkInstanceNavBarModel.SystemItem || object instanceof NetworkInstanceNavBarModel.DeviceItem) {
                return EditorSettings.getInstance().getDefaultEditorFont();
            }
            return super.getElementFont(navBarItem);
        }

        @Override
        public JBInsets getElementPadding() {
            return new JBInsets(1, -4, 1, 0);
        }

        @Override
        public Insets getWrapperPanelInsets(Insets insets) {
            return insets;
        }
    };
}
