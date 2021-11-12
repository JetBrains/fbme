package org.fbme.formalfb.generation.spin

import com.intellij.util.containers.BidirectionalMap
import org.fbme.formalfb.generation.GenerationException
import org.fbme.lib.iec61499.declarations.BasicFBTypeDeclaration
import org.fbme.lib.iec61499.declarations.EventDeclaration
import org.fbme.lib.iec61499.declarations.ParameterDeclaration
import org.fbme.lib.iec61499.ecc.StateDeclaration
import org.fbme.lib.iec61499.ecc.StateTransition

class BasicBlockGenerator(val blockType: BasicFBTypeDeclaration): BlockGenerator {

    private val nameMappings = BidirectionalMap<String, String>()

    override fun generate(): String {

        val eccStates = blockType.ecc.states.joinToString(prefix = "{", postfix = "}") { mapEccState(it, blockType) }
        val eccTypeAlias = "${blockType.name}_ECC"
        val eccTypeAliasesDeclaration = "mtype:$eccTypeAlias = $eccStates;"
        val initialEccState = mapEccState(blockType.ecc.states.first(), blockType)

        return """
            $eccTypeAliasesDeclaration
            proctype ${blockType.name}(chan
                ${parameterDeclarations()}
                alpha, beta
                ) {
                ${bufferDeclarations(4)}
                bit $existsInputEvent = 0;
                bit $existsEnabledECTran = 0;
                mtype:$eccTypeAlias Q = $initialEccState;
              
              wait_events:
                end: // valid end state
                alpha?true;
                $existsInputEvent = ${checkInputEvents()};
                
                
                atomic {
                    ${readInputBuffers(5)}
                }
                
              s0_osm:
                printf("${blockType.name}:s0_osm, Q=%d \n", Q);
                bit ${selectionDeclarations()};
                ${selectionConditions(4)}
                
                bit ${transitionDeclarations()};
                ${transitionConditions(4)}
                
                // s0_osm select 1 event. Reset all other RuleSet1
                if
                ${readInputEvent(4)}
                :: (!$existsInputEvent) -> goto done;
                :: else -> printf("${blockType.name}: no enabled transitions");
                fi
                
                // RuleSet1 reset all other inputs
                do
                ${resetInputEvents(4)}
                :: else -> break;
                od
                goto s1_osm; // RuleSet3
                
                
                s1_osm:
                $existsEnabledECTran = (
                    ${existEnabledTransition(5)}
                );
                
                printf("${blockType.name}: s1_osm EEC  %d \n", $existsEnabledECTran);
                
                atomic {
                    if // RuleSet4: ECC transition. Conditions ordered by XML description
                    ${performEccTransition(5)}
                    :: !$existsEnabledECTran -> goto done;
                    :: else -> printf("${blockType.name}: No input events to process\n");
                    fi;
                    ${resetSelectedEvent(5)}
                }
                
                printf("${blockType.name}:s2_osm, Q=%d\n", Q);
                s2_osm: 
                atomic {
                    if
                    ${performStateActions(5)}
                    fi
                }
                
                goto s1_osm;
                
              done: // RuleSet10
                beta!true;
                goto wait_events;
            }
        """.trimIndent()
    }

    private fun performStateActions(indent: Int): String {
        val sb = StringBuilder()
        val indentStr = indentString(indent + 1)
        for ((index, state) in blockType.ecc.states.withIndex()) {
            val ending = strEnd(index, blockType.ecc.states, indent)
            sb.append(":: (Q == ${mapEccState(state, blockType)}) ->\n$indentStr")
            if (state.actions.isEmpty()) {
                sb.append("skip;$ending")
                continue
            }
            for (action in state.actions) {
                 action.algorithm.getTarget()?.let { algo ->
                    sb.append(translateSTAlgo(algo, indent + 1, nameMappings))
                 }
                action.event.getTarget()?.portTarget?.let { event ->
                    for (association in event.associations) {
                        sb.append("//emit event\n$indentStr")
                        association.parameterReference.getTarget()?.let { param ->
                            sb.append("reset(${mapOutputParameter(param, nameMappings)});\n$indentStr")
                        }
                        sb.append("reset(${mapOutputEvent(event, nameMappings)});\n$indentStr")

                        association.parameterReference.getTarget()?.let { param ->
                            sb.append("${mapOutputParameter(param, nameMappings)}!${mapVarName(param.name)};\n$indentStr")
                        }
                        sb.append("${mapOutputEvent(event,nameMappings)}!true;\n$indentStr")//todo: proper ending
                    }
                }
            }

        }

        return sb.toString()
    }

    private fun resetSelectedEvent(indent: Int): String {
        return blockType.inputEvents.joinToString(separator = "\n${indentString(indent)}") {
            mapSelectionVariable(it, nameMappings) + " = 0;"
        }
    }

    private fun performEccTransition(indent: Int): String {
        val sb = StringBuilder()
        for ((index, transition) in blockType.ecc.transitions.withIndex()) {
            val cond = getTransitionCondition(transition)
            val target = mapEccState( transition.targetReference.getTarget()!!, blockType)
            val ending = strEnd(index, blockType.ecc.transitions, indent)
            sb.append(":: ($cond) -> Q = $target;$ending")
        }
        return sb.toString()
    }

    private fun existEnabledTransition(indent: Int): String {
        val indentStr = indentString(indent)
        return blockType.ecc.transitions.map {
            "(" + getTransitionCondition(it) + ")"
        }.joinToString(separator = "\n$indentStr|| ")
    }

    private fun getTransitionCondition(transition: StateTransition): String {
        val currentState = transition.sourceReference.getTarget()
            ?: throw GenerationException("${blockType.name}: Transition has null source reference: $transition, ${mapTransitionName(transition)}")

        return "Q == ${mapEccState(currentState, blockType)} && ${mapTransitionName(transition)}"
    }

