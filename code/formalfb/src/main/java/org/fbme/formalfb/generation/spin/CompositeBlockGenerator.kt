package org.fbme.formalfb.generation.spin

import org.fbme.formalfb.generation.TemplateEmbedder
import org.fbme.formalfb.generation.embed
import org.fbme.lib.common.Declaration
import org.fbme.lib.iec61499.declarations.CompositeFBTypeDeclaration
import org.fbme.lib.iec61499.declarations.EventDeclaration
import org.fbme.lib.iec61499.declarations.ParameterDeclaration
import org.fbme.lib.iec61499.fbnetwork.FBNetworkConnection
import org.fbme.lib.iec61499.fbnetwork.FunctionBlockDeclaration
import org.fbme.lib.iec61499.fbnetwork.FunctionBlockDeclarationBase

class CompositeBlockGenerator(val compositeType: CompositeFBTypeDeclaration): GeneratorBase(compositeType) {

    override fun generate(): String {
        val dispatchStates = compositeType.network.functionBlocks
            .joinToString(prefix = "{", postfix = ", ${doneDispatchState(compositeType)}}") {
            mapDispatchState(it, compositeType)
        }
        val firstState =
            if (compositeType.network.functionBlocks.isEmpty()) doneDispatchState(compositeType)
            else mapDispatchState(compositeType.network.functionBlocks.first(), compositeType)

        val dispatchAlias = "${compositeType.name}_dispatch"
        val dispatchStatesDeclarartion = "mtype:$dispatchAlias = $dispatchStates;"
        val code = """
            $dispatchStatesDeclarartion
            proctype ${blockType.name}(chan
                ${parameterDeclarations()}
                alpha, beta
                ) {
                bit $existsInputEvent = 0;
                mtype:$dispatchAlias dispatch_state = $firstState;
                bit $omega;
                
                ${embed(4) {bufferDeclarations()} }
                
                ${embed(4) {componentChannelsDeclarations()}}
                
                atomic {
                    ${embed(5) {runChildren()}}
                }
                
              wait_events:
                end:
                $alpha?true;
                dispatch_state = $firstState;
                
              read_input_events:
                $existsInputEvent = ${checkInputEvents()};
                
                if
                ${embed(4) {readInputEvents()}}
                :: (!$existsInputEvent) -> skip;
                fi
                
              dispatch:
                if
                ${embed(4) {dispatch()}}
                :: dispatch_state == ${doneDispatchState(compositeType)} -> skip;
                fi
                
                goto read_component_event_outputs;
              
              read_component_event_outputs:
                atomic {
                    $omega = ${computeOmega()};
                    
                    if
                    ${embed(5) {readComponentEventOutputs()}}
                    :: ($omega && dispatch_state == ${doneDispatchState(compositeType)}) -> goto done;
                    :: ($omega && dispatch_state != ${doneDispatchState(compositeType)}) -> goto dispatch;
                    fi
                }
                goto read_component_event_outputs;
                
              done:
                atomic {
                    $beta!true;
                    // phi var
                }
                goto wait_events;
                
            }
        """.trimIndent()
        return code
    }

    private fun computeOmega(): String {
        val events = mutableListOf<String>()
        compositeType.network.functionBlocks.forEach { fb ->
            fb.typeReference.getTarget()!!.outputEvents.forEach { ev ->
                events.add(mapComponentOutputEvent(fb, ev))
            }
        }
        return events.joinToString (separator = " && ") { "empty($it)" }
    }


    private fun TemplateEmbedder.readComponentEventOutputs() {
        val events = mutableListOf<Pair<FunctionBlockDeclaration, EventDeclaration>>()
        compositeType.network.functionBlocks.forEach { fb ->
            fb.typeReference.getTarget()!!.outputEvents.forEach { ev ->
                events.add(Pair(fb, ev))
            }
        }

        for ((fb, event) in events) {
            val eventRef = mapComponentOutputEvent(fb, event)

            addLine(":: nempty($eventRef) ->")
            indent {
                readEventWithParams(fb, event)
                broadcastEvent(fb, event)
                broadcastParams(fb, event)
                addLine("")
            }
        }
    }

    private fun TemplateEmbedder.broadcastEvent(
        fb: FunctionBlockDeclaration,
        event: EventDeclaration
    ) {
        event.connections(fb).forEach { connection ->
            val target = connection.targetReference.getTarget()!!
            if (target.functionBlock != null) {
                sendEventWithParams(target.functionBlock!!, target.portTarget)
            } else {
                val eventReference =
                    mapOutputEvent(compositeType.outputEvents.find { it == target.portTarget }!!, nameMappings)
                addLine("reset($eventReference);")
                addLine("$eventReference!true;")
            }
        }
    }


