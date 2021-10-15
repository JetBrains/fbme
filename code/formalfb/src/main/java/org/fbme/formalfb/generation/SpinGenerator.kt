package org.fbme.formalfb.generation

import jetbrains.mps.project.MPSProject
import org.fbme.lib.iec61499.declarations.CompositeFBTypeDeclaration

class SpinGenerator() : Generator {

    override fun generate(compositeFB: CompositeFBTypeDeclaration): String {
        val result = StringBuilder()
        for (fb in compositeFB.network.functionBlocks) {
            fb.typeReference.getTarget()?.let { target ->
                result.append(target.name).append("\n")
            }
        }
        return result.toString()
    }
}