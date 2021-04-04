package org.fbme.smvDebugger.panel.items;

import com.intellij.ui.components.JBPanel;
import com.intellij.ui.components.JBScrollBar;
import com.intellij.ui.components.JBScrollPane;
import com.intellij.ui.table.JBTable;
import org.fbme.smvDebugger.model.Counterexample;
import org.fbme.smvDebugger.model.SystemItemValue;
import org.fbme.smvDebugger.panel.mvc.DebugPanelMVCItem;
import org.fbme.smvDebugger.panel.mvc.DebugPanelModel;
import org.fbme.smvDebugger.panel.mvc.StepIndexModel;
import org.fbme.smvDebugger.visualization.BacktraceService;
import org.fbme.smvDebugger.visualization.SystemHighlighter;

import javax.swing.*;
import javax.swing.table.TableColumnModel;
import java.awt.*;
import java.util.List;

public class CounterexampleTable extends JBPanel<CounterexampleTable> implements DebugPanelMVCItem {
    private static final int COLUMN_WIDTH = 80;
    private static final int FIRST_COLUMN_WIDTH = 160;
    private static final int SCROLL_PANE_WIDTH = 480;
    private static final int SCROLL_PANE_HEIGHT = 360;

    private final HighlightedTable valueTable = new HighlightedTable();
    private final JTable itemTable = new JBTable();
    private final JScrollBar horizontalScrollBar = new JBScrollBar(JScrollBar.HORIZONTAL);
    private final JScrollPane scrollPane = new JBScrollPane();

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
        valueTable.getSelectionModel().addListSelectionListener(event -> {
            final int itemIndex = valueTable.getSelectedRow();
            final int stepIndex = valueTable.getSelectedColumn();

            final SystemItemValue itemValue = counterexample.getItemValue(itemIndex, stepIndex);
            final List<String> relatedItemSimpleNames = backtraceService.getRelatedItemSimpleNames(itemValue);
            final List<SystemItemValue> relatedItems = counterexample.getItemValues(relatedItemSimpleNames, stepIndex);
            systemHighlighter.highlight(relatedItems);
        });
        model.getStepIndexModel().addPropertyChangeListener(StepIndexModel.STEP_INDEX, event -> {
            final int stepIndex = (int) event.getNewValue();
            valueTable.setCurrentColumnIndex(stepIndex);
            valueTable.repaint();
        });
    }
}
