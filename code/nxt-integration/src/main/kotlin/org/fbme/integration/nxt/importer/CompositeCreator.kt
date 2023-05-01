package org.fbme.integration.nxt.importer

import org.fbme.ide.iec61499.repository.PlatformElement
import org.fbme.lib.common.CompositeReference
import org.fbme.lib.common.Declaration
import org.fbme.lib.common.Reference
import org.fbme.lib.common.StringIdentifier
import org.fbme.lib.iec61499.IEC61499Factory
import org.fbme.lib.iec61499.declarations.*
import org.fbme.lib.iec61499.fbnetwork.*
import org.fbme.lib.iec61499.fbnetwork.PortPath.Companion.createDataPortPath
import org.fbme.lib.iec61499.fbnetwork.PortPath.Companion.createEventPortPath
import org.jetbrains.mps.openapi.model.SModel
import java.awt.Point
import java.util.function.Consumer
import java.util.stream.Collectors

class CompositeCreator {
    fun createComposite(
        fbNetwork: FBNetwork,
        functionBlockDeclarationList: List<FunctionBlockDeclaration>,
        model: SModel,
        factory: IEC61499Factory // TODO add user name for fb name in interface
    ) {
        // maybe sort functionBlockDeclarationList somehow
        val innerFBs = functionBlockDeclarationList.stream().map(Declaration::name).collect(Collectors.toSet())
        val compositeFBNetworkName = java.lang.String.join("_", innerFBs)
        val compositeFBIdentifier = StringIdentifier(compositeFBNetworkName)
        val compositeFB =
            factory.createCompositeFBTypeDeclaration(compositeFBIdentifier) // name in interface (TODO set by user)
        model.addRootNode((compositeFB as PlatformElement).node)
        val compositeFunctionBlockDeclaration =
            factory.createFunctionBlockDeclaration(compositeFBIdentifier) // name in network
        compositeFunctionBlockDeclaration.typeReference.setTarget(compositeFB) // connect declaration in network to real fb in interface
        setDeclarationCoordinates(
            compositeFunctionBlockDeclaration,
            functionBlockDeclarationList
        ) // set network coordinates
        fbNetwork.functionBlocks.add(compositeFunctionBlockDeclaration)
        val eventConnections: List<FBNetworkConnection> = fbNetwork.eventConnections
        val dataConnections: List<FBNetworkConnection> = fbNetwork.dataConnections
        val declarationExtractor = DeclarationExtractor(eventConnections, dataConnections, innerFBs)
        var minX = functionBlockDeclarationList.stream().mapToInt(FunctionBlockDeclaration::x).min().orElse(0)
        for (blockDeclaration in functionBlockDeclarationList) {
            val fbType = blockDeclaration.typeReference.getTarget() ?: continue
            val fbName = blockDeclaration.name
            val shift = createShift(fbName, fbType)
            copyEvents(blockDeclaration, fbType, compositeFB, declarationExtractor, fbName, shift)
            minX = Math.min(minX, blockDeclaration.x + shift.getX(Type.INPUT))
        }

        // setting new associations
        val parameterDeclarationCopyMap = declarationExtractor.parameterDeclarationCopyMap
        setEventAssociations(compositeFB.inputEvents, parameterDeclarationCopyMap)
        setEventAssociations(compositeFB.outputEvents, parameterDeclarationCopyMap)
        rehangExternalConnections(
            declarationExtractor.externalConnectionsInputMap,
            compositeFunctionBlockDeclaration,
            Type.INPUT
        )
        rehangExternalConnections(
            declarationExtractor.externalConnectionsOutputMap,
            compositeFunctionBlockDeclaration,
            Type.OUTPUT
        )

        // TODO think about optimal coordinate shifts
        // int decX = minX > 500 ? minX - 500 : 0;
        val decX = minX
        val decY = functionBlockDeclarationList.stream().mapToInt(FunctionBlockDeclaration::y).min().orElse(0)
        adjustNetworkCoordinates(declarationExtractor, compositeFB, functionBlockDeclarationList, fbNetwork, decX, decY)

        // add connections to external input/output based on existed external connection from inner blocks
        createInnerIOConnections(compositeFB, declarationExtractor.declarationPortPathMap, factory, decX, decY)
    }

