package org.fbme.ide.integration.fordiac.translator.cpp.basic

import org.fbme.ide.integration.fordiac.translator.cpp.AbstractTranslator
import org.fbme.ide.integration.fordiac.translator.cpp.STAlgorithmTranslator.translate
import org.fbme.ide.integration.fordiac.translator.cpp.STAlgorithmTranslator.translateExpression
import org.fbme.lib.iec61499.declarations.AdapterTypeDeclaration
import org.fbme.lib.iec61499.declarations.BasicFBTypeDeclaration
import org.fbme.lib.iec61499.declarations.EventDeclaration
import org.fbme.lib.iec61499.declarations.ParameterDeclaration
import org.fbme.lib.st.expressions.LiteralKind.*
import org.fbme.lib.st.types.ArrayType
import org.fbme.lib.st.types.ElementaryType.*
import org.fbme.lib.st.types.ElementaryType.BOOL
import org.fbme.lib.st.types.ElementaryType.REAL
import org.fbme.lib.st.types.ElementaryType.STRING
import org.fbme.lib.st.types.ElementaryType.TIME
import org.fbme.lib.st.types.ElementaryType.WSTRING

class BasicFBTypeImplTranslator(private val fb: BasicFBTypeDeclaration) : AbstractTranslator(isHeader = false) {
    private val sb = StringBuilder()

    override val baseClass = "CBasicFB"

    override fun type(): BasicFBTypeDeclaration = fb

    fun translate(): String {
        sb.appendLine(this.constructImplIncludes())
            .appendLine(this.contructFBDefinition())
            .appendLine(this.constructFBInterfaceDefinition())
            .appendLine(this.constructFBInterfaceSpecDefinition())
        addInternalVarDefinition()

        val params = fb.inputParameters + fb.outputParameters + fb.internalVariables
        if (params.isNotEmpty()) {
            addInitialValueAssignmentDefinition(parameters = params)
        }

        addAlgorithms()
        addStates()
        addECC()

        val res = sb.toString()
        sb.clear()

        return res
    }

    private fun addInternalVarDelcaration(fb: BasicFBTypeDeclaration) {
        if (fb.internalVariables.isNotEmpty()) {
            sb.appendLine("static const CStringDictionary::TStringId scm_anInternalsNames[];")
                .appendLine("static const CStringDictionary::TStringId scm_anInternalsTypeIds[];")
                .appendLine("static const SInternalVarsInformation scm_stInternalVars;")
        }
    }

    private fun addInitialAssignment(parameter: ParameterDeclaration) {
        sb.append(parameter.name)
        val paramValue = parameter.initialValue!!.value

        when (parameter.type!!) {
            WSTRING,
            STRING -> {
                sb.append("() = \"")
                    .append(paramValue)
                    .appendLine("\";")
            }

            is ArrayType -> {
                sb.append("().fromString(\"")
                    .append(paramValue)
                    .appendLine("\");")
            }

            DATE_AND_TIME,
            TIME_OF_DAY,
            DATE,
            TIME -> {
                sb.append("().fromString(\"")
                    .append(paramValue)
                    .appendLine("\");")
            }

            BOOL -> {
                sb.append("() = ")
                    .append(if (paramValue as Boolean) "true" else "false")
                    .appendLine(";")
            }

            LREAL,
            REAL -> {
                sb.append("() = ")
                    .append(paramValue)
                    .appendLine(";")
            }

            else -> {
                when (parameter.initialValue!!.kind) {
                    BINARY_INT, DEC_INT, HEX_INT, OCT_INT -> {
                        sb.append("() = ")
                            .append(paramValue)
                            .appendLine(";")
                    }

                    else -> {
                        sb.append("().fromString(\"")
                            .append(paramValue)
                            .appendLine("\");")
                    }
                }
            }
        }
    }

    private fun addInitialValueAssignmentDefinition(parameters: Iterable<ParameterDeclaration>) {
        sb.append("void FORTE_${this.type().name}")
            .appendLine("::setInitialValues() {")

        parameters.forEach { param ->
            if (param.initialValue != null && param.initialValue?.value != null) {
                sb.append("  ")
                    .append(EXPORT_PREFIX)

                addInitialAssignment(param)
            }
        }

        sb.appendLine("}")
    }

    private fun addInternalVarDefinition() {
        fb.sockets
        if (fb.internalVariables.isNotEmpty()) {
            sb.append("const CStringDictionary::TStringId ")
                .append(this.constructFBClassName())
                .append("::scm_anInternalsNames[] = {")
                .append(this.constructFORTENameList(fb.internalVariables))
                .appendLine("};")
                .append("const CStringDictionary::TStringId ")
                .append(this.constructFBClassName())
                .append("::scm_anInternalsTypeIds[] = {")
                .append(this.constructFORTETypeList(fb.internalVariables))
                .appendLine("};")
                .append("const SInternalVarsInformation ")
                .append(this.constructFBClassName())
                .append("::scm_stInternalVars = {")
                .append(fb.internalVariables.size)
                .appendLine(", scm_anInternalsNames, scm_anInternalsTypeIds};")
        }
    }

