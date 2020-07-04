package org.fbme.lib.st.types;

public enum GenericType implements DataType {
    ANY_BIT,
    ANY_DATE,
    ANY_DERIVED,
    ANY_ELEMENTARY,
    ANY_INT,
    ANY_MAGNITUDE,
    ANY_NUM,
    ANY_REAL,
    ANY_STRING,
    ANY;

    @Override
    public String stringify() {
        return "" + this;
    }
}
