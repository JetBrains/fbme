package org.fbme.formalfb.generation.spin

import org.fbme.formalfb.generation.GenerationException
import org.fbme.formalfb.generation.TemplateEmbedder
import org.fbme.formalfb.generation.embed
import org.fbme.lib.iec61499.declarations.BasicFBTypeDeclaration
import org.fbme.lib.iec61499.declarations.EventDeclaration
import org.fbme.lib.iec61499.ecc.StateDeclaration
import org.fbme.lib.iec61499.ecc.StateTransition

class BasicBlockGenerator(val basicType: BasicFBTypeDeclaration): GeneratorBase(basicType) {

    override fun generate(): String {
        val eccStates = basicType.ecc.states.joinToString(prefix = "{", postfix = "}") { mapEccState(it, basicType) }
        val eccTypeAlias = "${basicType.name}_ECC"
        val eccTypeAliasesDeclaration = "mtype:$eccTypeAlias = $eccStates;"
        val initialEccState = mapEccState(basicType.ecc.states.first(), basicType)
        return """
            $eccTypeAliasesDeclaration
            proctype ${basicType.name}(chan
                ${parameterDeclarations()}
                $alpha, $beta
                ) {
                ${embed(4) {bufferDeclarations()} }
                ${embed(4) {internalVarDeclarations()} }

                bit $existsInputEvent = 0;
                bit $existsEnabledECTran = 0;
                mtype:$eccTypeAlias Q = $initialEccState;

              wait_events:
                end: // valid end state
                $alpha?true;
                $existsInputEvent = ${checkInputEvents()};

                ${embed(4) { readInputBuffers() }}

              s0_osm:
                printf("${basicType.name}:s0_osm, Q=%d \n", Q);
                bit ${selectionDeclarations()};
                ${embed(4) {selectionConditions()}}

                bit ${transitionDeclarations()};
                ${embed(4) {transitionConditions()}}


                // s0_osm select 1 event. Reset all other RuleSet1
                if
                ${embed(4) {readInputEvent()}}
                :: (!$existsInputEvent) -> goto done;
                :: else -> printf("${basicType.name}: no enabled transitions");
                fi

                // RuleSet1 reset all other inputs
                do
                ${embed(4) {resetInputEvents()}}
                :: else -> break;
                od
                goto s1_osm; // RuleSet3


                s1_osm:
                $existsEnabledECTran = (
                    ${embed(5) { existEnabledTransition()}}
                );

                printf("${basicType.name}: s1_osm EEC  %d \n", $existsEnabledECTran);

                atomic {
                    if // RuleSet4: ECC transition. Conditions ordered by XML description
                    ${embed(5) { performEccTransition()}}
                    :: !$existsEnabledECTran -> goto done;
                    :: else -> printf("${basicType.name}: No input events to process\n");
                    fi;
                    ${embed(5) {resetSelectedEvent()}}
                }

                printf("${basicType.name}:s2_osm, Q=%d\n", Q);
                s2_osm:
                atomic {
                    if
                    ${embed(5) {performStateActions()}}
                    fi
                }

                goto s1_osm;


              done: // RuleSet10
                $beta!true;
                goto wait_events;
            }
        """.trimIndent()
    }

    private fun TemplateEmbedder.performStateActions() {
        for (state in basicType.ecc.states) {
            addLine(":: (Q == ${mapEccState(state, basicType)}) ->")
            increaseIndent()
            if (state.actions.isEmpty()) {
                addLine("skip;")
                decreaseIndent()
                continue
            }
            for (action in state.actions) {
                val hasAlgo = action.algorithm.getTarget() != null
                val hasEvent = action.event.getTarget() != null
                action.algorithm.getTarget()?.let { algo ->
                    addLine(translateSTAlgo(algo, currentIndent , nameMappings))
                }
                action.event.getTarget()?.portTarget?.let { event ->
                    addLine("//emit event")
                    for (association in event.associations) {
                        association.parameterReference.getTarget()?.let { param ->
                            addLine("reset(${mapOutputParameter(param, nameMappings)});")
                        }
                    }
                    addLine("reset(${mapOutputEvent(event, nameMappings)});")

                    for (association in event.associations) {
                        association.parameterReference.getTarget()?.let { param ->
                            addLine("${mapOutputParameter(param, nameMappings)}!${mapVarName(param.name)};")
                        }
                    }
                    addLine("${mapOutputEvent(event,nameMappings)}!true;")
                }
                if (!hasEvent && !hasAlgo) {
                    addLine("skip;")
                }
            }
            decreaseIndent()
        }
    }

