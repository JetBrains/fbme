package org.fbme.formalfb.generation.spin

import com.intellij.util.containers.BidirectionalMap
import org.fbme.lib.iec61499.declarations.CompositeFBTypeDeclaration

class CompositeBlockGenerator(val blockType: CompositeFBTypeDeclaration): BlockGenerator {

    private val nameMappings = BidirectionalMap<String, String>()


    override fun generate(): String {
        val declarations = mutableListOf<String>()
        declarations.addAll(blockType.inputEvents.map { "EI_${it.name}" })
        declarations.addAll(blockType.outputEvents.map { "EO_${it.name}" })
        declarations.addAll(blockType.inputParameters.map { "VI_${it.name}" })
        declarations.addAll(blockType.outputParameters.map { "VO_${it.name}" })
        val declarationStr = declarations.joinToString(postfix = ", ")
        val code = """
            proctype ${blockType.name} (chan
             $declarationStr
            alpha, beta
            ) { 
            
            }
        """.trimIndent()
        return code
    }
}