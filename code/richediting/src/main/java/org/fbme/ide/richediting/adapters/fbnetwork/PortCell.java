package org.fbme.ide.richediting.adapters.fbnetwork;

import jetbrains.mps.nodeEditor.cells.EditorCell_Collection;

import java.awt.*;

public interface PortCell {
    int getWidth();

    int getHeight();

    void paintTrace(Graphics2D g, int x, int y);

    void relayout();

    Point getPortPosition();

    Rectangle getPortBounds();

    EditorCell_Collection getRootCell();
}
