package org.fbme.scenes.controllers;

import java.awt.*;

public interface LayoutSetting {
    Rectangle getBounds();

    boolean canStartMoveAt(int x, int y);

    void moveTo(int x, int y);
}
