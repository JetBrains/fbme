package org.fbme.lib.st.types

interface ArrayTypeSizes : ArrayTypeDimensions {
    val sizes: MutableList<Size>

    override fun stringify() = sizes.joinToString { it.value.toString() }
}