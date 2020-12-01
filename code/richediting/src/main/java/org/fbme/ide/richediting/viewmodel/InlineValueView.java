package org.fbme.ide.richediting.viewmodel;

import org.fbme.ide.iec61499.adapter.st.ExpressionByNode;
import org.fbme.lib.iec61499.fbnetwork.EntryKind;
import org.fbme.lib.st.expressions.Expression;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.mps.openapi.model.SNode;

import java.util.Objects;

public class InlineValueView implements NetworkComponentView, NetworkPortView {

    private final FunctionBlockPortView myOpposite;
    private final Expression myExpression;
    private final SNode myAssociatedNode;

    public InlineValueView(FunctionBlockPortView opposite, Expression expression) {
        myOpposite = opposite;
        myExpression = expression;
        myAssociatedNode = ((ExpressionByNode<?>) expression).getNode();
    }

    @NotNull
    @Override
    public NetworkComponentView getComponent() {
        return this;
    }

    @NotNull
    public FunctionBlockPortView getOpposite() {
        return myOpposite;
    }

    @NotNull
    @Override
    public EntryKind getKind() {
        return EntryKind.DATA;
    }

    @NotNull
    public Expression getExpression() {
        return myExpression;
    }

    @Override
    public boolean isEditable() {
        return false;
    }

    public SNode getAssociatedNode() {
        return this.myAssociatedNode;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) {
            return true;
        }
        if (!(o instanceof InlineValueView)) {
            return false;
        }

        InlineValueView that = (InlineValueView) o;
        return Objects.equals(myOpposite, that.myOpposite);
    }

    @Override
    public int hashCode() {
        return myOpposite.hashCode();
    }
}
