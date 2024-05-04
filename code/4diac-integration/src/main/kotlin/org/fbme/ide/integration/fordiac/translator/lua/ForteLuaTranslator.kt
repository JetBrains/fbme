package org.fbme.ide.integration.fordiac.translator.lua

import org.fbme.lib.iec61499.declarations.*

/**
 * The {@code ForteLuaTranslator} object provides functionality to translate
 * FB (Function Block) interface declarations into Lua code.
 */
object ForteLuaTranslator {

    /**
     * Translates the given FB interface declaration into Lua code.
     *
     * @param fb The Function Block interface declaration to be translated.
     * @return The Lua code representing the translated FB interface.
     * @throws UnsupportedOperationException if the provided FB type is not supported.
     */
    fun translate(fb: FBInterfaceDeclaration) = when (fb) {
        is AdapterTypeDeclaration -> AdapterFBTypeTranslator.translate(fb)
        is BasicFBTypeDeclaration -> BasicFBTypeTranslator.translate(fb)
        is CompositeFBTypeDeclaration -> CompositeFBTypeTranslator.translate(fb)
        else -> throw UnsupportedOperationException("Unknown function block type: '${fb.name}'.")
    }
}
