package org.fbme.scenes.controllers.scene;

import org.fbme.scenes.controllers.DragEventHandler;

import java.awt.event.MouseEvent;
import java.util.function.Consumer;

public class DragEvent {

    public final MouseEvent awt;

    private final Consumer<DragEventHandler> onConsumed;
    private boolean consumed;

    public DragEvent(MouseEvent awt, Consumer<DragEventHandler> onConsumed) {
        this.awt = awt;
        this.onConsumed = onConsumed;
    }

    public boolean isConsumed() {
        return consumed;
    }

    public void consume(DragEventHandler handler) {
        if (!(consumed)) {
            consumed = true;
            onConsumed.accept(handler);
        }
    }
}
