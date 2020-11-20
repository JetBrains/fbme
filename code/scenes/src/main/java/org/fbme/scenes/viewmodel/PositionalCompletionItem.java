package org.fbme.scenes.viewmodel;

public interface PositionalCompletionItem {

    String getMatchingText(String pattern);

    String getDescriptionText();

    void invoke(String pattern, int x, int y);
}