    private fun copyEvents(
        blockDeclaration: FunctionBlockDeclaration,
        fbType: FBTypeDeclaration,
        compositeFB: CompositeFBTypeDeclaration,
        declarationExtractor: DeclarationExtractor,
        fbName: String,
        shift: CoordinateShift
    ) {
        val inputEvents = declarationExtractor.extractEvents(fbType.inputEvents, blockDeclaration, Type.INPUT, shift)
        compositeFB.inputEvents.addAll(renameEventDeclarations(inputEvents, fbName))
        val outputEvents = declarationExtractor.extractEvents(fbType.outputEvents, blockDeclaration, Type.OUTPUT, shift)
        compositeFB.outputEvents.addAll(renameEventDeclarations(outputEvents, fbName))
        shift.adjustYForParameters()
        val inputParameters =
            declarationExtractor.extractParameters(fbType.inputParameters, blockDeclaration, Type.INPUT, shift)
        compositeFB.inputParameters.addAll(renameParameterDeclarations(inputParameters, fbName))
        val outputParameters =
            declarationExtractor.extractParameters(fbType.outputParameters, blockDeclaration, Type.OUTPUT, shift)
        compositeFB.outputParameters.addAll(renameParameterDeclarations(outputParameters, fbName))
    }

    private fun adjustNetworkCoordinates(
        declarationExtractor: DeclarationExtractor,
        compositeFB: CompositeFBTypeDeclaration,
        functionBlockDeclarationList: List<FunctionBlockDeclaration>,
        fbNetwork: FBNetwork,
        decX: Int,
        decY: Int
    ) {
        val eventConnections: MutableList<FBNetworkConnection> = fbNetwork.eventConnections
        val dataConnections: MutableList<FBNetworkConnection> = fbNetwork.dataConnections

        // adjust paths
        for (connection in declarationExtractor.internalConnectionsSet) {
            if (connection.kind == EntryKind.EVENT) {
                eventConnections.remove(connection)
                compositeFB.network.eventConnections.add(connection)
            } else if (connection.kind == EntryKind.DATA) {
                dataConnections.remove(connection)
                compositeFB.network.dataConnections.add(connection)
            }
            val path = connection.path
            if (path is LongConnectionPath) {
                val points = path.bendPoints
                points.forEach(Consumer { point: Point ->
                    point.x -= decX
                    point.y -= decY
                })
            }
        }

        // adjust blockDeclarations
        for (blockDeclaration in functionBlockDeclarationList) {
            fbNetwork.functionBlocks.remove(blockDeclaration)
            blockDeclaration.x = blockDeclaration.x - decX
            blockDeclaration.y = blockDeclaration.y - decY
            compositeFB.network.functionBlocks.add(blockDeclaration)
        }
    }

    private fun createInnerIOConnections(
        compositeFB: CompositeFBTypeDeclaration,
        declarationPortPathMap: Map<Declaration, PortPathNetworkCoordinates>,
        factory: IEC61499Factory,
        decX: Int,
        decY: Int
    ) {
        val eventConnections = compositeFB.network.eventConnections
        val dataConnections = compositeFB.network.dataConnections
        val endpointCoordinates = compositeFB.network.endpointCoordinates
        for (event in compositeFB.inputEvents) {
            createInnerIOConnection(
                factory,
                createEventPortPath(null, event),
                declarationPortPathMap.getValue(event),
                eventConnections,
                endpointCoordinates,
                EntryKind.EVENT,
                Type.INPUT,
                decX,
                decY
            )
        }
        for (event in compositeFB.outputEvents) {
            createInnerIOConnection(
                factory,
                createEventPortPath(null, event),
                declarationPortPathMap.getValue(event),
                eventConnections,
                endpointCoordinates,
                EntryKind.EVENT,
                Type.OUTPUT,
                decX,
                decY
            )
        }
        for (parameter in compositeFB.inputParameters) {
            createInnerIOConnection(
                factory,
                createDataPortPath(null, parameter),
                declarationPortPathMap.getValue(parameter),
                dataConnections,
                endpointCoordinates,
                EntryKind.DATA,
                Type.INPUT,
                decX,
                decY
            )
        }
        for (parameter in compositeFB.outputParameters) {
            createInnerIOConnection(
                factory,
                createDataPortPath(null, parameter),
                declarationPortPathMap.getValue(parameter),
                dataConnections,
                endpointCoordinates,
                EntryKind.DATA,
                Type.OUTPUT,
                decX,
                decY
            )
        }
    }

