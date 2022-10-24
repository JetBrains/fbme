package org.fbme.ide.iec61499.repository

import org.fbme.lib.common.Element
import org.jetbrains.mps.openapi.model.SNode

abstract class PlatformElementAdapter {
    abstract fun adapt(node: SNode): Element?
}
