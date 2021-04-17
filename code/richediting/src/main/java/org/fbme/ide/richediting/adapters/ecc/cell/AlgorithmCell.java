package org.fbme.ide.richediting.adapters.ecc.cell;

import jetbrains.mps.nodeEditor.cells.EditorCell_Collection;
import jetbrains.mps.nodeEditor.cells.ParentSettings;
import jetbrains.mps.openapi.editor.EditorContext;
import jetbrains.mps.openapi.editor.cells.EditorCell;
import org.fbme.ide.richediting.editor.RichEditorStyleAttributes;
import org.fbme.lib.iec61499.declarations.AlgorithmDeclaration;
import org.fbme.lib.iec61499.ecc.StateAction;
import org.jetbrains.mps.openapi.model.SNode;

import java.awt.*;

public class AlgorithmCell extends ActionCell {
    private static final Color ALGORITHM_COLOR = new Color(199, 222, 193);
    private final EditorCell myAlgorithmBody;

    public AlgorithmCell(EditorContext editorContext, SNode node, StateAction action, EditorCell_Collection cellCollection, EditorCell body) {
        super(editorContext, node, ALGORITHM_COLOR, action, cellCollection);
        getStyle().set(RichEditorStyleAttributes.ALGORITHMS, action);
        this.myAlgorithmBody = body;
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

    @Override
    protected void paintContent(Graphics graphics, ParentSettings settings) {
        if (myAlgorithmBody != null) {
            super.paintContent(graphics, settings);
            graphics.setColor(new Color(230, 240, 212));
            graphics.fillRect(myAlgorithmBody.getX(), myAlgorithmBody.getY(), myWidth + ACTIVE_WEIGHT_PADDING, myAlgorithmBody.getHeight());
        } else {
            super.paintContent(graphics, settings);
        }
    }
}