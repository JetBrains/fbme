package org.fbme.ide.richediting.adapters.fbnetwork;

import jetbrains.mps.nodeEditor.cells.EditorCell_Collection;

import java.awt.*;

public interface PortCell {
    Point getPosition();

    int getWidth();

    int getHeight();

    void paintTrace(Graphics2D g, int x, int y);

    void relayout();

    Point getPortCoordinate();

    Point getPortPosition();

    Rectangle getPortBounds();

    Rectangle getDNDBounds();

    EditorCell_Collection getRootCell();
}
