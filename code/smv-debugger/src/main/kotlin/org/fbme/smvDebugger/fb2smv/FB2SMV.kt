package org.fbme.smvDebugger.fb2smv

import org.fbme.lib.iec61499.declarations.CompositeFBTypeDeclaration
import org.fbme.lib.st.expressions.BinaryOperation
import org.fbme.lib.st.types.ElementaryType
import org.fbme.smvDebugger.fb2smv.AbstractConverters.AbstractFBDConverter
import org.fbme.smvDebugger.fb2smv.AbstractConverters.VerifiersData

class FB2SMV: AbstractFBDConverter("smv")  {
    init {
        val typesMap = mapOf(
            ElementaryType.BOOL to "boolean"
        )
        val typesInitValMap = mapOf(
            ElementaryType.BOOL to "FALSE"
        )
        val binaryOperationsConvertionMap = mapOf(
            BinaryOperation.AND to "&",
            BinaryOperation.OR to "|"
        )
        data = VerifiersData(typesMap,typesInitValMap,binaryOperationsConvertionMap)
        basicFBConverter = SMVFunctionBlockConverter(data!!)
        compositeFBConverter = SMVCompositeFBConverter(data!!)
        mainFunction = MainConverter(data!!)
    }


}