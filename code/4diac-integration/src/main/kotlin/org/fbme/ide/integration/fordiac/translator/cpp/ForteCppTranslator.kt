package org.fbme.ide.integration.fordiac.translator.cpp

import org.fbme.ide.integration.fordiac.translator.cpp.adapter.AdapterFBTypeHeaderTranslator
import org.fbme.ide.integration.fordiac.translator.cpp.adapter.AdapterFBTypeImplTranslator
import org.fbme.ide.integration.fordiac.translator.cpp.basic.BasicFBTypeHeaderTranslator
import org.fbme.ide.integration.fordiac.translator.cpp.basic.BasicFBTypeImplTranslator
import org.fbme.ide.integration.fordiac.translator.cpp.composite.CompositeFBTypeHeaderTranslator
import org.fbme.ide.integration.fordiac.translator.cpp.composite.CompositeFBTypeImplTranslator
import org.fbme.ide.integration.fordiac.translator.cpp.service.ServiceInterfaceFBTypeHeaderTranslator
import org.fbme.ide.integration.fordiac.translator.cpp.service.ServiceInterfaceFBTypeImplTranslator
import org.fbme.lib.iec61499.declarations.*

/**
 * The {@code ForteLuaTranslator} object provides functionality to translate
 * FB (Function Block) interface declarations into C++ code.
 */
object ForteCppTranslator {

    /**
     * Translates the given FB interface declaration into C++ code.
     *
     * @param fb The Function Block interface declaration to be translated.
     * @return The C++ code representing the translated FB interface.
     * @throws UnsupportedOperationException if the provided FB type is not supported.
     */
    fun translate(fb: FBInterfaceDeclaration): ForteCppTranslationResult = when (fb) {
        is AdapterTypeDeclaration -> translateFB(
            fb,
            headerTranslator = ::AdapterFBTypeHeaderTranslator,
            implTranslator = ::AdapterFBTypeImplTranslator
        )

        is BasicFBTypeDeclaration -> translateFB(
            fb,
            headerTranslator = ::BasicFBTypeHeaderTranslator,
            implTranslator = ::BasicFBTypeImplTranslator
        )

        is CompositeFBTypeDeclaration -> translateFB(
            fb,
            headerTranslator = ::CompositeFBTypeHeaderTranslator,
            implTranslator = ::CompositeFBTypeImplTranslator
        )

        is ServiceInterfaceFBTypeDeclaration -> translateFB(
            fb,
            headerTranslator = ::ServiceInterfaceFBTypeHeaderTranslator,
            implTranslator = ::ServiceInterfaceFBTypeImplTranslator
        )

        else -> throw UnsupportedOperationException("Unknown function block type: '${fb.name}'.")
    }

    private inline fun <T : FBInterfaceDeclaration> translateFB(
        fb: T,
        headerTranslator: (T) -> AbstractTranslator,
        implTranslator: (T) -> AbstractTranslator
    ): ForteCppTranslationResult {
        val header = headerTranslator(fb).translate()
        val implementation = implTranslator(fb).translate()
        return ForteCppTranslationResult(header, implementation)
    }
}

data class ForteCppTranslationResult(val header: String, val implementation: String)
