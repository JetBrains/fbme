package org.fbme.formalfb.execution;

import com.intellij.openapi.application.ReadAction;
import com.intellij.openapi.editor.Editor;
import com.intellij.openapi.project.Project;
import jetbrains.mps.project.MPSProject;
import org.fbme.lib.iec61499.declarations.CompositeFBTypeDeclaration;
import org.fbme.lib.iec61499.declarations.FBTypeDeclaration;
import org.fbme.lib.iec61499.fbnetwork.FunctionBlockDeclaration;

import javax.swing.*;
import java.nio.file.Path;

public class FormalFB {
    private Project ideaProject;

    public FormalFB(final MPSProject project) {
        ideaProject = project.getProject();
    }

    public JComponent run(CompositeFBTypeDeclaration compositeFb, Path fbPath) {
        JOptionPane.showMessageDialog(null, "Success");
        JPanel panel = new JPanel();
        panel.add(new JLabel("FormalFB Panel"));


        panel.add(new JTextArea(generate(compositeFb)));
        return panel;
    }

    private String generate(CompositeFBTypeDeclaration compositeFB) {
        StringBuilder result = new StringBuilder();
        ReadAction.run(() -> {
            for (FunctionBlockDeclaration fb : compositeFB.getNetwork().getFunctionBlocks()) {
                FBTypeDeclaration target = fb.getTypeReference().getTarget();
                if (target != null) {
                    result.append(target.getName()).append("\n");
                }
            }
        });
        return result.toString();
    }

}
