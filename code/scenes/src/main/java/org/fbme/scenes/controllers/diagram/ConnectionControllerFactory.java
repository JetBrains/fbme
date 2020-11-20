package org.fbme.scenes.controllers.diagram;

import jetbrains.mps.openapi.editor.EditorContext;

public interface ConnectionControllerFactory<ViewT, CursorT, PathT> {

    ConnectionController<CursorT, PathT> create(EditorContext context, ViewT view);
}
