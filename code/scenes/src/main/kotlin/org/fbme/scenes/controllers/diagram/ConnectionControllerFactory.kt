package org.fbme.scenes.controllers.diagram

import jetbrains.mps.openapi.editor.EditorContext

interface ConnectionControllerFactory<ViewT, CursorT, PathT> {
    fun create(context: EditorContext, view: ViewT): ConnectionController<CursorT, PathT>
}