    private fun TemplateEmbedder.dispatch() {
        val blocks = compositeType.network.functionBlocks
        for ((index, fb) in blocks.withIndex()) {
            val state = mapDispatchState(fb, compositeType)
            val nextState = if (index + 1 == blocks.size) {
                doneDispatchState(compositeType)
            } else {
                mapDispatchState(blocks[index + 1], compositeType)
            }

            addLine(":: atomic { dispatch_state == $state ->")
            indent {
                addLine(fb.alphaChannel() + "!true;")
                addLine(fb.betaChannel() + "?true;")
                addLine("dispatch_state = $nextState;")
            }
            addLine("}")
        }
    }


    private fun TemplateEmbedder.readInputEvents() {
        for (inputEvent in blockType.inputEvents) {
            addLine(":: d_step { nempty(${mapInputEvent(inputEvent, nameMappings)}) ->")
            indent {
                inputEvent.connections().forEach { conn ->
                    val fb = conn.targetReference.getTarget()!!.functionBlock!!
                    val port = conn.targetReference.getTarget()!!.portTarget
                    sendEventWithParams(fb, port)
                }
                addLine("${mapInputEvent(inputEvent, nameMappings)}?true;")
            }
            addLine("}")
        }
    }

    private fun TemplateEmbedder.broadcastParams(fb: FunctionBlockDeclaration, event: EventDeclaration) {
        val params = event.associations.map { association ->
            association.parameterReference.getTarget()!!
        }

        params.forEach { param ->
            val bufferRef = componentOutputBuffer(fb, param)
            param.connections(fb).forEach { connection ->
                val target = connection.targetReference.getTarget()!!
                val targetFB = (target.functionBlock as? FunctionBlockDeclaration)
                if (targetFB == null) {
                    blockType.outputParameters
                        .find { it.identifier == target.portTarget.identifier }
                        ?.let { outParam ->
                            val paramRef = mapOutputParameter(outParam, nameMappings)
                            addLine("reset($paramRef);")
                            addLine("$paramRef!$bufferRef;")
                        }
                } else {
                    val paramRef = mapComponentInputParameter(targetFB, target.portTarget as ParameterDeclaration)
                    addLine("reset($paramRef);")
                    addLine("$paramRef!$bufferRef;")
                }
            }
        }
    }

    private fun TemplateEmbedder.readEventWithParams(fb: FunctionBlockDeclaration, event: EventDeclaration) {
        val vars = event.associations.map { association ->
            association.parameterReference.getTarget()!!
        }

        val eventReference = mapComponentOutputEvent(fb, event)
        addLine("$eventReference?true;")

        vars.forEach { param ->
            val paramReference = mapComponentOutputParameter(fb, param)
            addLine(paramReference + "?" + componentOutputBuffer(fb, param) + ";")
        }
    }

    private fun TemplateEmbedder.sendEventWithParams(fb: FunctionBlockDeclarationBase, port: Declaration) {
        val fbType = (fb as FunctionBlockDeclaration).typeReference.getTarget()!!
        val input = fbType.inputEvents.first { it == port }
        val vars = input.associations.map { association ->
            association.parameterReference.getTarget()
        }.mapNotNull { inputVar ->
            fb.parameters.find { param -> param.parameterReference.getTarget() == inputVar }
        }

        val eventReference = mapComponentInputEvent(fb, input)
        addLine("reset($eventReference);")
        addLine("$eventReference!true;")

        vars.forEach {
            val paramReference = mapComponentInputParameter(fb, it.parameterReference.getTarget()!!)
            addLine("reset($paramReference);")
            addLine(paramReference + "!" + it.value!!.value + ";")
        }
    }


    private fun EventDeclaration.connections(fb: FunctionBlockDeclaration? = null): List<FBNetworkConnection> = compositeType.network.eventConnections.filter {
        val source = it.sourceReference.getTarget()
        source?.portTarget?.identifier == identifier && source.functionBlock == fb
    }

    private fun ParameterDeclaration.connections(fb: FunctionBlockDeclaration? = null): List<FBNetworkConnection> = compositeType.network.dataConnections.filter {
        val source = it.sourceReference.getTarget()
        source?.portTarget?.identifier == identifier && source.functionBlock == fb
    }

    private fun TemplateEmbedder.runChildren() {
        compositeType.network.functionBlocks.forEach { fb ->
            runFB(fb.typeReference.getTarget()!!, fb.name)
        }
    }

    private fun TemplateEmbedder.componentChannelsDeclarations() {
        compositeType.network.functionBlocks.forEach { fb ->
            createFBChannelDeclarations(fb.typeReference.getTarget()!!, fb.name)
        }
    }


    private fun doneDispatchState(compositeType: CompositeFBTypeDeclaration): String {
        return "DONE" + "_turn_" + compositeType.name
    }

    private fun mapDispatchState(it: FunctionBlockDeclaration, compositeType: CompositeFBTypeDeclaration): String {
        return it.name + "_turn_" + compositeType.name
    }
}