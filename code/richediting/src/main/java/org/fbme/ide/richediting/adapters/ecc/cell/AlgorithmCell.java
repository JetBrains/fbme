package org.fbme.ide.richediting.adapters.ecc.cell;

import jetbrains.mps.nodeEditor.cells.EditorCell_Collection;
import jetbrains.mps.openapi.editor.EditorContext;
import org.fbme.ide.richediting.editor.RichEditorStyleAttributes;
import org.fbme.lib.iec61499.declarations.AlgorithmDeclaration;
import org.fbme.lib.iec61499.ecc.StateAction;
import org.jetbrains.mps.openapi.model.SNode;

import java.awt.*;

public class AlgorithmCell extends ActionCell {
    private static final Color ALGORITHM_COLOR = new Color(199, 222, 193);

    public AlgorithmCell(EditorContext editorContext, SNode node, StateAction action, EditorCell_Collection cellCollection) {
        super(editorContext, node, ALGORITHM_COLOR, action, cellCollection);
        getStyle().set(RichEditorStyleAttributes.ALGORITHMS, action);
    }

    @Override
    protected void setTextFromAction() {
        AlgorithmDeclaration target = myAction.getAlgorithm().getTarget();
        if (target != null) {
            myNameText.setText(target.getName());
        } else {
            myNameText.setText("");
        }
    }
}
