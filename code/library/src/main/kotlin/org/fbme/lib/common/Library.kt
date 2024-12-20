package org.fbme.lib.common

interface Library {

    val elements: Collection<RootElement>
    val namespaces: List<String>

    fun elementsByNamespace(namespace: String): Collection<RootElement>

    fun attachElement(element: RootElement, namespace: String = "")
    fun detachElement(element: RootElement)
}
