package org.fbme.scenes.controllers;

public class FocusHandle {

    private final Runnable onFocusLost;

    public FocusHandle(Runnable onFocusLost) {
        this.onFocusLost = onFocusLost;
    }

    public void onFocusLost() {
        this.onFocusLost.run();
    }
}
