package org.fbme.ide.richediting.adapters.fbnetwork.actions.cell

import jetbrains.mps.nodeEditor.cells.ModelAccessor
import org.fbme.lib.common.Declaration
import java.util.function.Predicate

class DeclarationNameAccessor(
        val declaration: Declaration?,
        private val validator: Predicate<String?> = Predicate { true }
) : ModelAccessor {
    override fun getText(): String = declaration?.name ?: ""

    override fun setText(text: String?) {
        declaration?.name = text ?: ""
    }

    override fun isValidText(text: String?): Boolean = validator.test(text)
}