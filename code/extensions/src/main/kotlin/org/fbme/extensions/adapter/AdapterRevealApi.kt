package org.fbme.extensions.adapter

import org.fbme.lib.iec61499.declarations.SystemDeclaration
import org.fbme.lib.iec61499.declarations.extention.ExtendedAdapterTypeDeclaration
import org.jetbrains.mps.openapi.model.SModel

interface AdapterRevealApi {
    /**
     * Reveals usages of the provided extended adapter in the provided model.
     * Generates new nodes in the same model and deletes all the extended adapters from the model.
     *
     * @param removeAdapter If true removes provided extendedAdapter after reveal
     */
    fun revealAdapter(
        extendedAdapter: ExtendedAdapterTypeDeclaration,
        model: SModel,
        removeAdapter: Boolean = true,
    ): RevealDeclarationsResult

    /**
     * Reveals inplace all extended adapters that are declared in the model.
     * Generates new nodes in the same model and removes all extended adapters from the model.
     */
    fun revealModel(model: SModel)

    /**
     * Synchronize system resources by revealing all "broken connections" from each application halfway in each resource.
     * At the end, a block of connections is added that adapts the adapter for communication using the PUBLISH/SUBSCRIBE.
     * If a port already has any connections in the resource it's connections will no be revealed.
     *
     * @param systemDeclaration Declaration to sync
     * @param model Model to generate new nodes into
     */
    fun syncApplicationResources(
        systemDeclaration: SystemDeclaration,
        model: SModel,
    )
}