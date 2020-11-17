package org.fbme.smvDebugger.panel.items;

import javax.swing.JSpinner;

public class HorizontalSpinner extends JSpinner {
  public HorizontalSpinner() {
    super();
    setUI(new HorizontalSpinnerUI());
  }
}
