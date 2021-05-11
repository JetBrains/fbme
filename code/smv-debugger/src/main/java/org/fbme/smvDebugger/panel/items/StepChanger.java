package org.fbme.smvDebugger.panel.items;

import org.fbme.smvDebugger.model.Counterexample;
import org.fbme.smvDebugger.model.SystemItemValue;
import org.fbme.smvDebugger.panel.mvc.DebugPanelMVCItem;
import org.fbme.smvDebugger.panel.mvc.DebugPanelModel;
import org.fbme.smvDebugger.panel.mvc.StepIndexModel;
import org.fbme.smvDebugger.visualization.SystemHighlighter;

import javax.swing.*;
import java.awt.*;
import java.util.List;

public class StepChanger extends HorizontalSpinner implements DebugPanelMVCItem {
    private static final int SPINNER_WIDTH = 100;
    private static final int SPINNER_HEIGHT = 25;

    private final Counterexample counterexample;
    private final SystemHighlighter systemHighlighter;

    private DebugPanelModel model;

    public StepChanger(final Counterexample counterexample, final SystemHighlighter systemHighlighter) {
        this.counterexample = counterexample;
        this.systemHighlighter = systemHighlighter;
    }

    @Override
    public void setPanelModel(final DebugPanelModel model) {
        this.model = model;
        setModel(model.getStepSpinnerModel());
    }

    @Override
    public void initView() {
        setPreferredSize(new Dimension(SPINNER_WIDTH, SPINNER_HEIGHT));
    }

    @Override
    public void initController() {
        final StepIndexModel stepIndexModel = model.getStepIndexModel();
        addChangeListener(event -> {
            final JSpinner spinner = (JSpinner) event.getSource();
            final String step = (String) spinner.getValue();
            final int stepIndex = counterexample.indexOf(step);
            stepIndexModel.setStepIndex(stepIndex);
        });
        stepIndexModel.addPropertyChangeListener(StepIndexModel.STEP_INDEX, event -> {
            final int stepIndex = (int) event.getNewValue();

            final BoundedRangeModel dataScrollModel = model.getDataScrollModel();
            final double percent = ((double) stepIndex) / counterexample.length();
            final int value = (int) (dataScrollModel.getMaximum() * percent);
            dataScrollModel.setValue(value);

            model.getGlobalTimeModel().setTime(counterexample.timeOf(stepIndex));

            final List<SystemItemValue> itemValues = counterexample.getItemValues(stepIndex);
            systemHighlighter.highlight(itemValues);

            final String step = counterexample.getSteps()[stepIndex];
            setValue(step);
        });
    }
}
