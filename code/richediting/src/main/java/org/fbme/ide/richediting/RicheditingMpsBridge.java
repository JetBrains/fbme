package org.fbme.ide.richediting;

import jetbrains.mps.nodeEditor.cells.EditorCell_Collection;
import jetbrains.mps.openapi.editor.EditorContext;
import jetbrains.mps.openapi.editor.cells.EditorCell;
import jetbrains.mps.project.Project;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.mps.openapi.model.SNode;

public abstract class RicheditingMpsBridge {

    protected static RicheditingMpsBridge PROVIDER = null;

    protected abstract float provideEditorScale(@NotNull Project project);

    @NotNull
    protected abstract EditorCell provideInlineValueCell(
            @NotNull EditorContext context,
            @NotNull SNode node
    );

    @NotNull
    protected abstract EditorCell_Collection provideTransitionCell(
            @NotNull EditorContext context,
            @NotNull SNode node
    );

    @NotNull
    protected abstract EditorCell_Collection provideStateDeclarationCell(
            @NotNull EditorContext context,
            @NotNull SNode node
    );

    public static float getEditorScale(@NotNull Project project) {
        return PROVIDER.provideEditorScale(project);
    }

    @NotNull
    public static EditorCell createInlineValueCell(
            @NotNull EditorContext context,
            @NotNull SNode node
    ) {
        return PROVIDER.provideInlineValueCell(context, node);
    }

    @NotNull
    public static EditorCell_Collection createTransitionCell(
            @NotNull EditorContext context,
            @NotNull SNode node
    ) {
        return PROVIDER.provideTransitionCell(context, node);
    }

    @NotNull
    public static EditorCell_Collection createStateDeclarationCell(
            @NotNull EditorContext context,
            @NotNull SNode node
    ) {
        return PROVIDER.provideStateDeclarationCell(context, node);
    }
}
