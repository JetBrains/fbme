package org.fbme.lib.common

import org.fbme.lib.common.attributes.WithExternalXmlContent

interface Element : WithExternalXmlContent {
    val container: Element?
    val library: Library?
    fun copy(): Element
}
