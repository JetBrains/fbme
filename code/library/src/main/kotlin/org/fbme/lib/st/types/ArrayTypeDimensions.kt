package org.fbme.lib.st.types

import org.fbme.lib.common.ContainedElement

interface ArrayTypeDimensions : ContainedElement {
    override val container: ArrayType?
    fun stringify(): String
}
