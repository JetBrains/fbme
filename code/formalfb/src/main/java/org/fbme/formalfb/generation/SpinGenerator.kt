package org.fbme.formalfb.generation

import jetbrains.mps.project.MPSProject
import org.fbme.formalfb.dsl.spin.spinFile
import org.fbme.lib.iec61499.declarations.CompositeFBTypeDeclaration

class SpinGenerator() : Generator {

    override fun generate(compositeFB: CompositeFBTypeDeclaration): String {
        val result = StringBuilder()
        for (fb in compositeFB.network.functionBlocks) {
            result.append(fb.name)
            fb.typeReference.getTarget()?.let { target ->
                result.append(":${target.name}\n")
            }
        }

        val file = spinFile {
        }
        file.render(result, "")
        return result.toString()
    }
}