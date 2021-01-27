package org.fbme.smvDebugger.execution;

import com.intellij.openapi.fileChooser.FileChooser;
import com.intellij.openapi.fileChooser.FileChooserDescriptor;
import com.intellij.openapi.project.Project;
import com.intellij.openapi.vfs.VirtualFile;
import jetbrains.mps.project.MPSProject;
import org.fbme.lib.iec61499.declarations.CompositeFBTypeDeclaration;
import org.fbme.smvDebugger.integration.ServicePathProvider;
import org.fbme.smvDebugger.integration.SmvService;
import org.fbme.smvDebugger.model.Counterexample;
import org.fbme.smvDebugger.panel.DebugPanelService;
import org.jetbrains.annotations.Nullable;

import javax.swing.*;
import java.nio.file.Path;
import java.util.Optional;

public class SmvDebugger {
  private final SmvService smvService;
  private final DebugPanelService debugPanelService;
  private final Project ideaProject;

  public SmvDebugger(final MPSProject project) {
    smvService = new SmvService(ServicePathProvider.create(project));
    debugPanelService = new DebugPanelService(project);
    ideaProject = project.getProject();
  }

  public JComponent run(
          Path fbPath,
          CompositeFBTypeDeclaration compositeFb,
          boolean exported
  ) {
    try {
      if (exported) {
        return showExportedConterexample(compositeFb);
      } else {
        return verify(fbPath, compositeFb);
      }
    } catch (final Exception e) {
      JOptionPane.showMessageDialog(null, e.getMessage());
      return null;
    }
  }

  @Nullable
  private JComponent showExportedConterexample(CompositeFBTypeDeclaration compositeFb) {
    FileChooserDescriptor descriptor = new FileChooserDescriptor(true, false, false, false, false, false);
    VirtualFile file = FileChooser.chooseFile(descriptor, ideaProject, null);
    if (file == null) {
      return null;
    }
    Counterexample counterexample = smvService.parseCounterexample(file.toNioPath());
    return debugPanelService.run(compositeFb, counterexample);
  }

  @Nullable
  private JPanel verify(Path fbPath, CompositeFBTypeDeclaration compositeFb) {
    final String specification = getSpecification();
    final Optional<Counterexample> counterexample = smvService.verify(fbPath, specification);
    if (counterexample.isEmpty()) {
      notifySuccess();
      return null;
    }
    return debugPanelService.run(compositeFb, counterexample.get());
  }

  private static String getSpecification() {
    return JOptionPane.showInputDialog(null, "Enter LTL/CTL specification");
  }

  private static void notifySuccess() {
    JOptionPane.showMessageDialog(null, "Success");
  }
}
