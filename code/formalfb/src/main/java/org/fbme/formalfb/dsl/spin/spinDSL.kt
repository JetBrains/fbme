package org.fbme.formalfb.dsl.spin


import kotlin.text.StringBuilder


@DslMarker
annotation class SpinDSLMarker

@SpinDSLMarker
interface SpinElement {
    fun render(builder: StringBuilder, indent: String)
}

abstract class SpinBlock(val type: String, val name: String? = null) : SpinElement {
    val children = arrayListOf<SpinElement>()

    override fun render(builder: StringBuilder, indent: String) {
        builder.append("$indent$type {\n")
        for (c in children) {
            c.render(builder, indent + "  ")
        }
        builder.append("$indent}\n")
    }
}

class InitBlock : SpinBlock("init") {

}

class SpinFile : SpinElement {


    var formulas: Formulas? = null

    override fun render(builder: StringBuilder, indent: String) {

        formulas?.render(builder, indent)
    }

    override fun toString(): String {
        val builder = StringBuilder()
        render(builder, "")
        return builder.toString()
    }
}

class Formulas : SpinElement {

    override fun render(builder: StringBuilder, indent: String) {

    }
}

fun spinFile(init: SpinFile.() -> Unit): SpinFile {
    val file = SpinFile()
    file.init()
    return file
}