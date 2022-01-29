package org.fbme.formalfb.generation

fun embed(indent: Int, generator: TemplateEmbedder.() -> Unit): String {
    val embedder = TemplateEmbedder(indent)
    return embedder.embed(generator)
}

class TemplateEmbedder(private val initialIndent: Int) {
    var currentIndent: Int = initialIndent
    private val lines = mutableListOf<String>()

    fun embed(generator: TemplateEmbedder.() -> Unit): String {
        try {
            this.generator()
        } catch (e: Exception) {
            e.printStackTrace()
            addLine("\\\\ generation error occurred ${e.message?.replace("\n","")}")
        }
        return lines.joinToString("\n")
    }

    fun addLine(line: String) {
        val indent = if (lines.isEmpty()) {
            ""
        } else {
            indentString(currentIndent)
        }
        lines.add(indent + line)
    }

    fun indent(f: TemplateEmbedder.() -> Unit) {
        increaseIndent()
        f()
        decreaseIndent()
    }

    fun increaseIndent() {
        currentIndent++
    }
    fun decreaseIndent() {
        currentIndent--
        if (currentIndent < initialIndent) throw GenerationException("Indent decreased more than initial level")
    }
}

fun strEnd(index: Int, collectionSize: Int, indent: Int): String =
    if (index == collectionSize - 1) "" else "\n${indentString(indent)}"

fun indentString(indent: Int) = " ".repeat(indent * 4)