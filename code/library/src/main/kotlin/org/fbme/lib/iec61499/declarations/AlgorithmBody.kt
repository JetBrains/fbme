package org.fbme.lib.iec61499.declarations

import org.fbme.lib.common.ContainedElement
import org.fbme.lib.st.statements.Statement

interface AlgorithmBody : ContainedElement {
    val language: AlgorithmLanguage<*>
    override val container: AlgorithmDeclaration?

    interface ST : AlgorithmBody {
        override val language: AlgorithmLanguage<ST>
            get() {
                return AlgorithmLanguage.ST
            }

        val statements: MutableList<Statement>
    }

    interface Unknown : AlgorithmBody {
        var text: String
    }
}
