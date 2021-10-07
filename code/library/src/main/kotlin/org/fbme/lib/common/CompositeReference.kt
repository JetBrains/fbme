package org.fbme.lib.common

import java.util.*
import java.util.stream.Collectors

interface CompositeReference<DeclarationPathT : DeclarationPath> {
    fun getTarget(): DeclarationPathT?
    fun getPath(): List<Identifier>
    val presentation: String
    fun setPath(path: List<Identifier>)
    fun setTarget(target: DeclarationPathT) {
        setPath(target.declarations.map { obj: Declaration -> obj.identifier })
    }

    fun setTargetNames(names: List<String>) {
        setPath(names.stream().map { value: String -> StringIdentifier(value) }
            .collect(Collectors.toList()))
    }

    fun setFQName(fqName: String) {
        setTargetNames(listOf(*fqName.split(".").toTypedArray()))
    }
}