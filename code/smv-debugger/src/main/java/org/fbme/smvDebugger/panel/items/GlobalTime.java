package org.fbme.smvDebugger.panel.items;

import javax.swing.JLabel;
import org.fbme.smvDebugger.panel.mvc.DebugPanelMVCItem;
import org.fbme.smvDebugger.panel.mvc.DebugPanelModel;
import org.fbme.smvDebugger.panel.mvc.GlobalTimeModel;
import java.beans.PropertyChangeListener;
import java.beans.PropertyChangeEvent;

public class GlobalTime extends JLabel implements DebugPanelMVCItem {
  private static final String LEFT_PADDING = "     ";
  private DebugPanelModel model;

  @Override
  public void setPanelModel(final DebugPanelModel model) {
    this.model = model;
  }

  @Override
  public void initView() {
  }

  @Override
  public void initController() {
    model.getGlobalTimeModel().addPropertyChangeListener(GlobalTimeModel.GLOBAL_TIME, new PropertyChangeListener() {
      public void propertyChange(final PropertyChangeEvent event) {
        final String time = (String) event.getNewValue();
        setText(LEFT_PADDING + time);
      }
    });
  }
}
