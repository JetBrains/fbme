package org.fbme.ide.platform.editor

import com.intellij.openapi.actionSystem.DataProvider
import org.jdom.Element
import javax.swing.JComponent

interface EditorProjection : DataProvider {
    val name: String

    val initialEditorHints: Array<String>

    val controller: EditorProjectionController

    val headerInfo: ProjectionHeaderInfo
    fun saveState(element: Element)
}
