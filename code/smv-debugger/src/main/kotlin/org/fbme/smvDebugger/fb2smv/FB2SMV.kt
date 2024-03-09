package org.fbme.smvDebugger.fb2smv

import org.fbme.lib.iec61499.declarations.CompositeFBTypeDeclaration
import org.fbme.lib.iec61499.declarations.EventDeclaration
import org.fbme.lib.iec61499.descriptors.FBPortDescriptor
import org.fbme.lib.iec61499.descriptors.FBTypeDescriptor
import org.fbme.lib.st.expressions.BinaryOperation
import org.fbme.lib.st.types.ElementaryType
import org.fbme.smvDebugger.fb2smv.AbstractConverters.AbstractFBDConverter
import org.fbme.smvDebugger.fb2smv.AbstractConverters.VerifiersData

class FB2SMV: AbstractFBDConverter("smv")  {
    override fun compositeFBConversion(compositeFb: CompositeFBTypeDeclaration) {
        compositeFBConverter?.generateSignature(compositeFb, buf)
        compositeFBConverter?.generateFBsInstances(compositeFb, buf)
        compositeFBConverter?.generateCompositeFBsVariables(compositeFb, buf)
        compositeFBConverter?.generateInternalDataConnections(compositeFb, buf)
        compositeFBConverter?.generateInnerFBsEventOutputsUpdate(compositeFb, buf)
        compositeFBConverter?.generateDispatcher(compositeFb, buf)
        compositeFBConverter?.generateInternalEventConnections(compositeFb, buf)
        compositeFBConverter?.generateFooter(compositeFb, buf)
    }
    override fun basicFBConversion(fb: FBTypeDescriptor) {
        data?.ndtExists = false
        basicFBConverter?.generateSignature(fb, buf)
        basicFBConverter?.generateLocalVariableDeclaration(fb, buf)
        basicFBConverter?.generateCountersDeclaration(fb, buf)
        basicFBConverter?.generateLocalVariableDefinition(fb, buf)
        basicFBConverter?.generateNonDeterministicVariables(fb, buf)
        basicFBConverter?.generateECCTransitions(fb, buf)
        basicFBConverter?.generateOSM(fb, buf)
        basicFBConverter?.generateNA(fb, buf) // --
        basicFBConverter?.generateNI(fb, buf) // --
        basicFBConverter?.generateInputVariablesUpdate(fb, buf)
        basicFBConverter?.generateOutputVariablesUpdate(fb, buf)
        basicFBConverter?.generateAlphaBeta(fb, buf)
        basicFBConverter?.generateInputEventsReset(fb, buf)
        basicFBConverter?.generateOutputEventsSet(fb, buf)
        basicFBConverter?.generateFooter(fb, buf)
    }

    init {
        val NDT = true
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

        data = VerifiersData(typesMap,typesInitValMap,binaryOperationsConvertionMap, NDT
        ) { ie: EventDeclaration? ->

            if (data?.NON_DETERMINISTIC_VARIABLES_ENABLED == true && ie?.name == "NDT"){
                data?.ndtExists = true
                true
            }
            else false
        }
        basicFBConverter = SMVFunctionBlockConverter(data!!)
        compositeFBConverter = SMVCompositeFBConverter(data!!)
        mainFunction = MainConverter(data!!)
    }


}