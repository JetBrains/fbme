package org.fbme.scenes.controllers.scene;

import java.awt.event.MouseEvent;

public class ClickEvent {

    public final MouseEvent awt;

    private final Runnable onConsumed;
    private boolean consumed;

    public ClickEvent(MouseEvent awt, Runnable onConsumed) {
        this.awt = awt;
        this.onConsumed = onConsumed;
    }

    public boolean isConsumed() {
        return consumed;
    }

    public void consume() {
        if (!consumed) {
            consumed = true;
            onConsumed.run();
        }
    }

}