    private fun resetInputEvents(indent: Int): String {
        val sb = StringBuilder()
        for ((index, inputEvent) in blockType.inputEvents.withIndex()) {
            val ieName = mapInputEvent(inputEvent, nameMappings)
            val ending = strEnd(index, blockType.inputEvents, indent)
            sb.append(":: atomic { nempty($ieName) -> $ieName?true;}$ending")
        }
        return sb.toString()
    }

    private fun readInputEvent(indent: Int): String {
        val sb = StringBuilder()
        val indentStr = indentString(indent)
        for ((index, inputEvent) in blockType.inputEvents.withIndex()) {
            val ending = strEnd(index, blockType.inputEvents, indent)
            sb.append(":: atomic { ${mapSelectionVariable(inputEvent, nameMappings)} ->\n$indentStr")
            sb.append("    ${mapInputEvent(inputEvent, nameMappings)}?true;\n$indentStr")
            sb.append("}$ending")
        }
        return sb.toString()
    }

    private fun strEnd(index: Int, collection: Collection<*>, indent: Int): String {
        val indentStr = indentString(indent)
        return if (index == collection.size - 1) "" else "\n$indentStr"
    }

    private fun selectionDeclarations(): String {
        return blockType.inputEvents.joinToString { mapSelectionVariable(it, nameMappings) }
    }

    private fun selectionConditions(indent: Int): String {
        val sb = StringBuilder()
        val indentStr = indentString(indent)
        var prevCondition: String? = null
        for (inputEvent in blockType.inputEvents) {
            val selectionVar = mapSelectionVariable(inputEvent, nameMappings)
            var statesString = getStatesDependentOnEvent(inputEvent)
                .joinToString(separator = " && ") { state ->
                    "Q == " + mapEccState(state, blockType)
                }
            if (statesString.isEmpty()) {
                statesString = "false"
            }
            sb.append("$selectionVar = ${prevCondition ?: ""}nempty(${mapInputEvent(inputEvent, nameMappings)}) && $statesString;\n$indentStr")
            prevCondition = "!$selectionVar && "
        }
        return sb.toString()
    }

    private fun getStatesDependentOnEvent(event: EventDeclaration): List<StateDeclaration> {
        val result = mutableListOf<StateDeclaration>()

        for (transition in blockType.ecc.transitions) {
            if (transition.condition.eventReference.getTarget()?.portTarget == event) {
                transition.sourceReference.getTarget()?.let { result.add(it) }
            }
        }
        return result
    }

    private fun parameterDeclarations(): String {
        val declarations = mutableListOf<String>()
        declarations.addAll(blockType.inputEvents.map { mapInputEvent(it, nameMappings) })
        declarations.addAll(blockType.outputEvents.map { mapOutputEvent(it, nameMappings) })
        declarations.addAll(blockType.inputParameters.map { mapInputParameter(it, nameMappings) })
        declarations.addAll(blockType.outputParameters.map { mapOutputParameter(it, nameMappings) })
        val parameterDeclarationStr = declarations.joinToString(postfix = ", ")
        return parameterDeclarationStr
    }

    private fun transitionConditions(indent: Int): String {
        val sb = StringBuilder()
        val indentStr = indentString(indent)
        for (transition in blockType.ecc.transitions) {
            var condition = ""
            transition.condition.eventReference.getTarget()?.let {
                condition += mapSelectionVariable(it.portTarget, nameMappings)
            }
            transition.condition.getGuardCondition()?.let {
                if (condition.isNotEmpty()) condition += " "
                condition += mapExpression(it)
            }
            if (condition.isEmpty()) {
                condition = "1"
            }
            sb.append(mapTransitionName(transition) + " = $condition;\n$indentStr")

        }
        return sb.toString()
    }

    private fun transitionDeclarations(): String {
        return blockType.ecc.transitions.joinToString { mapTransitionName(it) }
    }

    private fun readInputBuffers(indent: Int): String {
        val sb = StringBuilder()
        val indentStr = indentString(indent)
        sb.append("do\n$indentStr")
        for (inputParameter in blockType.inputParameters) {
            val paramName = mapInputParameter(inputParameter, nameMappings)
            val bufferName = mapVarName(inputParameter.name)
            sb.append(":: nempty($paramName) -> $paramName?$bufferName;\n$indentStr")
        }
        val allEmptyCheck = blockType.inputParameters.joinToString(separator = " && ") {
            "empty(${mapInputParameter(it, nameMappings)})"
        }
        sb.append(":: $allEmptyCheck -> break;\n$indentStr")
        sb.append("od")
        return sb.toString()
    }

    private fun checkInputEvents(): String {
        return blockType.inputEvents.joinToString (separator = " || ") { ie ->
            "nempty(${mapInputEvent(ie, nameMappings)})"
        }
    }

    private fun bufferDeclarations(indent: Int): String {
        val sb = StringBuilder()
        val indentStr = indentString(indent)
        for (parameter in blockType.inputParameters) {
            sb.append(initializeParameter(parameter) + "\n$indentStr")
        }
        for (param in blockType.outputParameters) {
            sb.append(initializeParameter(param) + "\n$indentStr")
        }
        return sb.toString()
    }



    private fun initializeParameter(parameter: ParameterDeclaration): String {
        val type = map2SpinType(parameter.type!!)
        val initialValue = map2SpinInitialVal(type, parameter.initialValue)
        val name = mapVarName(parameter.name)
        return "$type $name = $initialValue;"
    }


    companion object Vars {
        const val existsInputEvent = "ExistsInputEvent"
        const val existsEnabledECTran = "ExistsEnabledECTran"
    }
}

fun indentString(indent: Int) = " ".repeat(indent * 4)