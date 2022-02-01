package org.fbme.formalfb.generation.spin

import com.intellij.util.containers.BidirectionalMap
import org.fbme.formalfb.generation.TemplateEmbedder
import org.fbme.lib.iec61499.declarations.EventDeclaration
import org.fbme.lib.iec61499.declarations.FBTypeDeclaration
import org.fbme.lib.iec61499.declarations.ParameterDeclaration
import org.fbme.lib.iec61499.fbnetwork.FunctionBlockDeclaration

abstract class GeneratorBase(val blockType: FBTypeDeclaration) : BlockGenerator {
    internal val nameMappings = BidirectionalMap<String, String>()

    fun parameterDeclarations(): String {
        val declarations = mutableListOf<String>()
        declarations.addAll(blockType.inputEvents.map { mapInputEvent(it, nameMappings) })
        declarations.addAll(blockType.outputEvents.map { mapOutputEvent(it, nameMappings) })
        declarations.addAll(blockType.inputParameters.map { mapInputParameter(it, nameMappings) })
        declarations.addAll(blockType.outputParameters.map { mapOutputParameter(it, nameMappings) })
        return declarations.joinToString() + ","
    }

    fun TemplateEmbedder.bufferDeclarations() {
        for (parameter in blockType.inputParameters) {
            addLine(initializeParameter(parameter))
        }
        for (param in blockType.outputParameters) {
            addLine(initializeParameter(param))
        }
    }

    fun TemplateEmbedder.createFBChannelDeclarations(fbType: FBTypeDeclaration, fbName: String) {
        fbType.inputEvents.forEach {
            val name = mapInputEvent(it, nameMappings, fbName)
            addLine(initChannel(name, 1, "bit"))
        }
        fbType.outputEvents.forEach {
            val name = mapOutputEvent(it, nameMappings, fbName)
            addLine(initChannel(name, 1, "bit"))
        }
        fbType.inputParameters.forEach {
            val name = mapInputParameter(it, nameMappings, fbName)
            val type = map2SpinType(it.type!!)
            addLine(initChannel(name, 1, type))
        }
        fbType.outputParameters.forEach {
            val name = mapOutputParameter(it, nameMappings, fbName)
            val type = map2SpinType(it.type!!)
            addLine(initChannel(name, 1, type))
            addLine("$type ${componentOutputBuffer(fbName, it)};")
        }
        addLine(initChannel(fbName.alphaChannel(), 0, "bit"))
        addLine(initChannel(fbName.betaChannel(), 0, "bit"))
        addLine("")
    }

    internal fun TemplateEmbedder.runFB(type: FBTypeDeclaration, fbName: String) {
        val parameterList = mutableListOf<String>()
        type.inputEvents.map { mapInputEvent(it, nameMappings, fbName) }
            .forEach { parameterList.add(it) }
        type.outputEvents.map { mapOutputEvent(it, nameMappings, fbName) }
            .forEach { parameterList.add(it) }
        type.inputParameters.map { mapInputParameter(it, nameMappings, fbName) }
            .forEach { parameterList.add(it) }
        type.outputParameters.map { mapOutputParameter(it, nameMappings, fbName) }
            .forEach { parameterList.add(it) }
        parameterList.add(fbName.alphaChannel())
        parameterList.add(fbName.betaChannel())
        addLine("run ${type.name}(${parameterList.joinToString()});")
    }


    internal fun initChannel(name: String, dimension: Int, type: String): String {
        return "chan $name = [$dimension] of {$type};"
    }

    internal fun componentOutputBuffer(fb: FunctionBlockDeclaration, it: ParameterDeclaration)
            = componentOutputBuffer(fb.name, it)

    internal fun componentOutputBuffer(fbName: String, it: ParameterDeclaration)
            = "buf_${fbName}_${it.name}"

    fun initializeParameter(parameter: ParameterDeclaration): String {
        val type = map2SpinType(parameter.type!!)
        val initialValue = map2SpinInitialVal(type, parameter.initialValue)
        val name = mapVarName(parameter.name)
        return "$type $name = $initialValue;"
    }

    fun checkInputEvents(): String {
        return blockType.inputEvents.joinToString (separator = " || ") { ie ->
            "nempty(${mapInputEvent(ie, nameMappings)})"
        }
    }

    internal fun mapComponentOutputParameter(
        fb: FunctionBlockDeclaration,
        it: ParameterDeclaration
    ) = mapOutputParameter(it, nameMappings, fb.name)

    internal fun mapComponentInputParameter(
        fb: FunctionBlockDeclaration,
        it: ParameterDeclaration
    ) = mapInputParameter(it, nameMappings, fb.name)

    internal fun mapComponentOutputEvent(
        fb: FunctionBlockDeclaration,
        it: EventDeclaration
    ) = mapOutputEvent(it, nameMappings, fb.name)

    internal fun mapComponentInputEvent(
        fb: FunctionBlockDeclaration,
        it: EventDeclaration
    ) = mapInputEvent(it, nameMappings, fb.name)

    companion object Vars {
        const val existsInputEvent = "ExistsInputEvent"
        const val omega = "omega"
        const val alpha = "alpha"
        const val beta = "beta"
    }

}

internal fun FunctionBlockDeclaration.alphaChannel() = name.alphaChannel()
internal fun FunctionBlockDeclaration.betaChannel() = name.betaChannel()
internal fun String.alphaChannel() = "${this}_alpha"
internal fun String.betaChannel() = "${this}_beta"