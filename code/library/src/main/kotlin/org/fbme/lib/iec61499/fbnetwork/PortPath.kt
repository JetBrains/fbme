package org.fbme.lib.iec61499.fbnetwork

import org.fbme.lib.common.Declaration
import org.fbme.lib.common.DeclarationPath
import org.fbme.lib.iec61499.declarations.EventDeclaration
import org.fbme.lib.iec61499.declarations.ParameterDeclaration
import org.fbme.lib.iec61499.declarations.PlugDeclaration
import org.fbme.lib.iec61499.declarations.SocketDeclaration
import java.util.*

class PortPath<DeclarationT : Declaration> private constructor(
    val functionBlock: FunctionBlockDeclarationBase?,
    val portTarget: DeclarationT
) : DeclarationPath {
    override val declarations: List<Declaration>
        get() = if (functionBlock != null) {
            listOf(functionBlock, portTarget)
        } else {
            listOf<Declaration>(portTarget)
        }

    override fun equals(other: Any?): Boolean {
        if (this === other) {
            return true
        }
        if (other !is PortPath<*>) {
            return false
        }
        return functionBlock == other.functionBlock && portTarget == other.portTarget
    }

    override fun hashCode(): Int {
        return Objects.hash(functionBlock, portTarget)
    }

    companion object {
        @JvmStatic
        fun createEventPortPath(
            functionBlock: FunctionBlockDeclarationBase?,
            portTarget: EventDeclaration
        ): PortPath<EventDeclaration> {
            return PortPath(functionBlock, portTarget)
        }

        @JvmStatic
        fun createDataPortPath(
            functionBlock: FunctionBlockDeclarationBase?,
            portTarget: ParameterDeclaration
        ): PortPath<ParameterDeclaration> {
            return PortPath(functionBlock, portTarget)
        }

        @JvmStatic
        fun createPlugPortPath(
            functionBlock: FunctionBlockDeclarationBase?,
            portTarget: PlugDeclaration
        ): PortPath<PlugDeclaration> {
            return PortPath(functionBlock, portTarget)
        }

        @JvmStatic
        fun createSocketPortPath(
            functionBlock: FunctionBlockDeclarationBase?,
            portTarget: SocketDeclaration
        ): PortPath<SocketDeclaration> {
            return PortPath(functionBlock, portTarget)
        }

        @JvmStatic
        fun createPortPath(
            functionBlock: FunctionBlockDeclarationBase?,
            kind: EntryKind,
            portTarget: Declaration
        ): PortPath<out Declaration> {
            return when (kind) {
                EntryKind.EVENT -> createEventPortPath(functionBlock, portTarget as EventDeclaration)
                EntryKind.DATA -> createDataPortPath(functionBlock, portTarget as ParameterDeclaration)
                EntryKind.ADAPTER ->
                    if (portTarget is SocketDeclaration) {
                        createSocketPortPath(functionBlock, portTarget)
                    } else {
                        createPlugPortPath(functionBlock, portTarget as PlugDeclaration)
                    }
            }
        }
    }
}
