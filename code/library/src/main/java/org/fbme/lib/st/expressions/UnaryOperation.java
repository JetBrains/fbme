package org.fbme.lib.st.expressions;

public enum UnaryOperation {
    NOT("NOT", true),
    NEG("-", false);

    private final String myAlias;
    private final boolean myIsSpaced;

    UnaryOperation(String alias, boolean isSpaced) {
        myAlias = alias;
        myIsSpaced = isSpaced;
    }

    public String getAlias() {
        return myAlias;
    }

    public boolean isSpaced() {
        return myIsSpaced;
    }

    @Override
    public String toString() {
        return myAlias;
    }
}
