package org.fbme.integration.nxt.importer.utils;

import com.intellij.ui.JBColor;
import jetbrains.mps.errors.MessageStatus;
import jetbrains.mps.nodeEditor.DefaultEditorMessage;
import jetbrains.mps.nodeEditor.EditorComponent;
import jetbrains.mps.nodeEditor.EditorMessage;
import jetbrains.mps.nodeEditor.checking.BaseEditorChecker;
import jetbrains.mps.nodeEditor.checking.UpdateResult;
import jetbrains.mps.util.Cancellable;
import org.fbme.integration.nxt.importer.network.NetworksAnalyser;
import org.fbme.integration.nxt.importer.network.RefactoringRequest;
import org.fbme.lib.iec61499.declarations.FBTypeDeclaration;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.mps.openapi.model.SNode;

import java.util.Collections;
import java.util.List;
import java.util.stream.Collectors;

public class IsomorphismHighlighter extends BaseEditorChecker {
    private final IsomorphismManager isomorphismManager;
    private boolean changed = true;
    private final int MESSAGES_LIMIT = 10;

    private IsomorphismManager.IsomorphismListener listener = new IsomorphismManager.IsomorphismListener() {
        @Override
        public void changed(SNode node) {
            IsomorphismHighlighter.this.changed = true;
        }
    };

    public IsomorphismHighlighter(IsomorphismManager isomorphismManager) {
        this.isomorphismManager = isomorphismManager;
        this.isomorphismManager.addListener(this.listener);
    }

    public void dispose() {
        this.isomorphismManager.removeListener(this.listener);
    }

    @Override
    public boolean needsUpdate(EditorComponent editorComponent) {
        return this.changed;
    }

    @NotNull
    @Override
    public UpdateResult update(EditorComponent editorComponent, boolean b, boolean b1, Cancellable cancellable) {
        this.changed = false;

        SNode node = editorComponent.getEditedNode();
        List<RefactoringRequest> requests = isomorphismManager.getRequestsBySNode(node)
                .stream()
                .sorted(Collections.reverseOrder(new NetworksAnalyser.RefactoringRequestComparator()))
                .limit(MESSAGES_LIMIT)
                .collect(Collectors.toList());

        List<EditorMessage> messages = requests.stream()
                .map(request -> transformRequestToMessage(request, node))
                .collect(Collectors.toList());

        return new UpdateResult.Completed(true, messages);
    }

    private EditorMessage transformRequestToMessage(RefactoringRequest request, SNode node) {
        return new DefaultEditorMessage(node, MessageStatus.OK, JBColor.RED, createMessage(request), this);
    }

    private String createMessage(RefactoringRequest request) {
        StringBuilder builder = new StringBuilder();
        builder.append("Found isomorphic subgraph, size: ")
                .append(request.subgraph.vertices.size())
                .append("\n")
                .append("Networks:")
                .append("\n");
        for (var nsg : request.networkSubgraphDeclarations) {
            builder.append(((FBTypeDeclaration) nsg.getNetwork().getContainer()).getName()).append("\n");
        }

        return builder.toString();
    }
}
