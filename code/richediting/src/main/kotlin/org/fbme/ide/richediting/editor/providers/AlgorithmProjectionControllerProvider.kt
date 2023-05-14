package org.fbme.ide.richediting.editor.providers

import jetbrains.mps.project.Project
import org.fbme.ide.iec61499.repository.PlatformElement
import org.fbme.ide.platform.editor.EditorProjectionController
import org.fbme.ide.platform.editor.EditorProjectionControllerProvider
import org.fbme.ide.richediting.editor.RichAlgorithmsProjectionController
import org.fbme.lib.iec61499.declarations.BasicFBTypeDeclaration

class AlgorithmProjectionControllerProvider: EditorProjectionControllerProvider("Algorithm") {

    override fun isApplicable(element: PlatformElement): Boolean {
        return element is BasicFBTypeDeclaration
    }

    override fun create(element: PlatformElement, project: Project): EditorProjectionController {
        return RichAlgorithmsProjectionController(element.node, project)
    }
}