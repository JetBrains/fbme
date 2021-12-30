package org.fbme.formalfb.generation.spin

import com.intellij.util.containers.BidirectionalMap
import org.fbme.formalfb.generation.TemplateEmbedder
import org.fbme.lib.iec61499.declarations.FBTypeDeclaration
import org.fbme.lib.iec61499.declarations.ParameterDeclaration

abstract class BlockGeneratorBase(val blockType: FBTypeDeclaration) : BlockGenerator {
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

    companion object Vars {
        const val existsInputEvent = "ExistsInputEvent"
        const val omega = "omega"
        const val alpha = "alpha"
        const val beta = "beta"
    }

}