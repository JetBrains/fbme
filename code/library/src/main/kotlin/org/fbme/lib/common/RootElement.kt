package org.fbme.lib.common

interface RootElement : Element {
    override val container: Element?
        get() = null
}
