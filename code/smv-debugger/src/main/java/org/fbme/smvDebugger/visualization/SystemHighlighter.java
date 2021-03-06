package org.fbme.smvDebugger.visualization;

import java.awt.Color;

import com.intellij.ui.JBColor;
import jetbrains.mps.project.MPSProject;
import org.fbme.lib.iec61499.declarations.CompositeFBTypeDeclaration;
import java.util.List;
import org.fbme.smvDebugger.model.SystemItemValue;
import org.fbme.lib.iec61499.instances.NetworkInstance;
import jetbrains.mps.openapi.editor.Editor;
import org.fbme.ide.richediting.editor.NetworkInstanceNavigationSupport;
import jetbrains.mps.openapi.editor.EditorComponent;
import org.fbme.ide.richediting.inspections.InspectionManager;
import org.fbme.ide.richediting.inspections.InspectionManagerImpl;
import org.fbme.ide.richediting.inspections.NetworkInspector;
import org.fbme.lib.iec61499.fbnetwork.FBNetwork;
import org.fbme.lib.iec61499.fbnetwork.FunctionBlockDeclaration;
import org.fbme.smvDebugger.model.SystemItem;
import jetbrains.mps.baseLanguage.closures.runtime.Wrappers;
import java.util.Objects;
import org.fbme.smvDebugger.model.SystemItemType;
import org.fbme.ide.richediting.inspections.Inspection;
import java.util.Set;
import org.fbme.lib.iec61499.fbnetwork.PortPath;
import org.fbme.lib.common.Declaration;

public class SystemHighlighter {
  private static final Color HIGHLIGHT_COLOR = JBColor.GREEN.darker().darker();

  private final MPSProject project;
  private final CompositeFBTypeDeclaration compositeFb;

  public SystemHighlighter(final MPSProject project, final CompositeFBTypeDeclaration compositeFb) {
    this.project = project;
    this.compositeFb = compositeFb;
  }

  public void highlight(final List<SystemItemValue> itemValues) {
    this.project.getModelAccess().runReadAction(new Runnable() {
      public void run() {
        final NetworkInstance networkInstance = NetworkInstance.createForCompositeFBType(compositeFb);
        final Editor editor = NetworkInstanceNavigationSupport.navigate(project, networkInstance, false);
        final EditorComponent editorComponent = editor.getCurrentEditorComponent();
        final InspectionManager inspectionManager = InspectionManagerImpl.getInstance(editorComponent);
        final NetworkInspector networkInspector = inspectionManager.installInspector(networkInstance, () -> { });
        networkInspector.clear();

        final FBNetwork fbNetwork = SystemHighlighter.this.compositeFb.getNetwork();
        final List<FunctionBlockDeclaration> components = fbNetwork.getFunctionBlocks();

        for (final SystemItemValue itemValue : itemValues) {
          final SystemItem item = itemValue.getItem();
          if (item.getFbNames().length == 0) {
            continue;
          }

          FunctionBlockDeclaration component = null;
          List<FunctionBlockDeclaration> curComponents = components;

          for (final Wrappers._int i = new Wrappers._int(0); i.value < item.getFbNames().length; i.value++) {
            component = curComponents.stream()
                    .filter(it -> Objects.equals(it.getName(), item.getFbNames()[i.value]))
                    .findFirst()
                    .orElse(null);
            if (component != null && component.getTypeReference().getTarget() instanceof CompositeFBTypeDeclaration) {
              final CompositeFBTypeDeclaration compositeDeclaration = (CompositeFBTypeDeclaration) component.getTypeReference().getTarget();
              curComponents = compositeDeclaration.getNetwork().getFunctionBlocks();
            } else {
              break;
            }
          }

          if (component != null) {
            if (item.getType() == SystemItemType.ECC) {
              networkInspector.setInspectionForComponent(component, new Inspection(itemValue.getValue(), HIGHLIGHT_COLOR));
            } else {
              final Set<PortPath<? extends Declaration>> ports = component.getPorts();
              ports.stream()
                      .filter(it -> Objects.equals(it.getPortTarget().getName(), item.getItemName()))
                      .findFirst()
                      .ifPresent(port -> networkInspector.setInspectionForPort(port, new Inspection(itemValue.getValue(), HIGHLIGHT_COLOR)));
            }
          }
        }
      }
    });
  }
}
