package org.fbme.smvDebugger.panel.mvc;

import javax.swing.SpinnerModel;
import javax.swing.table.TableModel;
import javax.swing.ListSelectionModel;
import javax.swing.BoundedRangeModel;
import org.fbme.smvDebugger.model.Counterexample;
import javax.swing.SpinnerListModel;
import org.fbme.smvDebugger.commons.ArrayUtils;
import javax.swing.DefaultListSelectionModel;
import javax.swing.DefaultBoundedRangeModel;

public class DebugPanelModel {
  private static final String FIRST_COLUMN_NAME = "Components/States";

  private final StepIndexModel stepIndexModel;
  private final SpinnerModel stepSpinnerModel;
  private final GlobalTimeModel globalTimeModel;
  private final ConditionModel conditionModel;
  private final TableModel itemModel;
  private final TableModel valueModel;
  private final ListSelectionModel dataSelectionModel;
  private final BoundedRangeModel dataScrollModel;

  public DebugPanelModel(final Counterexample counterexample) {
    stepIndexModel = new StepIndexModel();

    stepSpinnerModel = new SpinnerListModel(counterexample.getSteps());
    globalTimeModel = new GlobalTimeModel();
    conditionModel = new ConditionModel();

    itemModel = new UneditableTableModel(ArrayUtils.to2dArray(counterexample.getItems()), new String[]{FIRST_COLUMN_NAME});
    valueModel = new UneditableTableModel(counterexample.getValues(), counterexample.getSteps());

    dataSelectionModel = new DefaultListSelectionModel();
    dataSelectionModel.setSelectionMode(ListSelectionModel.SINGLE_SELECTION);

    dataScrollModel = new DefaultBoundedRangeModel();
  }

  public StepIndexModel getStepIndexModel() {
    return stepIndexModel;
  }

  public SpinnerModel getStepSpinnerModel() {
    return stepSpinnerModel;
  }

  public GlobalTimeModel getGlobalTimeModel() {
    return globalTimeModel;
  }

  public ConditionModel getConditionModel() {
    return conditionModel;
  }

  public TableModel getItemModel() {
    return itemModel;
  }

  public TableModel getValueModel() {
    return valueModel;
  }

  public ListSelectionModel getDataSelectionModel() {
    return dataSelectionModel;
  }

  public BoundedRangeModel getDataScrollModel() {
    return dataScrollModel;
  }
}
