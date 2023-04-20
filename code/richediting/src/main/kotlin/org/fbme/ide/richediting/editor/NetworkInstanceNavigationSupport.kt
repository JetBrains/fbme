package org.fbme.ide.richediting.editor

import jetbrains.mps.openapi.editor.Editor
import jetbrains.mps.openapi.navigation.NavigationSupport
import jetbrains.mps.project.Project
import org.fbme.ide.iec61499.fbnetwork.MPSNetworkInstanceReference
import org.fbme.ide.iec61499.repository.PlatformElement
import org.fbme.ide.platform.editor.NavigatableDeclaration
import org.fbme.lib.common.Declaration
import org.fbme.lib.iec61499.declarations.ApplicationDeclaration
import org.fbme.lib.iec61499.declarations.ResourceDeclaration
import org.fbme.lib.iec61499.declarations.SystemDeclaration
import org.fbme.lib.iec61499.instances.FunctionBlockInstance
import org.fbme.lib.iec61499.instances.NetworkInstance
import org.jetbrains.mps.openapi.model.SNode

object NetworkInstanceNavigationSupport {
    @JvmStatic
    fun navigate(project: Project?, instance: NetworkInstance, focus: Boolean): Editor {
        return NavigationSupport.getInstance().openNode(project!!, getNavigationStub(project, instance), focus, true)
    }

    @JvmStatic
    fun getNavigationStub(project: Project, instance: NetworkInstance): SNode =
            getNavigatableDeclaration(project, instance).targetSpec()

    fun getNavigatableDeclaration(
            project: Project,
            instance: NetworkInstance,
            declaration: Declaration = instance.rootInstance.declaration
    ): NavigatableDeclaration {
        val container = instance.rootInstance.declaration
        val controllerId = when (container) {
            is ApplicationDeclaration -> "Application"
            is ResourceDeclaration -> "Resource"
            else -> "Network"
        }
        val projectionName = when (container) {
            is ApplicationDeclaration -> container.name
            is ResourceDeclaration -> "${container.container.name}.${container.name}"
            else -> "Network"
        }
        val editedNode = (declaration as PlatformElement).node
        return NavigatableDeclaration.build(project, editedNode, controllerId, projectionName) {
            val reference = MPSNetworkInstanceReference.create(instance).serialize()
            it.setAttribute(NetworkInstanceEditorProjection.PERSISTENCE_KEY, reference)
        }
    }

    fun navigatablePath(project: Project, instance: NetworkInstance): ArrayDeque<NavigatableDeclaration> {
        var currentInstance: NetworkInstance? = instance
        var currentDeclaration: Declaration = instance.declaration
        val result = ArrayDeque<NavigatableDeclaration>()
        while (currentInstance != null) {
            result.addFirst(getNavigatableDeclaration(project, currentInstance, currentDeclaration))
            currentInstance = when (val parentInstance = currentInstance.parent) {
                is FunctionBlockInstance -> parentInstance.parent
                is NetworkInstance -> parentInstance
                else -> null
            }
            if (currentInstance != null) {
                currentDeclaration = currentInstance.declaration
            }
        }
        return result
    }
}
