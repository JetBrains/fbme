package org.fbme.smvDebugger.panel.items;

import com.intellij.ui.components.JBPanel;
import org.fbme.smvDebugger.model.Counterexample;
import org.fbme.smvDebugger.panel.mvc.DebugPanelMVCItem;
import org.fbme.smvDebugger.panel.mvc.DebugPanelModel;
import org.fbme.smvDebugger.visualization.BacktraceService;
import org.fbme.smvDebugger.visualization.SystemHighlighter;
import org.jdesktop.swingx.HorizontalLayout;

public class DebugPanel extends JBPanel implements DebugPanelMVCItem {
    private final ControlPanel controlPanel;
    private final CounterexampleTable counterexampleTable;

    public DebugPanel(final Counterexample counterexample, final SystemHighlighter systemHighlighter, final BacktraceService backtraceService) {
        controlPanel = new ControlPanel(counterexample, systemHighlighter);
        counterexampleTable = new CounterexampleTable(counterexample, systemHighlighter, backtraceService);
    }

    @Override
    public void setPanelModel(final DebugPanelModel model) {
        controlPanel.setPanelModel(model);
        counterexampleTable.setPanelModel(model);
    }

    @Override
    public void initView() {
        controlPanel.initView();
        counterexampleTable.initView();

        setLayout(new HorizontalLayout());
        add(controlPanel);
        add(counterexampleTable);
    }

    @Override
    public void initController() {
        controlPanel.initController();
        counterexampleTable.initController();
    }
}
