package org.fbme.lib.common

import org.fbme.lib.common.attributes.WithExternalXmlContent

interface Element : WithExternalXmlContent {
    val container: Element?
    fun copy(): Element
}
