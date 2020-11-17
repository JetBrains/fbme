package org.fbme.smvDebugger.panel.mvc;

import javax.swing.event.SwingPropertyChangeSupport;
import java.beans.PropertyChangeListener;

public class GlobalTimeModel {
  public static final String GLOBAL_TIME = "globalTime";

  private final SwingPropertyChangeSupport propertyChangeSupport = new SwingPropertyChangeSupport(this);
  private String time;

  public String getTime() {
    return time;
  }

  public void setTime(final String time) {
    final String oldTime = this.time;
    this.time = time;
    propertyChangeSupport.firePropertyChange(GLOBAL_TIME, oldTime, this.time);
  }

  public void addPropertyChangeListener(final PropertyChangeListener listener) {
    propertyChangeSupport.addPropertyChangeListener(listener);
  }

  public void addPropertyChangeListener(final String propertyName, final PropertyChangeListener listener) {
    propertyChangeSupport.addPropertyChangeListener(propertyName, listener);
  }
}
