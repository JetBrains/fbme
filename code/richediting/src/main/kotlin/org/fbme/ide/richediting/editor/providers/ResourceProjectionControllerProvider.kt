package org.fbme.ide.richediting.editor.providers

import jetbrains.mps.project.Project
import org.fbme.ide.iec61499.repository.PlatformElement
import org.fbme.ide.platform.editor.EditorProjectionController
import org.fbme.ide.platform.editor.EditorProjectionControllerProvider
import org.fbme.ide.richediting.editor.RichResourceProjectionController
import org.fbme.lib.iec61499.declarations.SystemDeclaration

class ResourceProjectionControllerProvider: EditorProjectionControllerProvider("Resource") {

    override fun isApplicable(element: PlatformElement): Boolean {
        return element is SystemDeclaration
    }

    override fun create(element: PlatformElement, project: Project): EditorProjectionController {
        return RichResourceProjectionController(element.node, project)
    }
}