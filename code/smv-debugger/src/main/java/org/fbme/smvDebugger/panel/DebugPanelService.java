package org.fbme.smvDebugger.panel;

import jetbrains.mps.project.MPSProject;
import javax.swing.JPanel;
import org.fbme.lib.iec61499.declarations.CompositeFBTypeDeclaration;
import org.fbme.smvDebugger.model.Counterexample;
import org.fbme.smvDebugger.visualization.BacktraceService;
import org.fbme.smvDebugger.visualization.SystemHighlighter;
import org.fbme.smvDebugger.panel.mvc.DebugPanelModel;
import org.fbme.smvDebugger.panel.items.DebugPanel;
import java.util.List;
import org.fbme.smvDebugger.model.SystemItemValue;

public class DebugPanelService {
  private final MPSProject project;

  public DebugPanelService(final MPSProject project) {
    this.project = project;
  }

  public JPanel run(final CompositeFBTypeDeclaration compositeFb, final Counterexample counterexample) {
    final BacktraceService backtraceService = new BacktraceService(project, compositeFb);
    final SystemHighlighter systemHighlighter = new SystemHighlighter(project, compositeFb);
    final DebugPanelModel model = new DebugPanelModel(counterexample);

    final DebugPanel debugPanel = new DebugPanel(counterexample, systemHighlighter, backtraceService);
    debugPanel.setPanelModel(model);
    debugPanel.initView();
    debugPanel.initController();
    model.getStepIndexModel().setStepIndex(0);
    model.getGlobalTimeModel().setTime(counterexample.timeOf(0));

    final List<SystemItemValue> itemValues = counterexample.getItemValues(0);
    systemHighlighter.highlight(itemValues);

    return debugPanel;
  }
}
