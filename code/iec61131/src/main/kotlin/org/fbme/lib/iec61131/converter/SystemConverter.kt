package org.fbme.lib.iec61131.converter

import org.fbme.lib.common.Declaration
import org.fbme.lib.iec61131.model.Iec61131Xml
import org.fbme.lib.iec61499.declarations.DeviceDeclaration
import org.fbme.lib.iec61499.declarations.ResourceDeclaration
import org.fbme.lib.iec61499.declarations.SystemDeclaration
import org.fbme.lib.iec61499.fbnetwork.EntryKind
import org.fbme.lib.iec61499.fbnetwork.FBNetwork
import org.fbme.lib.iec61499.fbnetwork.FBNetworkConnection
import org.fbme.lib.iec61499.parser.STConverter
import org.fbme.lib.st.expressions.Literal

class SystemConverter(
    private val xmlProject: Iec61131Xml.Project,
    private val converterArguments: ConverterArguments
) : ConverterBase(converterArguments) {


    fun createSystems(): List<Declaration> {
        val nameToFbdInfo = xmlProject.types.pous.pouList
            .map { getFbdInfo(it) }
            .associateBy { it.name }

        val systemInfos = mutableListOf<SystemInfo>()
        xmlProject.instances.configurations.configurationList.forEach { configuration ->
            configuration.resourceList.forEach { resource ->
                resource.taskList.forEach { task ->
                    task.pouInstanceList.forEach { pouInstance ->

                        val interval = STConverter.parseLiteral(stFactory, task.interval)
                            ?: throw Iec61131ConverterException("task [${task.name}] has no time interval", null)

                        val fbdInfo = nameToFbdInfo[pouInstance.typeName] ?: throw Iec61131ConverterException(
                            "No fb named [${pouInstance.typeName}] given in instance [${pouInstance.name}]")

                        systemInfos.add(SystemInfo(pouInstance.name, interval, fbdInfo))
                    }
                }
            }
        }

        return systemInfos.map { createSystem(it) }
    }

    private fun createSystem(systemInfo: SystemInfo): SystemDeclaration {
        val system = factory.createSystemDeclaration(null)
        system.name = systemInfo.instanceName

        val application = factory.createApplicationDeclaration(null)
        application.name = "App"
        system.applications.add(application)

        system.devices.add(createDevice(systemInfo))

        val segment = factory.createSegmentDeclaration(null)
        segment.name = "Ethernet"
        segment.typeReference.setTargetName("Ethernet")
        system.segments.add(segment)

        val link = factory.createLink()
        link.resourceReference.setFQName("Testee.MAIN_RES")
        link.segmentReference.setTargetName("Ethernet")
        system.links.add(link)

        return system
    }

    private fun createDevice(systemInfo: SystemInfo): DeviceDeclaration {
        val device = factory.createDeviceDeclaration(null)
        device.name = "Testee"

        device.typeReference.setTargetName("FORTE_PC")
        val mgrId = factory.createParameterAssignment()
        mgrId.parameterReference.setTargetName("MGR_ID")
        mgrId.value = STConverter.parseLiteral(stFactory, "'localhost:61499'")
        device.parameters.add(mgrId)

        device.resources.add(createResource(systemInfo))

        return device
    }

    private fun createResource(systemInfo: SystemInfo): ResourceDeclaration {
        val resource = factory.createResourceDeclaration(null)
        resource.name = "MAIN_RES"
        resource.typeReference.setTargetName("EMB_RES")
        val resourceNetwork = resource.network
        fillNetwork(systemInfo, resourceNetwork)
        return resource
    }

    private fun fillNetwork(systemInfo: SystemInfo, network: FBNetwork) {

        val cycleTimeout = factory.createParameterAssignment()
        cycleTimeout.parameterReference.setTargetName("DT")
        cycleTimeout.value = systemInfo.interval

        val cycle = factory.createFunctionBlockDeclaration(null)
        cycle.name = "E_CYCLE"
        cycle.typeReference.setTargetName("E_CYCLE")
        cycle.parameters.add(cycleTimeout)
        cycle.x = 500
        network.functionBlocks.add(cycle)

        FbNetworkConverter(
            systemInfo.fbdInfo,
            converterArguments,
            startEvent = "E_CYCLE.EO",
            endEvent = null
        ).fillNetwork(network)
        network.eventConnections.add(createEvent("START.COLD", "E_CYCLE.START"))
        network.eventConnections.add(createEvent("START.WARM", "E_CYCLE.START"))
    }

    private fun createEvent(from: String, to: String): FBNetworkConnection {
        val connection = factory.createFBNetworkConnection(EntryKind.EVENT)
        connection.sourceReference.setFQName(from)
        connection.targetReference.setFQName(to)
        return connection
    }

    class SystemInfo(
        val instanceName: String,
        val interval: Literal<*>,
        val fbdInfo: FbdInfo
    )
}