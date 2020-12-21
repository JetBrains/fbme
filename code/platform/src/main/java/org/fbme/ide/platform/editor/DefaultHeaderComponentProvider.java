package org.fbme.ide.platform.editor;

import jetbrains.mps.nodeEditor.EditorSettings;
import jetbrains.mps.nodeEditor.MPSColors;
import jetbrains.mps.project.Project;
import org.fbme.ide.iec61499.repository.PlatformRepositoryProvider;
import org.fbme.lib.common.Declaration;
import org.jetbrains.mps.openapi.model.SNode;

import javax.swing.*;
import java.awt.*;
import java.awt.font.TextAttribute;
import java.util.Map;

public class DefaultHeaderComponentProvider {

    private final JPanel myComponent;

    public DefaultHeaderComponentProvider(SNode baseNode, Project project) {
        Declaration declaration = PlatformRepositoryProvider.getInstance(project).getAdapter(baseNode, Declaration.class);

        myComponent = new JPanel(new FlowLayout());
        JLabel aliasLabel = new JLabel(HeaderedEditorAlias.getAlias(declaration));
        Font defaultFont = EditorSettings.getInstance().getDefaultEditorFont();
        Map<TextAttribute, Number> attributes = (Map<TextAttribute, Number>) defaultFont.getAttributes();
        attributes.put(TextAttribute.UNDERLINE, TextAttribute.UNDERLINE_ON);
        attributes.put(TextAttribute.WEIGHT, TextAttribute.WEIGHT_BOLD);
        attributes.put(TextAttribute.POSTURE, TextAttribute.POSTURE_OBLIQUE);
        Font font = defaultFont.deriveFont(attributes);
        aliasLabel.setFont(font);
        aliasLabel.setForeground(MPSColors.DARK_GREEN);
        myComponent.add(aliasLabel);
        JLabel nameLabel = new JLabel(baseNode.getName());
        nameLabel.setFont(defaultFont);
        myComponent.add(nameLabel);
    }

    public JComponent getComponent() {
        return myComponent;
    }

//    private class MyNameListener extends SNodeChangeListenerAdapter {
//        private SModel myLastAttachModel;
//
//        /*package*/
//        synchronized void attach(@Nullable SModel model) {
//            detach();
//            myLastAttachModel = model;
//            if (model != null) {
//                model.addChangeListener(this);
//            }
//        }
//
//        /*package*/
//        synchronized void detach() {
//            if (myLastAttachModel != null) {
//                myLastAttachModel.removeChangeListener(this);
//                myLastAttachModel = null;
//            }
//        }
//
//        @Override
//        public void propertyChanged(@NotNull SPropertyChangeEvent event) {
//            if (Objects.equals(PROPS.name$MnvL, event.getProperty()) && event.getNode() == myBaseNode) {
//                updateProperties();
//            }
//        }
//    }
}
