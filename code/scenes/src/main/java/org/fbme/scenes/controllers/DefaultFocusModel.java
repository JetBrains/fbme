package org.fbme.scenes.controllers;

import java.util.HashSet;

public class DefaultFocusModel implements SceneFocusModel {

    private final HashSet<FocusHandle> myHandles = new HashSet<>();

    @Override
    public void addFocus(FocusHandle focus) {
        myHandles.add(focus);
    }

    @Override
    public void clearFocus() {
        for (FocusHandle handle : myHandles) {
            handle.onFocusLost();
        }
        myHandles.clear();
    }
}
