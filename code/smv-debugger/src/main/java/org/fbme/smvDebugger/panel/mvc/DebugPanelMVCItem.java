package org.fbme.smvDebugger.panel.mvc;

public interface DebugPanelMVCItem {
  void setPanelModel(DebugPanelModel model);

  void initView();

  void initController();
}
