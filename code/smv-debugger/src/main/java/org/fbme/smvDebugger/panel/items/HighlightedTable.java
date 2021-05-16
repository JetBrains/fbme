package org.fbme.smvDebugger.panel.items;

import com.intellij.ui.JBColor;
import com.intellij.ui.table.JBTable;
import org.jetbrains.annotations.NotNull;

import javax.swing.table.TableCellRenderer;
import java.awt.*;
import java.util.Objects;

public class HighlightedTable extends JBTable {
    private static final Color DEFAULT_CELL_COLOR = JBColor.WHITE;
    private static final Color HIGHLIGHT_CELL_COLOR = JBColor.GREEN;
    private static final Color CURRENT_COLUMN_COLOR = JBColor.LIGHT_GRAY;

    private int currentColumnIndex = 0;

    public void setCurrentColumnIndex(final int currentColumnIndex) {
        this.currentColumnIndex = currentColumnIndex;
    }

    @NotNull
    @Override
    public Component prepareRenderer(@NotNull final TableCellRenderer renderer, final int rowIndex, final int columnIndex) {
        final Component component = super.prepareRenderer(renderer, rowIndex, columnIndex);
        if (!Objects.equals(component.getBackground(), getSelectionBackground())) {
            Color color = DEFAULT_CELL_COLOR;

            if (columnIndex == currentColumnIndex) {
                color = CURRENT_COLUMN_COLOR;
            }
            if (columnIndex > 1) {
                final String curValue = (String) getValueAt(rowIndex, columnIndex);
                final String prevValue = (String) getValueAt(rowIndex, columnIndex - 1);

                if (!Objects.equals(curValue, prevValue)) {
                    color = HIGHLIGHT_CELL_COLOR;
                }
            }

            component.setBackground(color);
        }
        return component;
    }
}
