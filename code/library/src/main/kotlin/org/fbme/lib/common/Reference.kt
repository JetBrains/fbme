package org.fbme.lib.common

interface Reference<DeclarationT : Declaration> {
    fun getTarget(): DeclarationT?
    var identifier: Identifier
    val presentation: String
    fun setTarget(declaration: DeclarationT) {
        identifier = declaration.identifier
    }

    fun setTargetName(name: String) {
        identifier = StringIdentifier(name)
    }
}
