package org.fbme.ide.richediting.adapters.ecc;

import jetbrains.mps.nodeEditor.cells.EditorCell_Basic;

import java.awt.*;

public interface ECTransitionConditionCellHandle {

    EditorCell_Basic getCell();

    Rectangle getBounds(Point position);

}
