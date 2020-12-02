package org.fbme.ide.platform.editor;

import jetbrains.mps.ide.editor.NodeEditorFactory;
import jetbrains.mps.ide.editor.NodeEditorFactoryBase;
import jetbrains.mps.internal.collections.runtime.IWhereFilter;
import jetbrains.mps.internal.collections.runtime.Sequence;
import jetbrains.mps.lang.smodel.generator.smodelAdapter.SLinkOperations;
import jetbrains.mps.lang.smodel.generator.smodelAdapter.SNodeOperations;
import jetbrains.mps.openapi.editor.Editor;
import jetbrains.mps.project.MPSProject;
import jetbrains.mps.smodel.adapter.structure.MetaAdapterFactory;
import jetbrains.mps.smodel.structure.ExtensionPoint;
import org.fbme.ide.iec61499.editor.ProjectEditorSpecs;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import org.jetbrains.mps.openapi.language.SConcept;
import org.jetbrains.mps.openapi.language.SReferenceLink;
import org.jetbrains.mps.openapi.model.SNode;

import java.util.List;
import java.util.stream.Collectors;

public class PlatformEditorFactory extends NodeEditorFactoryBase {

    private final MPSProject myProject;

    public PlatformEditorFactory(MPSProject project) {
        myProject = project;
    }

    @Override
    public boolean canCreate(@NotNull NodeEditorFactory.Context context) {
        final SNode node = context.getNode();
        return EditorProjectionControllerRegistry.getInstance()
                .getFactories().stream()
                .anyMatch(it -> it.isApplicable(node));
    }

    @Nullable
    @Override
    public Editor create(@NotNull NodeEditorFactory.Context context) {
        return new HeaderedNodeEditor(context.getNode(), myProject);
    }

    @Override
    public SNode getBaseNode(@NotNull SNode node) {
        return ProjectEditorSpecs.getInstance(myProject).getSpecTarget(node);
    }
}
