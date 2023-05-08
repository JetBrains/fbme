package org.fbme.smvDebugger.fb2smv.AbstractConverters

import org.fbme.lib.st.expressions.BinaryOperation
import org.fbme.lib.st.types.ElementaryType

data class VerifiersData( val typesMap : Map<ElementaryType, String>,
                         val typesInitValMap : Map<ElementaryType, String>,
                         val binaryOperationsConvertionMap : Map<BinaryOperation, String>,
                        val NON_DETERMINISTIC_VARIABLES_ENABLED: Boolean){

}