    private fun addAlgorithms() {
        fb.algorithms.forEach { algorithm ->
            sb.append("void ")
                .append(this.constructFBClassName())
                .append("::alg_")
                .append(algorithm.name)
                .appendLine("(void) {")
                .appendLine(translate(algorithm))
                .appendLine("}")
        }
    }

    private fun addStates() {
        fb.ecc.states.forEach { state ->
            sb.append("void ")
                .append(this.constructFBClassName())
                .append("::enterState")
                .append(state.name)
                .appendLine("(void) {")
                .append("  m_nECCState = scm_nState")
                .append(state.name)
                .appendLine(";")

            state.actions.forEach { action ->
                action.algorithm.getTarget()?.let {
                    sb.append("  alg_")
                        .append(it.name)
                        .appendLine("();")
                }
                action.event.getTarget()?.let {
                    sb.append("  ")
                    addSendEvent(it.portTarget)
                }
            }

            sb.appendLine("}")
        }
    }

    private fun adapterEventName(event: EventDeclaration) = event.name.split("\\.")[1]

    private fun addSendEvent(event: EventDeclaration) {
        if (event.container is AdapterTypeDeclaration) {
            sb.append("sendAdapterEvent(scm_n")
                .append(event.container!!.name)
                .append("AdpNum, FORTE_")
                .append((event.container as AdapterTypeDeclaration).templateTypeDescriptor.typeName)
                .append("::scm_nEvent")
                .append(adapterEventName(event))
                .appendLine("ID);")
        } else {
            sb.append("sendOutputEvent(scm_nEvent")
                .append(event.name)
                .appendLine("ID);")
        }
    }

    private fun addECC() {
        sb.append("void ")
            .append(this.constructFBClassName())
            .appendLine("::executeEvent(int pa_nEIID){")
            .appendLine("  bool bTransitionCleared;")
            .appendLine("  do {")
            .appendLine("    bTransitionCleared = true;")
            .appendLine("    switch(m_nECCState) {")

        fb.ecc.states.forEach { state ->
            sb.append("      case scm_nState")
                .append(state.name)
                .appendLine(":")

            val outTransitions = fb.ecc.transitions
                .filter { t -> t.sourceReference.getTarget()?.name == state.name }

            var noTransitions = true
            outTransitions.forEach { transition ->
                if (noTransitions) {
                    noTransitions = false
                } else {
                    sb.appendLine("        else")
                }

                val eventCondition = transition.condition.eventReference.getTarget()?.portTarget
                val conditionExpression = transition.condition.getGuardCondition()

                if (eventCondition != null && conditionExpression != null) {
                    sb.append("        if((")
                    addTransitionEvent(eventCondition)
                    sb.append(" == pa_nEIID) && (")
                        .append(translateExpression(conditionExpression))
                        .appendLine("))")
                } else if (eventCondition != null) {
                    sb.append("        if(")
                    addTransitionEvent(eventCondition)
                    sb.appendLine(" == pa_nEIID)")
                } else if (conditionExpression != null) {
                    sb.append("        if(")
                        .append(translateExpression(conditionExpression))
                    sb.appendLine(")")
                } else {
                    sb.appendLine("        if(1)")
                }

                sb.append("          enterState")
                    .append(transition.targetReference.getTarget()!!.name)
                    .appendLine("();")
            }

            if (outTransitions.isNotEmpty()) {
                sb.appendLine("        else")
            }
            sb.appendLine("          bTransitionCleared  = false; //no transition cleared")
                .appendLine("        break;")
        }

        sb.appendLine("      default:")
            .append("        ")
            .append("DEVLOG_ERROR(\"The state is not in the valid range! The state value is: %d. The max value can be: ")
            .append(fb.ecc.states.size)
            .appendLine(".\", m_nECCState.operator TForteUInt16 ());")
            .appendLine("        m_nECCState = 0; // 0 is always the initial state")
            .appendLine("        break;")
            .appendLine("    }")
            .append("    pa_nEIID = cg_nInvalidEventID; // we have to clear the event after the first check ")
            .appendLine("in order to ensure correct behavior")
            .appendLine("  } while(bTransitionCleared);")
            .appendLine("}")

    }

    private fun addTransitionEvent(event: EventDeclaration) {
        if (event.container is AdapterTypeDeclaration) {
            sb.append(EXPORT_PREFIX)
                .append(event.container!!.name)
                .append("().")
                .append(adapterEventName(event))
                .append("()")
        } else {
            sb.append("scm_nEvent")
                .append(event.name)
                .append("ID")
        }
    }
}
