package org.fbme.ide.richediting.adapters.fbnetwork;

import jetbrains.mps.nodeEditor.cellLayout.AbstractCellLayout;
import jetbrains.mps.nodeEditor.cells.EditorCell_Basic;
import jetbrains.mps.nodeEditor.cells.EditorCell_Collection;
import jetbrains.mps.nodeEditor.cells.ParentSettings;
import jetbrains.mps.openapi.editor.EditorContext;
import jetbrains.mps.openapi.editor.TextBuilder;
import jetbrains.mps.openapi.editor.cells.EditorCell;
import org.jetbrains.mps.openapi.model.SNode;

import java.awt.*;

public class FakeCells {

    public static EditorCell_Basic create(EditorContext context, SNode node) {
        return new EditorCell_Basic(context, node) {
            {
                setX(15);
                setY(15);
            }

            @Override
            protected void paintContent(Graphics p0, ParentSettings p1) {
            }

            @Override
            public int getWidth() {
                return -1;
            }

            @Override
            public int getHeight() {
                return -1;
            }
        };
    }

    public static EditorCell_Collection createCollection(EditorContext context, SNode node) {
        return new EditorCell_Collection(context, node, new AbstractCellLayout() {
            @Override
            public void doLayout(jetbrains.mps.openapi.editor.cells.EditorCell_Collection collection) {
                for (EditorCell child : collection) {
                    child.relayout();
                }
            }

            @Override
            public TextBuilder doLayoutText(Iterable<EditorCell> iterable) {
                return null;
            }
        }) {
            {
                setX(15);
                setY(15);
            }

            @Override
            protected void paintContent(Graphics p0, ParentSettings p1) {
            }

            @Override
            public int getWidth() {
                return -1;
            }

            @Override
            public int getHeight() {
                return -1;
            }
        };
    }
}
