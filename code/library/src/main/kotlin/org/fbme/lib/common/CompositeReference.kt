package org.fbme.lib.common

interface CompositeReference<DeclarationPathT : DeclarationPath> {
    fun getTarget(): DeclarationPathT?
    fun getPath(): List<Identifier>
    val presentation: String
    fun setPath(path: List<Identifier>)
    fun setTarget(target: DeclarationPathT) {
        setPath(target.declarations.map { obj: Declaration -> obj.identifier })
    }

    fun setTargetNames(names: List<String>) {
        setPath(names.map { value -> StringIdentifier(value) })
    }

    fun setFQName(fqName: String) {
        setTargetNames(listOf(*fqName.split(".").toTypedArray()))
    }
}
