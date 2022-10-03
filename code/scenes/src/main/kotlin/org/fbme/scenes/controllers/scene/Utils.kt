package org.fbme.scenes.controllers.scene

import jetbrains.mps.openapi.editor.cells.EditorCell

val EditorCell.scene
    get(): SceneEditor? {
        var current: EditorCell? = this
        while (current != null) {
            if (current is SceneEditor) return current
            current = current.parent
        }
        return null
    }
