package org.fbme.ide.iec61499.repository

import org.fbme.lib.common.Identifier
import org.jetbrains.mps.openapi.model.SNodeReference

data class PlatformIdentifier(val reference: SNodeReference) : Identifier {
    override fun toString() = "" + reference
}
