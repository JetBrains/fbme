package org.fbme.ide.platform.editor

import com.intellij.openapi.actionSystem.AnAction

sealed class ProjectionChooser(val text: String) {

    class Simple(text: String, val action: AnAction) : ProjectionChooser(text)

    class Composite(text: String, val chooseActions: List<AnAction>, val createActions: List<AnAction>) : ProjectionChooser(text)
}