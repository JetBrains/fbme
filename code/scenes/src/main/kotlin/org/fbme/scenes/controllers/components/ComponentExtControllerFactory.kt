package org.fbme.scenes.controllers.components

import jetbrains.mps.openapi.editor.EditorContext

interface ComponentExtControllerFactory<ExtViewT, FormT> {
    fun create(
        context: EditorContext,
        extView: ExtViewT,
        compController: ComponentController<FormT>
    ): ComponentExtController<FormT>
}
