package org.fbme.integration.nxt.importer

import org.fbme.lib.common.Declaration
import org.fbme.lib.iec61499.declarations.EventDeclaration
import org.fbme.lib.iec61499.declarations.ParameterDeclaration
import org.fbme.lib.iec61499.fbnetwork.FBNetworkConnection
import org.fbme.lib.iec61499.fbnetwork.FunctionBlockDeclaration
import org.fbme.lib.iec61499.fbnetwork.PortPath
import org.fbme.lib.iec61499.fbnetwork.PortPath.Companion.createDataPortPath
import org.fbme.lib.iec61499.fbnetwork.PortPath.Companion.createEventPortPath
import java.awt.Point

class DeclarationExtractor(
    private val oldNetworkEventConnections: List<FBNetworkConnection>,
    private val oldNetworkParameterConnections: List<FBNetworkConnection>,
    private val innerFBs: Set<String>
) {
    val declarationPortPathMap: HashMap<Declaration, PortPathNetworkCoordinates>
    val internalConnectionsSet: MutableSet<FBNetworkConnection>
    val externalConnectionsInputMap: MutableMap<Declaration, List<FBNetworkConnection>>
    val externalConnectionsOutputMap: MutableMap<Declaration, List<FBNetworkConnection>>
    val parameterDeclarationCopyMap: MutableMap<ParameterDeclaration, ParameterDeclaration>

    init {
        declarationPortPathMap = HashMap()
        internalConnectionsSet = HashSet()
        externalConnectionsInputMap = HashMap()
        externalConnectionsOutputMap = HashMap()
        parameterDeclarationCopyMap = HashMap()
    }

    fun extractEvents(
        events: List<EventDeclaration>,
        functionBlockDeclaration: FunctionBlockDeclaration,
        type: Type,
        shift: CoordinateShift
    ): List<EventDeclaration> {
        val externalEvents: MutableList<EventDeclaration> = ArrayList()
        val xShift = shift.getX(type)
        var yShift = shift.getY(type)
        for (event in events) {
            val externalConnections = findConnections(event, type, oldNetworkEventConnections)
            if (!externalConnections.isEmpty()) {
                val copyEvent = event.copy() as EventDeclaration
                declarationPortPathMap[copyEvent] = PortPathNetworkCoordinates(
                    createEventPortPath(functionBlockDeclaration, event),
                    Point(
                        functionBlockDeclaration.x + xShift,
                        functionBlockDeclaration.y + yShift
                    )
                )
                saveExternalConnections(type, copyEvent, externalConnections)
                externalEvents.add(copyEvent)
            }
            yShift += shift.yDiff
        }
        shift.setY(type, yShift)
        return externalEvents
    }

    fun extractParameters(
        parameters: List<ParameterDeclaration>,
        functionBlockDeclaration: FunctionBlockDeclaration,
        type: Type,
        shift: CoordinateShift
    ): List<ParameterDeclaration> {
        val externalParameters: MutableList<ParameterDeclaration> = ArrayList()
        val xShift = shift.getX(type)
        var yShift = shift.getY(type)
        for (parameter in parameters) {
            val externalConnections = findConnections(parameter, type, oldNetworkParameterConnections)
            if (!externalConnections.isEmpty()) {
                val copyParameter = parameter.copy() as ParameterDeclaration
                declarationPortPathMap[copyParameter] = PortPathNetworkCoordinates(
                    createDataPortPath(functionBlockDeclaration, parameter),
                    Point(
                        functionBlockDeclaration.x + xShift,
                        functionBlockDeclaration.y + yShift
                    )
                )
                parameterDeclarationCopyMap[parameter] = copyParameter
                saveExternalConnections(type, copyParameter, externalConnections)
                externalParameters.add(copyParameter)
            }
            yShift += shift.yDiff
        }
        shift.setY(type, yShift)
        return externalParameters
    }

    private fun findConnections(
        declaration: Declaration,
        type: Type,
        connections: List<FBNetworkConnection>
    ): List<FBNetworkConnection> {
        val externalConnections: MutableList<FBNetworkConnection> = ArrayList()
        for (connection in connections) {
            val sourcePortPath = connection.sourceReference.getTarget()!!
            val targetPortPath = connection.targetReference.getTarget()!!
            when (type) {
                Type.INPUT -> if (checkDeclarationPorts(declaration, connection, sourcePortPath, targetPortPath)) {
                    externalConnections.add(connection)
                }

                Type.OUTPUT -> if (checkDeclarationPorts(declaration, connection, targetPortPath, sourcePortPath)) {
                    externalConnections.add(connection)
                }
            }
        }
        return externalConnections
    }

    private fun checkDeclarationPorts(
        declaration: Declaration,
        connection: FBNetworkConnection,
        externalFBPortPath: PortPath<*>?,
        internalFBPortPath: PortPath<*>?
    ): Boolean {
        if (internalFBPortPath == null) {
            return false // TODO delete later if it's safe
        }
        if (internalFBPortPath.portTarget == declaration) {
            if (externalFBPortPath == null) {
                return true // TODO test if FB have connection to external input/output (delete later if it's safe)
            }
            val fb = externalFBPortPath.functionBlock
            if (fb == null || !innerFBs.contains(fb.name)) {
                return true
            }
            internalConnectionsSet.add(connection)
            return false
        }
        return false
    }

    private fun saveExternalConnections(type: Type, declaration: Declaration, connections: List<FBNetworkConnection>) {
        when (type) {
            Type.INPUT -> externalConnectionsInputMap[declaration] = connections
            Type.OUTPUT -> externalConnectionsOutputMap[declaration] = connections
        }
    }
}