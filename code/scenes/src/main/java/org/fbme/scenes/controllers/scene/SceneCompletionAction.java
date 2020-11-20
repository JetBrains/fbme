package org.fbme.scenes.controllers.scene;

public interface SceneCompletionAction {

    String getMatchingText(String pattern);

    String getDescriptionText();

    void invoke(String pattern, int x, int y);
}
