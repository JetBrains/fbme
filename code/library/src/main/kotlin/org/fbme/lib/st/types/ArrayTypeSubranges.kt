package org.fbme.lib.st.types

interface ArrayTypeSubranges : ArrayTypeDimensions {
    val subranges: MutableList<Subrange>

    override fun stringify() = subranges.joinToString { "${it.from}..${it.to}" }
}