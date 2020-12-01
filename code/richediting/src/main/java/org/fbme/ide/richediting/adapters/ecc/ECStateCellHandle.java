package org.fbme.ide.richediting.adapters.ecc;

import jetbrains.mps.nodeEditor.cells.EditorCell_Basic;
import jetbrains.mps.openapi.editor.style.Style;

import java.awt.*;

public interface ECStateCellHandle {

    EditorCell_Basic getCell();

    Rectangle getBounds(Point position);

    Style getStateTextStyle();
}
