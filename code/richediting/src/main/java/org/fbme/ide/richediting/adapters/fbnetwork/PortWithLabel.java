package org.fbme.ide.richediting.adapters.fbnetwork;

import jetbrains.mps.openapi.editor.EditorContext;
import org.fbme.ide.richediting.editor.RichEditorStyleAttributes;
import org.fbme.lib.iec61499.descriptors.FBPortDescriptor;
import org.fbme.scenes.cells.EditorCell_SceneLabel;
import org.jetbrains.mps.openapi.model.SNode;

public class PortWithLabel extends PortBase {
    private final EditorCell_SceneLabel label;

    public PortWithLabel(EditorContext context, SNode node, FBPortDescriptor port) {
        super(port);
        label = new EditorCell_SceneLabel(context, node, port.getName(), !port.isValid());
        label.getStyle().set(RichEditorStyleAttributes.PORT, port);
    }

    public EditorCell_SceneLabel getLabel() {
        return label;
    }
}
