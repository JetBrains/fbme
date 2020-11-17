package org.fbme.smvDebugger.panel.mvc;

import javax.swing.event.SwingPropertyChangeSupport;
import java.beans.PropertyChangeListener;

public class StepIndexModel {
  public static final String STEP_INDEX = "stepIndex";

  private final SwingPropertyChangeSupport propertyChangeSupport = new SwingPropertyChangeSupport(this);
  private int currentStepIndex;
  private int previousStepIndex;

  public int getCurrentStepIndex() {
    return currentStepIndex;
  }

  public int getPreviousStepIndex() {
    return previousStepIndex;
  }

  public void setStepIndex(final int stepIndex) {
    previousStepIndex = currentStepIndex;
    currentStepIndex = stepIndex;
    propertyChangeSupport.firePropertyChange(STEP_INDEX, previousStepIndex, currentStepIndex);
  }

  public void addPropertyChangeListener(final PropertyChangeListener listener) {
    propertyChangeSupport.addPropertyChangeListener(listener);
  }

  public void addPropertyChangeListener(final String propertyName, final PropertyChangeListener listener) {
    propertyChangeSupport.addPropertyChangeListener(propertyName, listener);
  }
}
