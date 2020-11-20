package org.fbme.scenes.controllers.scene;

import java.util.List;

public interface SceneCompletionProvider {

    List<SceneCompletionAction> getActions();
}
