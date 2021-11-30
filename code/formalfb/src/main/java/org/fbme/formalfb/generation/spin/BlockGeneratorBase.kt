package org.fbme.formalfb.generation.spin

import com.intellij.util.containers.BidirectionalMap
import org.fbme.lib.iec61499.declarations.FBTypeDeclaration

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

}