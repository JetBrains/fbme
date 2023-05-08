package org.fbme.ide.platform.editor

import com.intellij.openapi.actionSystem.CommonDataKeys
import com.intellij.openapi.actionSystem.DataKey

object HeaderedEditorDataKeys : CommonDataKeys() {
    val EDITOR = DataKey.create<HeaderedNodeEditor?>("headered-editor")
}
