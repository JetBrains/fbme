package org.fbme.extensions.adapter

import org.fbme.lib.iec61499.declarations.SystemDeclaration
import org.fbme.lib.iec61499.declarations.extention.ExtendedAdapterTypeDeclaration
import org.jetbrains.mps.openapi.model.SModel

interface AdapterRevealApi {
    fun revealAdapter(
        extendedAdapter: ExtendedAdapterTypeDeclaration,
        currentModel: SModel,
        removeAdapter: Boolean = true,
    ): RevealDeclarationsResult

    fun revealAllAdapters(currentModel: SModel)

    fun syncApplicationResources(
        systemDeclaration: SystemDeclaration,
        model: SModel,
    )
}