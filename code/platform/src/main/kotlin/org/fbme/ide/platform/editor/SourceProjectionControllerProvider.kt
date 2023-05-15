package org.fbme.ide.platform.editor

import jetbrains.mps.project.Project
import org.fbme.ide.iec61499.repository.PlatformElement
import org.fbme.lib.iec61499.declarations.DeviceTypeDeclaration
import org.fbme.lib.iec61499.declarations.FBInterfaceDeclaration
import org.fbme.lib.iec61499.declarations.ResourceTypeDeclaration
import org.fbme.lib.iec61499.declarations.SystemDeclaration

class SourceProjectionControllerProvider : EditorProjectionControllerProvider("Source") {

    override fun isApplicable(element: PlatformElement): Boolean {
        return element is SystemDeclaration || element is FBInterfaceDeclaration || element is DeviceTypeDeclaration || element is ResourceTypeDeclaration
    }

    override fun create(element: PlatformElement, project: Project): EditorProjectionController {
        return SimpleEditorProjectionController(element.node, "Source", project, arrayOf(), element is DeviceTypeDeclaration || element is ResourceTypeDeclaration, 0)
    }
}