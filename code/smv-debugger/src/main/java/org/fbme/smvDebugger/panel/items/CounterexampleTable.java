package org.fbme.smvDebugger.panel.items;

import javax.swing.JPanel;

import com.intellij.ui.JBColor;
import org.fbme.smvDebugger.panel.mvc.DebugPanelMVCItem;
import java.awt.Color;
import javax.swing.JTable;
import javax.swing.JScrollBar;
import javax.swing.JScrollPane;
import org.fbme.smvDebugger.model.Counterexample;
import org.fbme.smvDebugger.visualization.SystemHighlighter;
import org.fbme.smvDebugger.visualization.BacktraceService;
import org.fbme.smvDebugger.panel.mvc.DebugPanelModel;
import javax.swing.table.TableColumnModel;
import javax.swing.ScrollPaneConstants;
import java.awt.Dimension;
import javax.swing.event.ListSelectionListener;
import javax.swing.event.ListSelectionEvent;
import org.fbme.smvDebugger.model.SystemItemValue;
import java.util.List;
import org.fbme.smvDebugger.panel.mvc.StepIndexModel;
import java.beans.PropertyChangeListener;
import java.beans.PropertyChangeEvent;

public class CounterexampleTable extends JPanel implements DebugPanelMVCItem {
  private static final Color DEFAULT_CELL_COLOR = JBColor.WHITE;
  private static final Color HIGHLIGHT_CELL_COLOR = new Color(128, 189, 128);
  private static final Color CURRENT_COLUMN_COLOR = new Color(236, 236, 236);
  private static final int COLUMN_WIDTH = 80;
  private static final int FIRST_COLUMN_WIDTH = 360;
  private static final int SCROLL_PANE_WIDTH = 780;
  private static final int SCROLL_PANE_HEIGHT = 360;
  private static final String MODEL_NAME = "model";
  private static final String SELECTION_MODEL_NAME = "selectionModel";

  private final HighlightedTable valueTable = new HighlightedTable();
  private final JTable itemTable = new JTable();
  private final JScrollBar horizontalScrollBar = new JScrollBar(JScrollBar.HORIZONTAL);
  private final JScrollPane scrollPane = new JScrollPane();

  private final Counterexample counterexample;
  private final SystemHighlighter systemHighlighter;
  private final BacktraceService backtraceService;

  private DebugPanelModel model;

  public CounterexampleTable(final Counterexample counterexample, final SystemHighlighter systemHighlighter, final BacktraceService backtraceService) {
    this.counterexample = counterexample;
    this.systemHighlighter = systemHighlighter;
    this.backtraceService = backtraceService;
  }

  @Override
  public void setPanelModel(final DebugPanelModel model) {
    this.model = model;

    valueTable.setModel(model.getValueModel());
    valueTable.setSelectionModel(model.getDataSelectionModel());

    itemTable.setModel(model.getItemModel());

    horizontalScrollBar.setModel(model.getDataScrollModel());
  }

  @Override
  public void initView() {
    valueTable.setAutoCreateColumnsFromModel(false);
    valueTable.setAutoResizeMode(JTable.AUTO_RESIZE_OFF);
    final TableColumnModel mainTableColumnModel = valueTable.getColumnModel();
    for (int i = 0; i < mainTableColumnModel.getColumnCount(); i++) {
      mainTableColumnModel.getColumn(i).setPreferredWidth(COLUMN_WIDTH);
    }
    valueTable.setCellSelectionEnabled(true);
    valueTable.setDefaultCellColor(DEFAULT_CELL_COLOR);
    valueTable.setHighlightCellColor(HIGHLIGHT_CELL_COLOR);
    valueTable.setCurrentColumnColor(CURRENT_COLUMN_COLOR);

    itemTable.setAutoCreateColumnsFromModel(false);
    itemTable.setAutoResizeMode(JTable.AUTO_RESIZE_OFF);
    itemTable.getColumnModel().getColumn(0).setPreferredWidth(FIRST_COLUMN_WIDTH);

    itemTable.setPreferredScrollableViewportSize(itemTable.getPreferredSize());
    itemTable.setCellSelectionEnabled(true);

    scrollPane.setViewportView(valueTable);
    scrollPane.setHorizontalScrollBar(horizontalScrollBar);
    scrollPane.setRowHeaderView(itemTable);
    scrollPane.setCorner(JScrollPane.UPPER_LEFT_CORNER, itemTable.getTableHeader());
    scrollPane.setHorizontalScrollBarPolicy(ScrollPaneConstants.HORIZONTAL_SCROLLBAR_ALWAYS);
    scrollPane.setVerticalScrollBarPolicy(ScrollPaneConstants.VERTICAL_SCROLLBAR_ALWAYS);
    scrollPane.setPreferredSize(new Dimension(SCROLL_PANE_WIDTH, SCROLL_PANE_HEIGHT));

    add(scrollPane);
  }

  @Override
  public void initController() {
    valueTable.getSelectionModel().addListSelectionListener(new ListSelectionListener() {
      public void valueChanged(final ListSelectionEvent event) {
        final int itemIndex = valueTable.getSelectedRow();
        final int stepIndex = valueTable.getSelectedColumn();

        final SystemItemValue itemValue = counterexample.getItemValue(itemIndex, stepIndex);
        final List<String> relatedItemSimpleNames = backtraceService.getRelatedItemSimpleNames(itemValue);
        final List<SystemItemValue> relatedItems = counterexample.getItemValues(relatedItemSimpleNames, stepIndex);
        systemHighlighter.highlight(relatedItems);
      }
    });
    model.getStepIndexModel().addPropertyChangeListener(StepIndexModel.STEP_INDEX, new PropertyChangeListener() {
      public void propertyChange(final PropertyChangeEvent event) {
        final int stepIndex = (int) event.getNewValue();
        valueTable.setCurrentColumnIndex(stepIndex);
        valueTable.repaint();
      }
    });
  }
}
