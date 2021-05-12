package org.fbme.ide.richediting.adapters.ecc.cell;

import jetbrains.mps.nodeEditor.cells.EditorCell_Collection;
import jetbrains.mps.openapi.editor.EditorContext;
import org.fbme.ide.richediting.editor.RichEditorStyleAttributes;
import org.fbme.lib.iec61499.declarations.EventDeclaration;
import org.fbme.lib.iec61499.ecc.StateAction;
import org.fbme.lib.iec61499.ecc.StateDeclaration;
import org.fbme.lib.iec61499.fbnetwork.PortPath;
import org.jetbrains.mps.openapi.model.SNode;

import java.awt.*;

public class OutputCell extends ActionCell {
    private static final Color OUTPUT_COLOR = new Color(235, 221, 185);

    public OutputCell(
            EditorContext editorContext,
            SNode node,
            StateAction action,
            EditorCell_Collection cellCollection
    ) {
        super(editorContext, node,OUTPUT_COLOR, action, cellCollection);
        getStyle().set(RichEditorStyleAttributes.OUTPUTS, action);
    }

    @Override
    protected void setTextFromAction() {
        PortPath<EventDeclaration> outputTarget = myAction.getEvent().getTarget();
        if (outputTarget != null) {
            myNameText.setText(myAction.getEvent().getPresentation());
        } else {
            myNameText.setText("");
        }
    }
}
