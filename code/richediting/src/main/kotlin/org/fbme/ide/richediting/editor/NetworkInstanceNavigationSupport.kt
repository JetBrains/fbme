package org.fbme.ide.richediting.editor

import jetbrains.mps.lang.smodel.generator.smodelAdapter.SNodeOperations
import jetbrains.mps.openapi.editor.Editor
import jetbrains.mps.openapi.navigation.NavigationSupport
import jetbrains.mps.project.Project
import org.fbme.ide.iec61499.editor.ProjectEditorSpecs
import org.fbme.ide.iec61499.fbnetwork.MPSNetworkInstanceReference
import org.fbme.ide.iec61499.repository.PlatformElement
import org.fbme.ide.platform.editor.HeaderedNodeEditor
import org.fbme.lib.iec61499.declarations.ApplicationDeclaration
import org.fbme.lib.iec61499.declarations.ResourceDeclaration
import org.fbme.lib.iec61499.instances.NetworkInstance
import org.jdom.Element
import org.jdom.output.XMLOutputter
import org.jetbrains.mps.openapi.model.SNode

object NetworkInstanceNavigationSupport {
    @JvmStatic
    fun navigate(project: Project?, instance: NetworkInstance, focus: Boolean): Editor {
        return NavigationSupport.getInstance().openNode(project!!, getNavigationStub(project, instance)!!, focus, true)
    }

    @JvmStatic
    fun canNavigate(project: Project, instance: NetworkInstance): Boolean {
        return getNavigationStub(project, instance) != null
    }

    @JvmStatic
    fun getNavigationStub(project: Project, instance: NetworkInstance): SNode? {
        val container = instance.rootInstance.declaration
        if (container is PlatformElement) {
            var targetNode: SNode = (container as PlatformElement).node
            val element = Element(HeaderedNodeEditor.PROJECTION_DATA_KEY)
            when (container) {
                is ApplicationDeclaration -> {
                    element.setAttribute(HeaderedNodeEditor.CONTROLLER_ID_KEY, "Application")
                    element.setAttribute(HeaderedNodeEditor.PROJECTION_NAME_KEY, container.name)
                    element.setAttribute(
                        RichApplicationProjection.PERSISTENCE_KEY,
                        MPSNetworkInstanceReference.create(instance).serialize()
                    )
                    targetNode = SNodeOperations.getParent(targetNode)
                }

                is ResourceDeclaration -> {
                    element.setAttribute(HeaderedNodeEditor.CONTROLLER_ID_KEY, "Resource")
                    element.setAttribute(
                        HeaderedNodeEditor.PROJECTION_NAME_KEY,
                        (container as ResourceDeclaration).container.name + "." + container.name
                    )
                    element.setAttribute(
                        RichResourceProjection.PERSISTENCE_KEY,
                        MPSNetworkInstanceReference.create(instance).serialize()
                    )
                    targetNode = SNodeOperations.getParent(SNodeOperations.getParent(targetNode))
                }

                else -> {
                    element.setAttribute(HeaderedNodeEditor.CONTROLLER_ID_KEY, "Network")
                    element.setAttribute(HeaderedNodeEditor.PROJECTION_NAME_KEY, "Network")
                    element.setAttribute(
                        NetworkInstanceEditorProjection.PERSISTENCE_KEY,
                        MPSNetworkInstanceReference.create(instance).serialize()
                    )
                }
            }
            val specs = ProjectEditorSpecs.getInstance(project)
            return specs.getSpec(targetNode, XMLOutputter().outputString(element))
        }
        return null
    }
}
