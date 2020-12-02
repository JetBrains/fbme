package org.fbme.ide.richediting.editor;

import jetbrains.mps.project.Project;
import org.fbme.ide.platform.editor.EditorProjectionController;
import org.fbme.ide.platform.editor.SimpleEditorProjection;
import org.fbme.lib.iec61499.declarations.AlgorithmDeclaration;
import org.jetbrains.annotations.NonNls;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import org.jetbrains.mps.openapi.model.SNode;

import java.util.Objects;

public class RichAlgorithmProjection extends SimpleEditorProjection {

    private final AlgorithmDeclaration myAlgorithm;

    public RichAlgorithmProjection(SNode node, EditorProjectionController controller, Project project, String name, String[] hints, AlgorithmDeclaration algorithm) {
        super(node, controller, project, name, hints);
        myAlgorithm = algorithm;
    }

    @Nullable
    @Override
    public Object getData(@NotNull @NonNls String string) {
        if (Objects.equals(RichEditorDataKeys.ALGORITHM.getName(), string)) {
            return myAlgorithm;
        }
        return null;
    }
}
