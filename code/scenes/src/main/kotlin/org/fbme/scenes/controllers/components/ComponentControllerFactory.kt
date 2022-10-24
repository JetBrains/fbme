package org.fbme.scenes.controllers.components

import jetbrains.mps.openapi.editor.EditorContext

interface ComponentControllerFactory<ViewT, FormT> {
    fun create(context: EditorContext, view: ViewT): ComponentController<FormT>?
}
