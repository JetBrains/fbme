package org.fbme.ide.iec61499.repository

import jetbrains.mps.project.Project
import org.fbme.lib.iec61499.DeclarationsScope
import org.jetbrains.mps.openapi.model.SModel

class PlatformRepository(val project: Project) : PlatformElementsOwner() {
    val declarationsScope: DeclarationsScope
        get() = PlatformDeclarationsScope(this, null)

    fun getDeclarationScopeFor(model: SModel?): DeclarationsScope {
        return PlatformDeclarationsScope(this, model)
    }
}