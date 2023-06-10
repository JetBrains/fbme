package org.fbme.ide.richediting.editor.providers

import jetbrains.mps.project.Project
import org.fbme.ide.iec61499.repository.PlatformElement
import org.fbme.ide.platform.editor.EditorProjectionController
import org.fbme.ide.platform.editor.EditorProjectionControllerProvider
import org.fbme.ide.richediting.editor.RichNetworkProjectionController
import org.fbme.lib.iec61499.declarations.DeclarationWithNetwork

class NetworkProjectionControllerProvider: EditorProjectionControllerProvider("Network") {

    override fun isApplicable(element: PlatformElement): Boolean {
        return element is DeclarationWithNetwork
    }

    override fun create(element: PlatformElement, project: Project): EditorProjectionController {
        return RichNetworkProjectionController(element.node, project)
    }
}