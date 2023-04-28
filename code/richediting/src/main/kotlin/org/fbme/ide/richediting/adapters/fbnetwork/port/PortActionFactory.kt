package org.fbme.ide.richediting.adapters.fbnetwork.port

import org.fbme.lib.common.Identifier
import org.fbme.lib.common.StringIdentifier
import org.fbme.lib.iec61499.IEC61499Factory
import org.fbme.lib.iec61499.declarations.*
import org.fbme.scenes.cells.action.port.AddPortAction
import java.util.function.Supplier

object PortActionFactory {
    fun getInputEventAction(
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

    fun getOutputEventAction(
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

    fun getInputParameterAction(
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

    fun getOutputParameterAction(
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

    fun getSocketAction(
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

    fun getPluginAction(
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