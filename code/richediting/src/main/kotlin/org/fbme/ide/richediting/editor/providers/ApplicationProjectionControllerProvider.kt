package org.fbme.ide.richediting.editor.providers

import jetbrains.mps.project.Project
import org.fbme.ide.iec61499.repository.PlatformElement
import org.fbme.ide.platform.editor.EditorProjectionController
import org.fbme.ide.platform.editor.EditorProjectionControllerProvider
import org.fbme.ide.richediting.editor.RichApplicationProjectionController
import org.fbme.lib.iec61499.declarations.SystemDeclaration

class ApplicationProjectionControllerProvider: EditorProjectionControllerProvider("Application") {

    override fun isApplicable(element: PlatformElement): Boolean {
        return element is SystemDeclaration
    }

    override fun create(element: PlatformElement, project: Project): EditorProjectionController {
        return RichApplicationProjectionController(element.node, project)
    }
}