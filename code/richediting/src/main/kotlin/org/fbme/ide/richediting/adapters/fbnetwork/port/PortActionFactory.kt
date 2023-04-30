package org.fbme.ide.richediting.adapters.fbnetwork.port

import jetbrains.mps.openapi.editor.cells.CellAction
import org.fbme.lib.common.Identifier
import org.fbme.lib.common.StringIdentifier
import org.fbme.lib.iec61499.IEC61499Factory
import org.fbme.lib.iec61499.declarations.*
import org.fbme.ide.richediting.adapters.fbnetwork.actions.cell.port.AddPortAction
import org.fbme.ide.richediting.adapters.fbnetwork.actions.cell.port.DeletePortAction
import org.fbme.lib.common.Declaration
import org.fbme.lib.iec61499.descriptors.FBPortDescriptor
import org.fbme.lib.iec61499.fbnetwork.EntryKind
import java.util.function.Supplier

object PortActionFactory {
    fun createInputEventAction(
            declaration: FBInterfaceDeclaration,
            iec61499Factory: IEC61499Factory,
            identifierFactory: Supplier<Identifier> = IDENTIFIER_FACTORY("Ievent", declaration.inputEvents.map { it.name }),
    ): AddPortAction<EventDeclaration> {
        return AddPortAction(
                "Add input event port",
                declaration.inputEvents,
                { iec61499Factory.createEventDeclaration(identifierFactory.get()) }
        )
    }

    fun createOutputEventAction(
            declaration: FBInterfaceDeclaration,
            iec61499Factory: IEC61499Factory,
            identifierFactory: Supplier<Identifier> = IDENTIFIER_FACTORY("Oevent", declaration.outputEvents.map { it.name }),
    ): AddPortAction<EventDeclaration> {
        return AddPortAction(
                "Add output event port",
                declaration.outputEvents,
                { iec61499Factory.createEventDeclaration(identifierFactory.get()) }
        )
    }

    fun createInputParameterAction(
            declaration: FBInterfaceDeclaration,
            iec61499Factory: IEC61499Factory,
            identifierFactory: Supplier<Identifier> = IDENTIFIER_FACTORY("Idata", declaration.inputParameters.map { it.name }),
    ) : AddPortAction<ParameterDeclaration> {
        return AddPortAction(
                "Add input data port",
                declaration.inputParameters,
                { iec61499Factory.createParameterDeclaration(identifierFactory.get()) }
        )
    }

    fun createOutputParameterAction(
            declaration: FBInterfaceDeclaration,
            iec61499Factory: IEC61499Factory,
            identifierFactory: Supplier<Identifier> = IDENTIFIER_FACTORY("Odata", declaration.outputParameters.map { it.name }),
    ) : AddPortAction<ParameterDeclaration> {
        return AddPortAction(
                "Add output data port",
                declaration.outputParameters,
                { iec61499Factory.createParameterDeclaration(identifierFactory.get()) }
        )
    }

    fun createSocketAction(
            declaration: FBInterfaceDeclarationWithAdapters,
            iec61499Factory: IEC61499Factory,
            identifierFactory: Supplier<Identifier> = IDENTIFIER_FACTORY("Socket", declaration.sockets.map { it.name }),
    ) : AddPortAction<SocketDeclaration> {
        return AddPortAction(
                "Add socket port",
                declaration.sockets,
                { iec61499Factory.createSocketDeclaration(identifierFactory.get()) }
        )
    }

    fun createPluginAction(
            declaration: FBInterfaceDeclarationWithAdapters,
            iec61499Factory: IEC61499Factory,
            identifierFactory: Supplier<Identifier> = IDENTIFIER_FACTORY("Plugin", declaration.plugs.map { it.name }),
    ) : AddPortAction<PlugDeclaration> {
        return AddPortAction(
                "Add plugin port",
                declaration.plugs,
                { iec61499Factory.createPlugDeclaration(identifierFactory.get()) }
        )
    }

    fun deletePortAction(port: FBPortDescriptor, fbTypeDeclaration: Declaration?) : CellAction? {
        fbTypeDeclaration ?: return null

        if (fbTypeDeclaration !is FBInterfaceDeclaration) {
            return null
        }

        val ports: MutableList<out Declaration> = when (port.connectionKind) {
            EntryKind.EVENT -> if (port.isInput) fbTypeDeclaration.inputEvents  else fbTypeDeclaration.outputEvents
            EntryKind.DATA -> if (port.isInput) fbTypeDeclaration.inputParameters else fbTypeDeclaration.outputParameters
            EntryKind.ADAPTER -> {
                if (fbTypeDeclaration !is FBInterfaceDeclarationWithAdapters) {
                    return null
                }

                if (port.isInput) {
                    fbTypeDeclaration.sockets
                } else {
                    fbTypeDeclaration.plugs
                }
            }
        }

        return DeletePortAction(port, ports)
    }

    val IDENTIFIER_FACTORY: (prefix: String, values: List<String>) -> Supplier<Identifier> = { prefix, names ->
        var index: Int? = null

        val getName: () -> String = {
            "${prefix}${index ?: ""}"
        }

        Supplier {
            while (names.contains(getName())) {
                index = (index ?: 0) + 1
            }

            StringIdentifier(getName())
        }
    }
}