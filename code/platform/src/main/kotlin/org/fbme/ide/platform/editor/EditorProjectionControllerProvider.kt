package org.fbme.ide.platform.editor

import com.intellij.openapi.extensions.ExtensionPointName
import jetbrains.mps.project.Project
import org.fbme.ide.iec61499.repository.PlatformElement
import org.fbme.lib.common.Element

abstract class EditorProjectionControllerProvider(val id: String) {

    open fun isApplicable(element: PlatformElement): Boolean = true

    abstract fun create(element: PlatformElement, project: Project): EditorProjectionController

    companion object {
        val EP_NAME = ExtensionPointName.create<EditorProjectionControllerProvider>("fbme.platform.ProjectionController")
    }
}