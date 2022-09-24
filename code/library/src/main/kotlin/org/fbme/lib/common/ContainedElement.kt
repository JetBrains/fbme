package org.fbme.lib.common

interface ContainedElement : Element {
    fun remove()
    val role: Role?
    fun index(): Int
}
