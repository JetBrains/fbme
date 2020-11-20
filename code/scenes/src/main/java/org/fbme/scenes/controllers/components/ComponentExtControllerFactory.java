package org.fbme.scenes.controllers.components;

import jetbrains.mps.openapi.editor.EditorContext;

public interface ComponentExtControllerFactory<ExtViewT, FormT> {

    ComponentExtController<FormT> create(EditorContext context, ExtViewT extView, ComponentController<FormT> compController);

}
