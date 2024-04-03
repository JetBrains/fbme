package org.fbme.ide.richediting.editor.providers

import jetbrains.mps.project.Project
import org.fbme.ide.iec61499.repository.PlatformElement
import org.fbme.ide.platform.editor.EditorProjectionController
import org.fbme.ide.platform.editor.EditorProjectionControllerProvider
import org.fbme.ide.richediting.editor.RichAdapterNetworkProjectionController
import org.fbme.lib.iec61499.declarations.extention.ExtendedAdapterTypeDeclaration

class AdapterRightNetworkControllerProvider: EditorProjectionControllerProvider("Left Network") {
    override fun isApplicable(element: PlatformElement): Boolean {
        return (element as? ExtendedAdapterTypeDeclaration)?.rightNetwork != null
    }

    override fun create(element: PlatformElement, project: Project): EditorProjectionController {
        return RichAdapterNetworkProjectionController(
            element.node,
            project,
            left = false,
            id = "Right Network",
        )
    }
}