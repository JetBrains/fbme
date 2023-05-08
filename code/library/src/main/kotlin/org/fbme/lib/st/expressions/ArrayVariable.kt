package org.fbme.lib.st.expressions

interface ArrayVariable : Variable {
    var subscribedVariable: Variable?
    val subscripts: MutableList<Expression?>
}