    private fun createInnerIOConnection(
        factory: IEC61499Factory,
        innerPortPath: PortPath<*>,
        portPathNetworkCoordinates: PortPathNetworkCoordinates,
        connections: MutableList<FBNetworkConnection>,
        endpointCoordinates: MutableList<EndpointCoordinate>,
        kind: EntryKind,
        type: Type,
        decX: Int,
        decY: Int
    ) {
        val connection = factory.createFBNetworkConnection(kind)
        val endpointCoordinate = factory.createEndpointCoordinate()
        if (type == Type.INPUT) {
            connection.sourceReference.setTarget(innerPortPath)
            connection.targetReference.setTarget(portPathNetworkCoordinates.portPath)
        } else {
            connection.sourceReference.setTarget(portPathNetworkCoordinates.portPath)
            connection.targetReference.setTarget(innerPortPath)
        }
        endpointCoordinate.portReference.setTarget(innerPortPath)
        endpointCoordinate.x = portPathNetworkCoordinates.point.x - decX
        endpointCoordinate.y = portPathNetworkCoordinates.point.y - decY
        connections.add(connection)
        endpointCoordinates.add(endpointCoordinate)
    }

    private fun createShift(fbName: String, fbType: FBTypeDeclaration): CoordinateShift {
        val charSize = 20
        val defaultShift = 300
        val inputCharCount = Math.max(
            fbType.inputEvents.stream().mapToInt { s: EventDeclaration -> s.name.length }.max().orElse(0),
            fbType.inputParameters.stream().mapToInt { s: ParameterDeclaration -> s.name.length }
                .max().orElse(0)
        )
        val outputCharCount = Math.max(
            fbType.outputEvents.stream().mapToInt { s: EventDeclaration -> s.name.length }.max().orElse(0),
            fbType.outputParameters.stream().mapToInt { s: ParameterDeclaration -> s.name.length }
                .max().orElse(0)
        )
        val blockWidthCount = Math.max(inputCharCount + outputCharCount, fbType.name.length)
        return CoordinateShift(
            charSize * (inputCharCount + fbName.length + 1) + defaultShift,
            charSize * (blockWidthCount + 15) + defaultShift
        )
    }

    private fun rehangExternalConnections(
        connectionMap: Map<Declaration, List<FBNetworkConnection>>,
        functionBlockDeclaration: FunctionBlockDeclaration,
        type: Type
    ) {
        connectionMap.forEach { (declaration, connections) ->
            for (connection in connections) {
                val reference: CompositeReference<PortPath<*>> = when (type) {
                    Type.INPUT -> connection.targetReference
                    Type.OUTPUT -> connection.sourceReference
                }
                if (declaration is EventDeclaration) {
                    reference.setTarget(
                        createEventPortPath(
                            functionBlockDeclaration,
                            (declaration as EventDeclaration?)!!
                        )
                    )
                } else if (declaration is ParameterDeclaration) {
                    reference.setTarget(
                        createDataPortPath(
                            functionBlockDeclaration,
                            (declaration as ParameterDeclaration?)!!
                        )
                    )
                }
            }
        }
    }

    private fun renameEventDeclarations(
        events: List<EventDeclaration>,
        fbName: String
    ): List<EventDeclaration> {
        return events.onEach { event -> event.name = "${fbName}_${event.name}" }
    }

    private fun renameParameterDeclarations(
        parameters: List<ParameterDeclaration>,
        fbName: String
    ): List<ParameterDeclaration> {
        return parameters.onEach { parameter -> parameter.name = "${fbName}_${parameter.name}" }
    }

    private fun setEventAssociations(
        events: List<EventDeclaration>,
        parameterDeclarationCopyMap: Map<ParameterDeclaration, ParameterDeclaration>
    ) {
        events.forEach { event: EventDeclaration ->
            event.associations.removeIf { eventAssociation: EventAssociation ->
                !parameterDeclarationCopyMap.containsKey(eventAssociation.parameterReference.getTarget())
            }
            event.associations.forEach { eventAssociation ->
                val reference: Reference<ParameterDeclaration> = eventAssociation.parameterReference
                reference.setTarget(parameterDeclarationCopyMap.getValue(reference.getTarget()!!))
            }
        }
    }

    private fun setDeclarationCoordinates(
        compositeFunctionBlockDeclaration: FunctionBlockDeclaration,
        functionBlockDeclarationList: List<FunctionBlockDeclaration>
    ) {
        val x =
            functionBlockDeclarationList.stream().mapToInt(FunctionBlockDeclaration::x).average().orElse(0.0).toInt()
        val y =
            functionBlockDeclarationList.stream().mapToInt(FunctionBlockDeclaration::y).average().orElse(0.0).toInt()
        compositeFunctionBlockDeclaration.x = x
        compositeFunctionBlockDeclaration.y = y
    }
}