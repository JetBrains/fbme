package org.fbme.ide.iec61499.repository

import org.fbme.lib.iec61499.DeclarationsScope
import org.jetbrains.mps.openapi.model.SModel
import org.jetbrains.mps.openapi.module.SRepository

class PlatformRepository(val mpsRepository: SRepository) : PlatformElementsOwner() {
    val declarationsScope: DeclarationsScope
        get() = PlatformDeclarationsScope(this, null)

    fun getDeclarationScopeFor(model: SModel?): DeclarationsScope {
        return PlatformDeclarationsScope(this, model)
    }
}
