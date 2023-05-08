package org.fbme.smvDebugger.panel.items

import java.awt.BorderLayout
import java.awt.Component
import javax.swing.JButton
import javax.swing.JComponent
import javax.swing.SwingConstants
import javax.swing.UIManager
import javax.swing.border.CompoundBorder
import javax.swing.plaf.ComponentUI
import javax.swing.plaf.UIResource
import javax.swing.plaf.basic.BasicArrowButton
import javax.swing.plaf.basic.BasicSpinnerUI

class HorizontalSpinnerUI : BasicSpinnerUI() {
    override fun createNextButton(): Component {
        val component: Component = createArrowButton(SwingConstants.EAST)
        component.name = NEXT_BUTTON_NAME
        installNextButtonListeners(component)
        return component
    }

    override fun createPreviousButton(): Component {
        val component: Component = createArrowButton(SwingConstants.WEST)
        component.name = PREVIOUS_BUTTON_NAME
        installPreviousButtonListeners(component)
        return component
    }

    override fun installUI(component: JComponent) {
        super.installUI(component)
        component.removeAll()
        component.layout = object : BorderLayout() {
            override fun addLayoutComponent(component: Component, constraints: Any) {
                var constraints = constraints
                if (constraints == "Editor") {
                    constraints = CENTER
                }
                super.addLayoutComponent(component, constraints)
            }
        }
        component.add(createNextButton(), BorderLayout.EAST)
        component.add(createPreviousButton(), BorderLayout.WEST)
        component.add(createEditor(), BorderLayout.CENTER)
    }

    private fun createArrowButton(direction: Int): JButton {
        val button: JButton = BasicArrowButton(direction)
        val border = UIManager.getBorder(ARROW_BUTTON_BORDER)
        if (border is UIResource) {
            button.border = CompoundBorder(border, null)
        } else {
            button.border = border
        }
        button.inheritsPopupMenu = true
        return button
    }

    companion object {
        const val NEXT_BUTTON_NAME = "Spinner.nextButton"
        const val PREVIOUS_BUTTON_NAME = "Spinner.previousButton"
        private const val ARROW_BUTTON_BORDER = "Spinner.arrowButtonBorder"
        fun createUI(component: JComponent?): ComponentUI {
            return HorizontalSpinnerUI()
        }
    }
}
