package org.fbme.ide.richediting.adapters.ecc.actions;

import jetbrains.mps.openapi.editor.cells.EditorCell;
import jetbrains.mps.openapi.editor.style.Style;
import org.fbme.ide.richediting.adapters.common.actions.Action;
import org.fbme.ide.richediting.adapters.ecc.ECTransitionCursor;
import org.fbme.ide.richediting.adapters.ecc.ECTransitionPath;
import org.fbme.ide.richediting.adapters.ecc.elk.ELKLayoutProvider;
import org.fbme.ide.richediting.editor.RichEditorStyleAttributes;
import org.fbme.lib.iec61499.ecc.StateDeclaration;
import org.fbme.lib.iec61499.ecc.StateTransition;
import org.fbme.scenes.controllers.SceneViewpoint;
import org.fbme.scenes.controllers.components.ComponentsFacility;
import org.fbme.scenes.controllers.diagram.ConnectionsFacility;
import org.fbme.scenes.controllers.diagram.DiagramFacility;

import java.awt.*;


public class RelayoutECCAction implements Action {
    private final ELKLayoutProvider layoutProvider;

    public RelayoutECCAction(EditorCell cell) {
        Style style = cell.getStyle();
        DiagramFacility<StateDeclaration, StateDeclaration, StateTransition, Point> diagramFacility = (DiagramFacility<StateDeclaration, StateDeclaration, StateTransition, Point>) style.get(RichEditorStyleAttributes.DIAGRAM_FACILITY);
        ComponentsFacility<StateDeclaration, Point> componentsFacility = (ComponentsFacility<StateDeclaration, Point>) style.get(RichEditorStyleAttributes.COMPONENTS_FACILITY);
        ConnectionsFacility<StateDeclaration, StateDeclaration, StateTransition, ECTransitionCursor, ECTransitionPath> connectionsFacility = (ConnectionsFacility<StateDeclaration, StateDeclaration, StateTransition, ECTransitionCursor, ECTransitionPath>) style.get(RichEditorStyleAttributes.CONNECTIONS_FACILITY);
        SceneViewpoint sceneViewpoint = style.get(RichEditorStyleAttributes.VIEWPOINT);

        layoutProvider = new ELKLayoutProvider(diagramFacility, componentsFacility, connectionsFacility, sceneViewpoint);
    }

    @Override
    public void apply() {
        layoutProvider.relayout();
    }
}
