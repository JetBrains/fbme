package org.fbme.scenes.controllers.components;

import jetbrains.mps.openapi.editor.EditorContext;

public interface ComponentControllerFactory<ViewT, FormT> {

    ComponentController<FormT> create(EditorContext context, ViewT view);
}
