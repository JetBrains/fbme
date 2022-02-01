package org.fbme.formalfb.generation.spin

import org.fbme.formalfb.generation.embed
import org.fbme.formalfb.generation.embedMultiLineString
import org.fbme.lib.iec61499.declarations.BasicFBTypeDeclaration
import org.fbme.lib.iec61499.declarations.CompositeFBTypeDeclaration
import org.fbme.lib.iec61499.declarations.FBTypeDeclaration
import org.fbme.lib.iec61499.declarations.ServiceInterfaceFBTypeDeclaration

class SpinGenerator(private val rootFB: CompositeFBTypeDeclaration) : GeneratorBase(rootFB) {

    private val builder = StringBuilder()
    private val typeGenerators = mutableMapOf<String, BlockGenerator>()

    override fun generate(): String {
        builder.clear()
        collectTypes(rootFB)

        val blocksCode = typeGenerators.values.joinToString(separator = "\n\n") { it.generate() }
        val code = """
            ${embedMultiLineString(3, HEADER)}
            
            ${embedMultiLineString(3, blocksCode)}
            
            init {
                ${embed(4){ createFBChannelDeclarations(rootFB, "root") }}
                atomic {
                    ${embed(5) {runFB(rootFB, "root")}}
                } 
                
              dispatch:
                alpha!true;
                beta?true;
            }
        """.trimIndent()
        return code
    }


    fun collectTypes(fbType: FBTypeDeclaration) {
        val typeName = fbType.typeDescriptor.typeName
        if (typeGenerators.contains(typeName)) return

        when (fbType) {
            is CompositeFBTypeDeclaration -> {
                val cfbGen = CompositeBlockGenerator(fbType)
                typeGenerators[typeName] = cfbGen
                fbType.network.functionBlocks.forEach { fb ->
                    fb.typeReference.getTarget()?.let { target -> collectTypes(target) }
                }
            }
            is BasicFBTypeDeclaration -> {
                val bfbGen = BasicBlockGenerator(fbType)
                typeGenerators[typeName] = bfbGen
            }
            is ServiceInterfaceFBTypeDeclaration -> {
                //todo : generate
            }
        }
    }

}

val HEADER = """
#define reset(ch) d_step { do :: ch?_; :: empty(ch) -> break; od; skip }
#define reset3(ch) d_step { do :: ch?_,_,_; :: empty(ch) -> break; od; skip }

""".trimIndent()

// todo: save name mappings while generating code