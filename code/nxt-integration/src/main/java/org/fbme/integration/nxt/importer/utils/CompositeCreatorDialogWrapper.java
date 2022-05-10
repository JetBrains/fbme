package org.fbme.integration.nxt.importer.utils;

import com.intellij.openapi.ui.DialogWrapper;
import org.antlr.v4.runtime.misc.Nullable;

import javax.swing.*;
import java.awt.*;

public class CompositeCreatorDialogWrapper extends DialogWrapper {
    private final JTextField definitionName;

    public CompositeCreatorDialogWrapper(String defaultName) {
        super(true);
        definitionName = new JTextField(defaultName);
        setTitle("Define new name");
        init();
    }

    @Nullable
    @Override
    protected JComponent createCenterPanel() {
        JPanel dialogPanel = new JPanel(new BorderLayout());

        JLabel label = new JLabel("Composite Definition");
        label.setPreferredSize(new Dimension(100, 50));
        dialogPanel.add(label, BorderLayout.NORTH);

        definitionName.setPreferredSize(new Dimension(400, 30));
        dialogPanel.add(definitionName, BorderLayout.CENTER);

        return dialogPanel;
    }

    public String getDefinitionName() {
        return definitionName.getText();
    }
}
