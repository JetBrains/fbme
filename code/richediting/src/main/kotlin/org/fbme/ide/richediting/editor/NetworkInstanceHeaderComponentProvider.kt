package org.fbme.ide.richediting.editor

import com.intellij.ide.navigationToolbar.NavBarItem
import com.intellij.ide.navigationToolbar.NavBarModel
import com.intellij.ide.navigationToolbar.NavBarPanel
import com.intellij.ide.navigationToolbar.ui.CommonNavBarUI
import com.intellij.ide.navigationToolbar.ui.NavBarUI
import com.intellij.util.ui.JBInsets
import jetbrains.mps.nodeEditor.EditorSettings
import jetbrains.mps.nodeEditor.MPSColors
import jetbrains.mps.project.MPSProject
import jetbrains.mps.project.Project
import org.fbme.ide.iec61499.repository.PlatformRepositoryProvider
import org.fbme.lib.common.Declaration
import org.fbme.lib.iec61499.declarations.*
import org.fbme.lib.iec61499.fbnetwork.subapp.SubapplicationDeclaration
import org.fbme.lib.iec61499.instances.NetworkInstance
import org.jetbrains.mps.openapi.model.SNode
import java.awt.FlowLayout
import java.awt.Font
import java.awt.Insets
import java.awt.font.TextAttribute
import javax.swing.JLabel
import javax.swing.JPanel

class NetworkInstanceHeaderComponentProvider(baseNode: SNode, instance: NetworkInstance, project: Project) {
    val component: JPanel = JPanel(FlowLayout())

    companion object {
        private fun chooseAliasFor(declaration: Declaration): String {
            if (declaration is AdapterTypeDeclaration) {
                return "Adapter"
            } else if (declaration is BasicFBTypeDeclaration) {
                return "Basic Function Block"
            } else if (declaration is CompositeFBTypeDeclaration) {
                return "Composite Function Block"
            } else if (declaration is DeviceTypeDeclaration) {
                return "Device"
            } else if (declaration is ResourceTypeDeclaration) {
                return "Resource"
            } else if (declaration is SegmentTypeDeclaration) {
                return "Segment"
            } else if (declaration is ServiceInterfaceFBTypeDeclaration) {
                return "Service Interface Function Block"
            } else if (declaration is SubapplicationDeclaration) {
                return "Subapplication"
            } else if (declaration is SystemDeclaration) {
                return "System"
            }
            return "Library Element"
        }

        private val NavBarUI: NavBarUI = object : CommonNavBarUI() {
            override fun getElementFont(navBarItem: NavBarItem): Font {
                val `object` = navBarItem.getObject()
                return if (`object` is NetworkInstanceNavBarModel.Item || `object` is NetworkInstanceNavBarModel.SystemItem || `object` is NetworkInstanceNavBarModel.DeviceItem) {
                    EditorSettings.getInstance().defaultEditorFont
                } else super.getElementFont(navBarItem)
            }

            override fun getElementPadding(): JBInsets {
                return JBInsets(1, -4, 1, 0)
            }

            override fun getWrapperPanelInsets(insets: Insets): Insets {
                return insets
            }
        }
    }

    init {
        val declaration = PlatformRepositoryProvider.getInstance(project).getAdapter(baseNode, Declaration::class.java)
            ?: error("Declaration is null")
        val aliasLabel = JLabel(chooseAliasFor(declaration))
        val defaultFont = EditorSettings.getInstance().defaultEditorFont
        val attributes = defaultFont.attributes as MutableMap<TextAttribute, Number?>
        attributes[TextAttribute.UNDERLINE] = TextAttribute.UNDERLINE_ON
        attributes[TextAttribute.WEIGHT] = TextAttribute.WEIGHT_BOLD
        attributes[TextAttribute.POSTURE] = TextAttribute.POSTURE_OBLIQUE
        val font = defaultFont.deriveFont(attributes)
        aliasLabel.font = font
        aliasLabel.foreground = MPSColors.DARK_GREEN
        component.add(aliasLabel)
        val ideaProject = (project as MPSProject).project
        val panel: NavBarPanel = object : NavBarPanel(ideaProject, true) {
            override fun createModel(): NavBarModel {
                return NetworkInstanceNavBarModel(myProject)
            }

            override fun getNavBarUI(): NavBarUI {
                return NavBarUI
            }
        }
        component.putClientProperty("NavBarPanel", panel)
        panel.model.updateModel(instance)
        component.add(panel)
    }
}