    private fun TemplateEmbedder.resetSelectedEvent() {
        basicType.inputEvents.forEach {
            addLine(mapSelectionVariable(it, nameMappings) + " = 0;")
        }
    }

    private fun TemplateEmbedder.performEccTransition() {
        for (transition in basicType.ecc.transitions) {
            val cond = getTransitionCondition(transition)
            val target = mapEccState( transition.targetReference.getTarget()!!, basicType)
            addLine(":: ($cond) -> Q = $target;")
        }
    }

    private fun TemplateEmbedder.existEnabledTransition() {

        basicType.ecc.transitions.forEachIndexed { index, it ->
            val join = if (index != 0) {
                "|| "
            } else ""

            addLine(join + "(" + getTransitionCondition(it) + ")")
        }
    }

    private fun getTransitionCondition(transition: StateTransition): String {
        val currentState = transition.sourceReference.getTarget()
            ?: throw GenerationException("${basicType.name}: Transition has null source reference: $transition, ${mapTransitionName(transition)}")

        return "Q == ${mapEccState(currentState, basicType)} && ${mapTransitionName(transition)}"
    }

    private fun TemplateEmbedder.resetInputEvents(){
        for (inputEvent in basicType.inputEvents) {
            val ieName = mapInputEvent(inputEvent, nameMappings)
            addLine(":: atomic { nempty($ieName) -> $ieName?true;}")
        }
    }

    private fun TemplateEmbedder.readInputEvent() {
        for (inputEvent in basicType.inputEvents) {
            addLine(":: atomic { ${mapSelectionVariable(inputEvent, nameMappings)} ->")
            indent {
                addLine("${mapInputEvent(inputEvent, nameMappings)}?true;")
            }
            addLine("}")
        }
    }

    private fun selectionDeclarations(): String {
        return basicType.inputEvents.joinToString { mapSelectionVariable(it, nameMappings) }
    }

    private fun TemplateEmbedder.selectionConditions() {
        var prevCondition: String? = null
        for (inputEvent in basicType.inputEvents) {
            val selectionVar = mapSelectionVariable(inputEvent, nameMappings)
            var statesString = getStatesDependentOnEvent(inputEvent)
                .joinToString(separator = " && ") { state ->
                    "Q == " + mapEccState(state, basicType)
                }
            if (statesString.isEmpty()) {
                statesString = "false"
            }
            addLine("$selectionVar = ${prevCondition ?: ""}nempty(${mapInputEvent(inputEvent, nameMappings)}) && $statesString;")
            prevCondition = "!$selectionVar && "
        }
    }

    private fun getStatesDependentOnEvent(event: EventDeclaration): List<StateDeclaration> {
        val result = mutableListOf<StateDeclaration>()

        for (transition in basicType.ecc.transitions) {
            if (transition.condition.eventReference.getTarget()?.portTarget == event) {
                transition.sourceReference.getTarget()?.let { result.add(it) }
            }
        }
        return result
    }

    private fun TemplateEmbedder.transitionConditions() {
        for (transition in basicType.ecc.transitions) {
            var condition = ""
            transition.condition.eventReference.getTarget()?.let {
                condition += mapSelectionVariable(it.portTarget, nameMappings)
            }
            transition.condition.getGuardCondition()?.let {
                if (condition.isNotEmpty()) condition += " && "
                condition += mapExpression(it)
            }
            if (condition.isEmpty()) {
                condition = "1"
            }
            addLine(mapTransitionName(transition) + " = $condition;")
        }
    }

    private fun transitionDeclarations(): String {
        return basicType.ecc.transitions.joinToString { mapTransitionName(it) }
    }

    private fun TemplateEmbedder.readInputBuffers() {
        if (basicType.inputParameters.isEmpty()) {
            addLine("// No input vars to read")
            return
        }

        addLine("atomic {")
        indent {
            addLine("do")
            for (inputParameter in basicType.inputParameters) {
                val paramName = mapInputParameter(inputParameter, nameMappings)
                val bufferName = mapVarName(inputParameter.name)
                addLine(":: nempty($paramName) -> $paramName?$bufferName;")
            }
            val allEmptyCheck = basicType.inputParameters.joinToString(separator = " && ") {
                "empty(${mapInputParameter(it, nameMappings)})"
            }
            addLine(":: $allEmptyCheck -> break;")
            addLine("od")
        }
        addLine("}")
    }

    private fun TemplateEmbedder.internalVarDeclarations() {
        if (basicType.internalVariables.isEmpty()) return addLine("// No internal vars")
        for (parameter in basicType.internalVariables) {
            addLine(initializeParameter(parameter))
        }
    }

    companion object Vars {
        const val existsEnabledECTran = "ExistsEnabledECTran"
    }
}