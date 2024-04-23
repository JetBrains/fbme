package org.fbme.ide.platform.library.util

import jetbrains.mps.extapi.module.ModuleFacetBase
import org.fbme.ide.iec61499.repository.PlatformElement
import org.fbme.ide.iec61499.repository.PlatformElementsOwner
import org.fbme.ide.platform.converter.PlatformConverter
import org.jdom.Document
import org.jetbrains.mps.openapi.model.SModelReference
import org.jetbrains.mps.openapi.model.SNode
import org.jetbrains.mps.openapi.module.SModule
import org.jetbrains.mps.openapi.persistence.Memento

class LibraryFacet(module: SModule) : ModuleFacetBase(FACET_TYPE, module) {
    companion object {
        private const val FACET_TYPE = "library"
        private const val NAMESPACES_KEY = "namespaces"
        private const val GENERATED_KEY = "generated"
        private const val PATH_KEY = "path"
    }

    private val namespaces: HashMap<SNode, String> = HashMap()

    /**
     * Adds a new namespace to the namespaces map.
     *
     * @param node The SNode to be added.
     * @param namespace The namespace represented by a String.
     */
    fun addNamespace(node: SNode, namespace: String) {
        namespaces[node] = namespace
    }

    /**
     * Removes a namespace from the namespaces map.
     *
     * @param node The SNode to be removed.
     */
    fun removeNamespace(node: SNode) {
        namespaces.remove(node)
    }

    /**
     * Returns the namespace of a specific SNode.
     *
     * @param node The SNode whose namespace is to be retrieved.
     * @return The namespace of the SNode.
     */
    fun getNamespace(node: SNode): String? {
        return namespaces[node]
    }

    /**
     * Returns all the namespaces stored in the namespaces map.
     *
     * @return A map of all namespaces.
     */
    fun getAllNamespaces(): Map<SNode, String> {
        return namespaces
    }

    /**
     * Save the current state of the namespaces map to a Memento object.
     *
     * @param memento The Memento object to save to.
     */
    override fun save(memento: Memento) {
        memento.clear()
        namespaces.forEach { (node, namespace) ->
            val child = memento.createChild(NAMESPACES_KEY)
            child.put(GENERATED_KEY, node.nodeId.toString())
            child.put(PATH_KEY, namespace)
        }
    }

    /**
     * Load the state of the namespaces map from a Memento object.
     *
     * @param memento The Memento object to load from.
     */
    override fun load(memento: Memento) {
        namespaces.clear()
        memento.getChildren(NAMESPACES_KEY).forEach { child ->
            val nodeId = child.get(GENERATED_KEY)
            val namespace = child.get(PATH_KEY)
            if (nodeId != null && namespace != null) {
                val node =
                    namespaces[node] = namespace
            }
        }
    }

    /**
     * Converts an SNode to a PlatformElement.
     *
     * @param node The SNode to be converted.
     * @param reference The SModelReference for the model that the SNode belongs to.
     * @param doc The Document that represents the XML structure of the SNode.
     * @return The converted PlatformElement.
     */
    fun convertSNodeToPlatformElement(node: SNode, reference: SModelReference, doc: Document): PlatformElement {
        val owner = PlatformElementsOwner()
        val configuration = PlatformConverter.STANDARD_CONFIG_FACTORY.createConfiguration(owner)
        val converter = PlatformConverter.create(configuration, reference, doc)
        return converter.convert(node) as PlatformElement
    }

}
