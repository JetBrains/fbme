package org.fbme.ide.richediting.viewmodel;

import org.fbme.ide.iec61499.adapter.fbnetwork.FunctionBlockDeclarationBaseByNode;
import org.fbme.lib.iec61499.descriptors.FBTypeDescriptor;
import org.fbme.lib.iec61499.fbnetwork.FunctionBlockDeclarationBase;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.mps.openapi.model.SNode;

import java.util.Objects;

public class FunctionBlockView implements NetworkComponentView {

    @NotNull
    private final FunctionBlockDeclarationBase myFunctionBlock;
    private final SNode myAssociatedNode;
    private final TypeDescriptorAdapter myTypeDescriptor;
    private final boolean myIsEditable;

    public FunctionBlockView(@NotNull FunctionBlockDeclarationBase functionBlock, boolean isEditable) {
        myFunctionBlock = functionBlock;
        myAssociatedNode = ((FunctionBlockDeclarationBaseByNode<?>) functionBlock).getNode();
        myTypeDescriptor = new TypeDescriptorAdapter(functionBlock.getType());
        myIsEditable = isEditable;
    }

    public SNode getAssociatedNode() {
        return myAssociatedNode;
    }

    @NotNull
    public FunctionBlockDeclarationBase getComponent() {
        return myFunctionBlock;
    }

    @Override
    public boolean isEditable() {
        return myIsEditable;
    }

    @NotNull
    public FBTypeDescriptor getType() {
        return myTypeDescriptor;
    }

    public TypeDescriptorAdapter.BrokenPorts getBrokenPorts() {
        return myTypeDescriptor.getBrokenPorts();
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) {
            return true;
        }
        if (!(o instanceof FunctionBlockView)) {
            return false;
        }

        FunctionBlockView that = (FunctionBlockView) o;
        return Objects.equals(myFunctionBlock, that.myFunctionBlock);
    }

    @Override
    public int hashCode() {
        return myFunctionBlock.hashCode();
    }

}
