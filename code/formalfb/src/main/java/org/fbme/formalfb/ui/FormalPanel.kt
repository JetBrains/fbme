package org.fbme.formalfb.ui

import com.intellij.ui.components.JBPanel
import org.fbme.formalfb.execution.FormalFB
import org.jdesktop.swingx.HorizontalLayout
import javax.swing.JButton
import javax.swing.JLabel
import javax.swing.JOptionPane
import javax.swing.JTextArea

class FormalPanel(val formalFB: FormalFB) : JBPanel<FormalPanel>() {


    init {
        setLayout(HorizontalLayout())
        add(JLabel("FormalFB Panel"))

        val button = JButton("Generate SPIN model")
        val pathLabel = JLabel("")

        button.addActionListener {
            val result = formalFB.generate()
            JOptionPane.showMessageDialog(null, "Saved to $result")
            pathLabel.text = "Saved to $result"
        }

//        val generate = formalFB.generate(compositeFb)
//        JTextArea(generate)

        add(button)
        add(pathLabel)

    }
}