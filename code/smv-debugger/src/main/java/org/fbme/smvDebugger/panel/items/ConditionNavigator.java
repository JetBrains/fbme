package org.fbme.smvDebugger.panel.items;

import org.fbme.smvDebugger.model.Counterexample;
import org.fbme.smvDebugger.panel.condition.ConditionParseException;
import org.fbme.smvDebugger.panel.condition.ConditionParser;
import org.fbme.smvDebugger.panel.condition.Expression;
import org.fbme.smvDebugger.panel.mvc.DebugPanelMVCItem;
import org.fbme.smvDebugger.panel.mvc.DebugPanelModel;

import javax.swing.*;
import java.awt.*;
import java.util.Map;
import java.util.Objects;
import java.util.function.Function;
import java.util.function.Predicate;

public class ConditionNavigator extends HorizontalSpinner implements DebugPanelMVCItem {
    private static final int SPINNER_WIDTH = 300;
    private static final int SPINNER_HEIGHT = 25;

    private final Counterexample counterexample;
    private final ConditionParser conditionParser;

    private DebugPanelModel model;

    public ConditionNavigator(final Counterexample counterexample) {
        this.counterexample = counterexample;
        this.conditionParser = new ConditionParser();
    }

    @Override
    public void setPanelModel(final DebugPanelModel model) {
        this.model = model;
        setModel(model.getConditionModel());
    }

    @Override
    public void initView() {
        setPreferredSize(new Dimension(SPINNER_WIDTH, SPINNER_HEIGHT));
        getConditionField().setEditable(true);
    }

    @Override
    public void initController() {
        for (final Component component : getComponents()) {
            final String componentName = component.getName();
            if (Objects.equals(componentName, HorizontalSpinnerUI.NEXT_BUTTON_NAME)) {
                final JButton nextButton = (JButton) component;
                nextButton.addActionListener(event -> processAction(stepIndex -> stepIndex < counterexample.length(), stepIndex -> stepIndex + 1));
            } else if (Objects.equals(componentName, HorizontalSpinnerUI.PREVIOUS_BUTTON_NAME)) {
                final JButton previousButton = (JButton) component;
                previousButton.addActionListener(event -> processAction(stepIndex -> stepIndex >= 0, stepIndex -> stepIndex - 1));
            }
        }
    }

    private void processAction(final Predicate<Integer> stopPredicate, final Function<Integer, Integer> stepFunction) {
        final String condition = getConditionField().getText();
        final Expression expression;
        try {
            expression = conditionParser.parse(condition);
        } catch (final ConditionParseException e) {
            JOptionPane.showMessageDialog(null, e.getMessage());
            return;
        }
        final int currentStepIndex = model.getStepIndexModel().getCurrentStepIndex();
        for (int stepIndex = stepFunction.apply(currentStepIndex); stopPredicate.test(stepIndex); stepIndex = stepFunction.apply(stepIndex)) {
            final Map<String, String> itemSimpleNameToValueMap = counterexample.getItemSimpleNameToValueMap(stepIndex);
            if (expression.evaluate(itemSimpleNameToValueMap)) {
                model.getStepIndexModel().setStepIndex(stepIndex);
                return;
            }
        }
    }

    private JFormattedTextField getConditionField() {
        for (final Component component : getComponents()) {
            if (component instanceof JSpinner.DefaultEditor) {
                final JSpinner.DefaultEditor editor = (JSpinner.DefaultEditor) component;
                return editor.getTextField();
            }
        }
        return null;
    }
}
