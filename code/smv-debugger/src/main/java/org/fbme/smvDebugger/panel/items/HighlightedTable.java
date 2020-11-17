package org.fbme.smvDebugger.panel.items;

import javax.swing.JTable;
import java.awt.Color;
import java.awt.Component;
import javax.swing.table.TableCellRenderer;
import java.util.Objects;

public class HighlightedTable extends JTable {
  private Color defaultCellColor = Color.WHITE;
  private Color highlightCellColor = Color.GREEN;
  private Color currentColumnColor = Color.LIGHT_GRAY;

  private int currentColumnIndex = 0;

  public Color getDefaultCellColor() {
    return defaultCellColor;
  }

  public void setDefaultCellColor(final Color defaultCellColor) {
    this.defaultCellColor = defaultCellColor;
  }

  public Color getHighlightCellColor() {
    return highlightCellColor;
  }

  public void setHighlightCellColor(final Color hightlightCellColor) {
    this.highlightCellColor = hightlightCellColor;
  }

  public Color getCurrentColumnColor() {
    return currentColumnColor;
  }

  public void setCurrentColumnColor(final Color currentColumnColor) {
    this.currentColumnColor = currentColumnColor;
  }


  public void setCurrentColumnIndex(final int currentColumnIndex) {
    this.currentColumnIndex = currentColumnIndex;
  }

  @Override
  public Component prepareRenderer(final TableCellRenderer renderer, final int rowIndex, final int columnIndex) {
    final Component component = super.prepareRenderer(renderer, rowIndex, columnIndex);
    if (!Objects.equals(component.getBackground(), getSelectionBackground())) {
      Color color = defaultCellColor;

      if (columnIndex == currentColumnIndex) {
        color = currentColumnColor;
      }
      if (columnIndex > 1) {
        final String curValue = (String) getValueAt(rowIndex, columnIndex);
        final String prevValue = (String) getValueAt(rowIndex, columnIndex - 1);

        if (!Objects.equals(curValue, prevValue)) {
          color = highlightCellColor;
        }
      }

      component.setBackground(color);
    }
    return component;
  }
}
