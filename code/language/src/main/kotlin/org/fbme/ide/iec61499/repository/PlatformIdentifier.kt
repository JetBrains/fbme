package org.fbme.ide.iec61499.repository

import org.fbme.lib.common.Identifier
import org.jetbrains.mps.openapi.model.SNodeReference

class PlatformIdentifier(val reference: SNodeReference) : Identifier {
    override fun toString(): String {
        return "" + reference
    }

    override fun equals(other: Any?): Boolean {
        return if (this === other) {
            true
        } else other is PlatformIdentifier && reference == other.reference
    }

    override fun hashCode(): Int {
        var result = 0
        result = 31 * result + reference.hashCode()
        return result
    }
}