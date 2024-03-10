package org.fbme.lib.st.types

import org.fbme.lib.common.ContainedElement

interface ArrayType: NonGenericType, ContainedElement {
    var baseType: NonGenericType?
    var dimensions: ArrayTypeDimensions?

    override fun stringify() = "ARRAY [${dimensions?.stringify()}] OF ${baseType?.stringify()}"
}