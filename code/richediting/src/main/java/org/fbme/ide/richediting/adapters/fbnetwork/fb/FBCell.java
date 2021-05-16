package org.fbme.ide.richediting.adapters.fbnetwork.fb;

import jetbrains.mps.nodeEditor.cells.EditorCell_Collection;

import java.awt.*;

public interface FBCell {

    int getWidth();

    int getHeight();

    void paintTrace(Graphics2D g, int x, int y);

    void relayout();

    int getBottomPortsCount();

    int getInputBottomPortsCount();

    int getOutputBottomPortsCount();

    int getInputDataPortsCount();

    int getOutputDataPortsCount();

    int getSocketPortsCount();

    int getPlugPortsCount();

    int getEventPortsCount();

    int getInputEventPortsCount();

    int getOutputEventPortsCount();

    Point getInputEventPortPosition(int eventNumber);

    Point getOutputEventPortPosition(int eventNumber);

    Point getInputDataPortPosition(int dataNumber);

    Point getOutputDataPortPosition(int dataNumber);

    Point getSocketPortPosition(int dataNumber);

    Point getPlugPortPosition(int dataNumber);

    Rectangle getInputEventPortBounds(int eventNumber);

    Rectangle getOutputEventPortBounds(int eventNumber);

    Rectangle getInputDataPortBounds(int dataNumber);

    Rectangle getOutputDataPortBounds(int dataNumber);

    Rectangle getSocketPortBounds(int socketNumber);

    Rectangle getPlugPortBounds(int plugNumber);

    EditorCell_Collection getRootCell();

    boolean canStartMoveAt(int x, int y);

    Rectangle getBounds();
}
