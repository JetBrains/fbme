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

class CompositeBlockGenerator(val compositeType: CompositeFBTypeDeclaration): BlockGeneratorBase(compositeType) {

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
                
                ${embed(4) {blockChannelsDeclarations()}}
                
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
            }
        """.trimIndent()
        return code
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

    private fun sendEventWithParams(fb: FunctionBlockDeclarationBase, port: Declaration) {
//        mapBasicInputParameter(fb, port)
    }

    private fun EventDeclaration.connections(): List<FBNetworkConnection> = compositeType.network.eventConnections.filter {
        it.sourceReference.getTarget()?.portTarget?.name == name
    }

    private fun TemplateEmbedder.runChildren() {
        compositeType.network.functionBlocks.forEach { fb ->
            val parameterList = mutableListOf<String>()
            val type = fb.typeReference.getTarget()!!
            type.inputEvents.map { mapBasicInputEvent(fb, it) }
                .forEach { parameterList.add(it) }
            type.outputEvents.map { mapBasicOutputEvent(fb, it) }
                .forEach { parameterList.add(it) }
            type.inputParameters.map { mapBasicInputParameter(fb, it) }
                .forEach { parameterList.add(it) }
            type.outputParameters.map { mapBasicOutputParameter(fb, it) }
                .forEach { parameterList.add(it) }
            parameterList.add(fb.alphaChannel())
            parameterList.add(fb.betaChannel())
            addLine("run ${type.name}(${parameterList.joinToString()});")
        }
    }

    private fun TemplateEmbedder.blockChannelsDeclarations() {
        compositeType.network.functionBlocks.forEach { fb ->
            val fbType = fb.typeReference.getTarget()!!
            fbType.inputEvents.forEach {
                val name = mapBasicInputEvent(fb, it)
                addLine(initChannel(name, 1, "bit"))
            }
            fbType.outputEvents.forEach {
                val name = mapBasicOutputEvent(fb, it)
                addLine(initChannel(name, 1, "bit"))
            }
            fbType.inputParameters.forEach {
                val name = mapBasicInputParameter(fb, it)
                val type = map2SpinType(it.type!!)
                addLine(initChannel(name, 1, type))
            }
            fbType.outputParameters.forEach {
                val name = mapBasicOutputParameter(fb, it)
                val type = map2SpinType(it.type!!)
                addLine(initChannel(name, 1, type))
                addLine("$type ${basicOutputBuffer(fb, it)};")
            }
            addLine(initChannel(fb.alphaChannel(), 0, "bit"))
            addLine(initChannel(fb.betaChannel(), 0, "bit"))
            addLine("")
        }
    }

    private fun mapBasicOutputParameter(
        fb: FunctionBlockDeclaration,
        it: ParameterDeclaration
    ) = mapDeclaration("${fb.name}_VO", it, nameMappings)

    private fun basicOutputBuffer(fb: FunctionBlockDeclaration, it: ParameterDeclaration)
    = "buf_${fb.name}_${it.name}"

    private fun mapBasicInputParameter(
        fb: FunctionBlockDeclaration,
        it: Declaration
    ) = mapDeclaration("${fb.name}_VI", it, nameMappings)

    private fun mapBasicOutputEvent(
        fb: FunctionBlockDeclaration,
        it: EventDeclaration
    ) = mapDeclaration("${fb.name}_EO", it, nameMappings)

    private fun mapBasicInputEvent(
        fb: FunctionBlockDeclaration,
        it: EventDeclaration
    ) = mapDeclaration("${fb.name}_EI", it, nameMappings)

    private fun initChannel(name: String, dimension: Int, type: String): String {
        return "chan $name = [$dimension] of {$type};"
    }

    private fun doneDispatchState(compositeType: CompositeFBTypeDeclaration): String {
        return "DONE" + "_turn_" + compositeType.name
    }

    private fun mapDispatchState(it: FunctionBlockDeclaration, compositeType: CompositeFBTypeDeclaration): String {
        return it.name + "_turn_" + compositeType.name
    }
}

private fun FunctionBlockDeclaration.alphaChannel() = "${name}_alpha"
private fun FunctionBlockDeclaration.betaChannel() = "${name}_beta"