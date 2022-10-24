package org.fbme.ide.platform.editor

import jetbrains.mps.nodeEditor.EditorSettings
import jetbrains.mps.nodeEditor.MPSColors
import jetbrains.mps.project.Project
import org.fbme.ide.iec61499.repository.PlatformRepositoryProvider
import org.fbme.lib.common.Declaration
import org.jetbrains.mps.openapi.model.SNode
import java.awt.FlowLayout
import java.awt.font.TextAttribute
import javax.swing.JComponent
import javax.swing.JLabel
import javax.swing.JPanel

class DefaultHeaderComponentProvider(baseNode: SNode, project: Project) {
    private val myComponent: JPanel

    //    private class MyNameListener extends SNodeChangeListenerAdapter {
    val component: JComponent
        get() = myComponent

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
    init {
        val declaration = PlatformRepositoryProvider.getInstance(project).getAdapter(baseNode, Declaration::class.java)
            ?: error("Declaration is null")
        myComponent = JPanel(FlowLayout())
        val aliasLabel = JLabel(HeaderedEditorAlias.getAlias(declaration))
        val defaultFont = EditorSettings.getInstance().defaultEditorFont
        val attributes = defaultFont.attributes as MutableMap<TextAttribute, Number?>
        attributes[TextAttribute.UNDERLINE] = TextAttribute.UNDERLINE_ON
        attributes[TextAttribute.WEIGHT] = TextAttribute.WEIGHT_BOLD
        attributes[TextAttribute.POSTURE] = TextAttribute.POSTURE_OBLIQUE
        val font = defaultFont.deriveFont(attributes)
        aliasLabel.font = font
        aliasLabel.foreground = MPSColors.DARK_GREEN
        myComponent.add(aliasLabel)
        val nameLabel = JLabel(baseNode.name)
        nameLabel.font = defaultFont
        myComponent.add(nameLabel)
    }
}
