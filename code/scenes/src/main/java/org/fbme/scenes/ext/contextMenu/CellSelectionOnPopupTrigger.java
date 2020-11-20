package org.fbme.scenes.ext.contextMenu;

import jetbrains.mps.nodeEditor.selection.EditorCellLabelSelection;
import jetbrains.mps.openapi.editor.EditorComponent;
import jetbrains.mps.openapi.editor.cells.CellConditions;
import jetbrains.mps.openapi.editor.cells.CellTraversalUtil;
import jetbrains.mps.openapi.editor.cells.EditorCell;
import jetbrains.mps.openapi.editor.extensions.EditorExtension;
import jetbrains.mps.openapi.editor.selection.Selection;
import jetbrains.mps.openapi.editor.selection.SelectionManager;
import jetbrains.mps.openapi.editor.selection.SingularSelection;
import org.jetbrains.annotations.NotNull;

import java.awt.event.MouseAdapter;
import java.awt.event.MouseEvent;
import java.awt.event.MouseListener;
import java.util.HashMap;
import java.util.Map;

public class CellSelectionOnPopupTrigger {

    private static final Map<EditorComponent, CellSelectionOnPopupTrigger> INSTANCES = new HashMap<>();

    public static final EditorExtension EDITOR_EXTENSION = new EditorExtension() {
        public boolean isApplicable(@NotNull EditorComponent ec) {
            return ec instanceof jetbrains.mps.nodeEditor.EditorComponent;
        }

        public void install(@NotNull EditorComponent ec) {
            CellSelectionOnPopupTrigger inst = new CellSelectionOnPopupTrigger((jetbrains.mps.nodeEditor.EditorComponent) ec);
            inst.install();
            INSTANCES.put(ec, inst);
        }

        public void uninstall(@NotNull EditorComponent ec) {
            INSTANCES.remove(ec).uninstall();
        }
    };


    private final jetbrains.mps.nodeEditor.EditorComponent myEditorComponent;
    private final MouseAdapter myMouseListener = new MouseAdapter() {
        @Override
        public void mousePressed(MouseEvent event) {
            if (!(event.isPopupTrigger())) {
                return;
            }

            SelectionManager selectionManager = myEditorComponent.getSelectionManager();
            if (isTrivialSelection(selectionManager.getSelection())) {

                EditorCell leaf = myEditorComponent.getRootCell().findLeaf(event.getX(), event.getY());
                if (leaf != null && CellTraversalUtil.getFoldedParent(leaf) != null) {
                    return;
                }
                if (leaf == null || !leaf.isSelectable()) {
                    leaf = myEditorComponent.getRootCell().findNearestLeafOnLine(event.getX(), event.getY(), CellConditions.SELECTABLE);
                }
                selectionManager.setSelection(leaf);
            }
        }
    };

    private boolean isTrivialSelection(@NotNull Selection selection) {
        if (selection instanceof EditorCellLabelSelection) {
            EditorCellLabelSelection labelSelection = (EditorCellLabelSelection) selection;
            return !(labelSelection.hasNonTrivialSelection());
        }
        return selection instanceof SingularSelection;
    }

    public CellSelectionOnPopupTrigger(@NotNull jetbrains.mps.nodeEditor.EditorComponent ec) {
        myEditorComponent = ec;

    }

    private void install() {
        MouseListener[] mouseListeners = myEditorComponent.getMouseListeners();
        for (MouseListener ml : mouseListeners) {
            myEditorComponent.removeMouseListener(ml);
        }
        myEditorComponent.addMouseListener(myMouseListener);
        for (MouseListener ml : mouseListeners) {
            myEditorComponent.addMouseListener(ml);
        }
    }

    private void uninstall() {
        myEditorComponent.removeMouseListener(myMouseListener);
    }

}
