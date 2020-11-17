package org.fbme.smvDebugger.panel.items;

import javax.swing.plaf.basic.BasicSpinnerUI;
import javax.swing.plaf.ComponentUI;
import javax.swing.JComponent;
import java.awt.Component;
import javax.swing.SwingConstants;
import java.awt.BorderLayout;
import javax.swing.JButton;
import javax.swing.plaf.basic.BasicArrowButton;
import javax.swing.border.Border;
import javax.swing.UIManager;
import javax.swing.plaf.UIResource;
import javax.swing.border.CompoundBorder;

public class HorizontalSpinnerUI extends BasicSpinnerUI {
  public static final String NEXT_BUTTON_NAME = "Spinner.nextButton";
  public static final String PREVIOUS_BUTTON_NAME = "Spinner.previousButton";
  private static final String ARROW_BUTTON_BORDER = "Spinner.arrowButtonBorder";

  public static ComponentUI createUI(final JComponent component) {
    return new HorizontalSpinnerUI();
  }

  @Override
  protected Component createNextButton() {
    final Component component = createArrowButton(SwingConstants.EAST);
    component.setName(NEXT_BUTTON_NAME);
    installNextButtonListeners(component);
    return component;
  }

  @Override
  protected Component createPreviousButton() {
    final Component component = createArrowButton(SwingConstants.WEST);
    component.setName(PREVIOUS_BUTTON_NAME);
    installPreviousButtonListeners(component);
    return component;
  }

  @Override
  public void installUI(final JComponent component) {
    super.installUI(component);
    component.removeAll();
    component.setLayout(new BorderLayout() {
      @Override
      public void addLayoutComponent(final Component component, Object constraints) {
        if (constraints.equals("Editor")) {
          constraints = CENTER;
        }
        super.addLayoutComponent(component, constraints);
      }
    });
    component.add(createNextButton(), BorderLayout.EAST);
    component.add(createPreviousButton(), BorderLayout.WEST);
    component.add(createEditor(), BorderLayout.CENTER);
  }

  private JButton createArrowButton(final int direction) {
    final JButton button = new BasicArrowButton(direction);
    final Border border = UIManager.getBorder(ARROW_BUTTON_BORDER);
    if (border instanceof UIResource) {
      button.setBorder(new CompoundBorder(border, null));
    } else {
      button.setBorder(border);
    }
    button.setInheritsPopupMenu(true);
    return button;
  }
}
