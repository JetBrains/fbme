package org.fbme.ide.richediting.adapters.common.actions;

import jetbrains.mps.openapi.editor.cells.EditorCell;
import org.fbme.ide.richediting.adapters.ecc.actions.RelayoutECCAction;
import org.fbme.ide.richediting.adapters.fbnetwork.actions.RelayoutFBNetworkAction;

public class RelayoutAction implements Action {
    private final EditorCell cell;

    public RelayoutAction(EditorCell cell) {
        this.cell = cell;
    }

    @Override
    public void apply() {
        String typeName = cell.getSNode().getConcept().getName();
        if (typeName.equals("BasicFBTypeDeclaration")) {
            new RelayoutECCAction(cell).apply();
        } else if (typeName.equals("CompositeFBTypeDeclaration")) {
            new RelayoutFBNetworkAction(cell).apply();
        }
    }
}
