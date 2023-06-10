package org.fbme.ide.richediting.editor.providers

import jetbrains.mps.project.Project
import org.fbme.ide.iec61499.repository.PlatformElement
import org.fbme.ide.platform.editor.EditorProjectionController
import org.fbme.ide.platform.editor.EditorProjectionControllerProvider
import org.fbme.ide.platform.editor.SimpleEditorProjectionController
import org.fbme.lib.iec61499.declarations.FBInterfaceDeclaration

class InterfaceProjectionControllerProvider: EditorProjectionControllerProvider("Interface") {

    override fun isApplicable(element: PlatformElement): Boolean {
        return element is FBInterfaceDeclaration
    }

    override fun create(element: PlatformElement, project: Project): EditorProjectionController {
        return SimpleEditorProjectionController(element.node, "Interface", project, arrayOf("org.fbme.ide.richediting.lang.editor.Rich Editing Hint.interface"), true, 10)
    }
}