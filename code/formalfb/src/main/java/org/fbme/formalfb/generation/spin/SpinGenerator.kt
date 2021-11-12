package org.fbme.formalfb.generation.spin

import com.intellij.util.containers.BidirectionalMap
import org.fbme.formalfb.dsl.spin.spinFile
import org.fbme.formalfb.generation.Generator
import org.fbme.lib.iec61499.declarations.BasicFBTypeDeclaration
import org.fbme.lib.iec61499.declarations.CompositeFBTypeDeclaration
import org.fbme.lib.iec61499.declarations.FBTypeDeclaration
import org.fbme.lib.iec61499.declarations.ServiceInterfaceFBTypeDeclaration

class SpinGenerator() : Generator {

    private val builder = StringBuilder()
    private val nameMappings = BidirectionalMap<String, String>()
    private val typeGenerators = mutableMapOf<String, BlockGenerator>()

    override fun generate(compositeFB: CompositeFBTypeDeclaration): String {
        builder.clear()
        val nameSpace = compositeFB.name
        collectTypes(compositeFB)


        val blocksCode = typeGenerators.values.map { it.generate() }.joinToString(separator = "\n")

        builder.append(blocksCode)
        val file = spinFile {
        }
        file.render(builder, "")
        return builder.toString()
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

// todo: save name mappings while generating code