package org.fbme.lib.common.attributes

import org.jdom.Content

interface WithExternalXmlContent {
    /*immutable*/
    fun getExternalContent(): List<Content?>
    fun setExternalContent(content: List<Content?>)
}
