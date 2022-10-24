package org.fbme.ide.richediting.editor

import com.intellij.ide.navigationToolbar.NavBarModel
import com.intellij.openapi.actionSystem.DataContext
import com.intellij.openapi.project.Project
import com.intellij.pom.Navigatable
import jetbrains.mps.ide.project.ProjectHelper
import jetbrains.mps.openapi.editor.Editor
import jetbrains.mps.openapi.navigation.NavigationSupport
import jetbrains.mps.smodel.ModelAccessHelper
import org.fbme.ide.iec61499.editor.ProjectEditorSpecs
import org.fbme.ide.iec61499.repository.PlatformElement
import org.fbme.ide.platform.editor.HeaderedNodeEditor
import org.fbme.lib.iec61499.declarations.ApplicationDeclaration
import org.fbme.lib.iec61499.declarations.DeviceDeclaration
import org.fbme.lib.iec61499.declarations.ResourceDeclaration
import org.fbme.lib.iec61499.declarations.SystemDeclaration
import org.fbme.lib.iec61499.instances.FunctionBlockInstance
import org.fbme.lib.iec61499.instances.NetworkInstance
import org.jdom.Element
import org.jdom.output.XMLOutputter
import org.jetbrains.mps.openapi.model.SNode
import java.util.*

class NetworkInstanceNavBarModel(project: Project) : NavBarModel(project) {
    private val project: jetbrains.mps.project.Project?
    override fun updateModel(context: DataContext) {}
    override fun updateModel(item: Any) {
        project!!.modelAccess.runReadAction {
            var instance: NetworkInstance?
            instance = if (item is Item) {
                item.instance
            } else if (item is NetworkInstance) {
                item
            } else {
                setModel(emptyList())
                return@runReadAction
            }
            val model = ArrayList<Any?>()
            var system: SystemDeclaration? = null
            var device: DeviceDeclaration? = null
            val container = instance.rootInstance.declaration
            if (container is ApplicationDeclaration) {
                system = container.container
            }
            if (container is ResourceDeclaration) {
                device = container.container as DeviceDeclaration
                system = device.container
            }
            while (instance != null) {
                model.add(Item(instance, project))
                val parentInstace = instance.parent
                instance = if (parentInstace is FunctionBlockInstance) {
                    parentInstace.parent
                } else {
                    null
                }
            }
            if (device != null) {
                model.add(DeviceItem(device, project))
            }
            if (system != null) {
                model.add(SystemItem(system, project))
            }
            model.reverse()
            setModel(model)
        }
    }

    class Item(val instance: NetworkInstance, val project: jetbrains.mps.project.Project?) : Navigatable {
        override fun navigate(requestFocus: Boolean) {
            project!!.modelAccess.runReadAction {
                NetworkInstanceNavigationSupport.navigate(
                    project,
                    instance,
                    requestFocus
                )
            }
        }

        override fun canNavigate(): Boolean {
            return ModelAccessHelper(project!!.modelAccess).runReadAction<Boolean> {
                NetworkInstanceNavigationSupport.canNavigate(project, instance)
            }
        }

        override fun canNavigateToSource(): Boolean {
            return canNavigate()
        }
    }

    class SystemItem(val system: SystemDeclaration, val project: jetbrains.mps.project.Project?) : Navigatable {
        override fun navigate(requestFocus: Boolean) {
            ModelAccessHelper(project!!.modelAccess).runReadAction<Editor> {
                NavigationSupport.getInstance().openNode(
                    project,
                    spec!!,
                    requestFocus,
                    true
                )
            }
        }

        override fun canNavigate(): Boolean {
            return ModelAccessHelper(project!!.modelAccess).runReadAction<Boolean> { spec != null }
        }

        private val spec: SNode?
            get() {
                if (system is PlatformElement) {
                    val element = Element(HeaderedNodeEditor.PROJECTION_DATA_KEY)
                    element.setAttribute(HeaderedNodeEditor.CONTROLLER_ID_KEY, "Overview")
                    element.setAttribute(HeaderedNodeEditor.PROJECTION_NAME_KEY, "Overview")
                    val specs = ProjectEditorSpecs.getInstance(project!!)
                    return specs.getSpec((system as PlatformElement).node, XMLOutputter().outputString(element))
                }
                return null
            }

        override fun canNavigateToSource(): Boolean {
            return canNavigate()
        }
    }

    class DeviceItem(val device: DeviceDeclaration, val project: jetbrains.mps.project.Project?)

    init {
        this.project = ProjectHelper.fromIdeaProject(project)
    }
}
