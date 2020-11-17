package org.fbme.smvDebugger.panel.mvc;

import javax.swing.AbstractSpinnerModel;

public class ConditionModel extends AbstractSpinnerModel {
  private String condition = "";

  @Override
  public Object getValue() {
    return condition;
  }

  @Override
  public void setValue(final Object value) {
    condition = (String) value;
    fireStateChanged();
  }

  @Override
  public Object getNextValue() {
    return condition;
  }

  @Override
  public Object getPreviousValue() {
    return condition;
  }
}
