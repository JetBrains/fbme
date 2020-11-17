package org.fbme.smvDebugger.execution;

import jetbrains.mps.project.MPSProject;
import org.fbme.smvDebugger.integration.ServicePathProvider;
import org.fbme.smvDebugger.integration.SmvService;
import org.fbme.smvDebugger.panel.DebugPanelService;
import javax.swing.JComponent;
import java.nio.file.Path;
import org.fbme.lib.iec61499.declarations.CompositeFBTypeDeclaration;
import java.util.Optional;
import org.fbme.smvDebugger.model.Counterexample;
import javax.swing.JOptionPane;

public class SmvDebugger {
  private static final String FB_FILE_EXTENSION = ".xml";

  private final SmvService smvService;
  private final DebugPanelService debugPanelService;

  public SmvDebugger(final MPSProject project) {
    smvService = new SmvService(ServicePathProvider.create(project));

    debugPanelService = new DebugPanelService(project);
  }

  public JComponent run(final Path fbPath, final CompositeFBTypeDeclaration compositeFb) {
    try {
      final String specification = getSpecification();
      final Optional<Counterexample> counterexample = smvService.verify(fbPath, specification);
      if (counterexample.isEmpty()) {
        notifySuccess();
        return null;
      }
      return debugPanelService.run(compositeFb, counterexample.get());
    } catch (final Exception e) {
      JOptionPane.showMessageDialog(null, e.getMessage());
      return null;
    }
  }

  private static String getSpecification() {
    return JOptionPane.showInputDialog(null, "Enter LTL/CTL specification");
  }

  private static void notifySuccess() {
    JOptionPane.showMessageDialog(null, "Success");
  }
}
