package org.fbme.ide.richediting.adapters.fbnetwork;

import jetbrains.mps.openapi.editor.EditorContext;
import jetbrains.mps.openapi.editor.update.Updater;
import org.fbme.ide.richediting.viewmodel.FunctionBlockView;
import org.fbme.ide.richediting.viewmodel.NetworkComponentView;
import org.fbme.ide.richediting.viewmodel.NetworkView;
import org.jetbrains.mps.openapi.model.SNodeReference;

import java.util.HashSet;
import java.util.Set;

public class ExpandedComponentsController {
    private static final String EXPAND_FB_HINT = "org.fbme.ide.richediting.adapters.fbnetwork.ExpandFbHint";
    private final EditorContext editorContext;
    private final Set<NetworkComponentView> expandedComponents;

    public ExpandedComponentsController(NetworkView networkView, EditorContext editorContext) {
        this.editorContext = editorContext;
        expandedComponents = new HashSet<>();
        initializeExpandedComponents(networkView);
    }

    private static boolean shouldFbExpanded(EditorContext editorContext, FunctionBlockView view) {
        SNodeReference reference = view.getAssociatedNode().getReference();
        Updater updater = editorContext.getEditorComponent().getUpdater();
        String[] hints = updater.getExplicitEditorHintsForNode(reference);
        if (hints == null) {
            return false;
        }
        for (String hint : hints) {
            if (hint.equals(EXPAND_FB_HINT)) {
                return true;
            }
        }
        return false;
    }

    private static void setShouldFbExpanded(EditorContext editorContext, FunctionBlockView view, boolean expand) {
        SNodeReference reference = view.getAssociatedNode().getReference();
        Updater updater = editorContext.getEditorComponent().getUpdater();
        if (expand) {
            updater.addExplicitEditorHintsForNode(reference, EXPAND_FB_HINT);
        } else {
            updater.removeExplicitEditorHintsForNode(reference, EXPAND_FB_HINT);
        }
    }

    private static void updateFB(EditorContext editorContext) {
        Updater updater = editorContext.getEditorComponent().getUpdater();
        updater.update();
    }

    private void initializeExpandedComponents(NetworkView networkView) {
        for (NetworkComponentView networkComponentView : networkView.getComponentsView().getComponents()) {
            if (networkComponentView instanceof FunctionBlockView) {
                if (shouldFbExpanded(editorContext, (FunctionBlockView) networkComponentView)) {
                    expandedComponents.add(networkComponentView);
                }
            }
        }
    }

    public void expand(FunctionBlockView view) {
        setShouldFbExpanded(editorContext, view, true);
        expandedComponents.add(view);
        updateFB(editorContext);
    }

    public void collapse(FunctionBlockView view) {
        setShouldFbExpanded(editorContext, view, false);
        expandedComponents.remove(view);
        updateFB(editorContext);
    }

    public boolean isExpanded(FunctionBlockView view) {
        return expandedComponents.contains(view);
    }
}
