package org.fbme.ide.integration.fordiac.deploy.controllers

import org.apache.logging.log4j.LogManager
import org.apache.logging.log4j.Logger
import org.fbme.ide.integration.fordiac.deploy.exceptions.DeploymentException
import org.fbme.ide.integration.fordiac.parser.IDResponse
import org.fbme.ide.integration.fordiac.parser.ResponseParser.parseIDResponse
import org.fbme.ide.integration.fordiac.parser.exceptions.ResponseParserException
import org.fbme.ide.integration.fordiac.parser.exceptions.ResponseParserException.Companion.createErrorMessage
import org.fbme.lib.iec61499.declarations.*
import org.fbme.lib.iec61499.fbnetwork.FBNetworkConnection
import org.fbme.lib.iec61499.stringify.STPrinter.Companion.printLiteral
import java.text.MessageFormat.format

open class DeploymentController(
    device: DeviceDeclaration,
) : AbstractDeviceController(device) {
    private val logger: Logger = LogManager.getLogger(this::class.qualifiedName)
    private var id = 0L

    protected fun nextId(): String {
        id++
        return id.toString()
    }

    override fun createNetwork(resource: ResourceDeclaration): Boolean {
        var didRequestSucceed = true

        fun executeFunctionWithCheck(command: () -> Boolean) {
            if (didRequestSucceed) {
                didRequestSucceed = command()
            }
        }

        executeFunctionWithCheck { createResource(resource) }

        resource.network.functionBlocks.forEach { fb ->
            val type = fb.typeReference.getTarget() ?: return false
            executeFunctionWithCheck{ createFBInstance(resource, type) }
            fb.parameters.forEach { executeFunctionWithCheck { writeFBParameter(resource, it) } }
        }
        resource.parameters.forEach { executeFunctionWithCheck {  writeResourceParameter(resource, it) } }
        resource.network.eventConnections.forEach { executeFunctionWithCheck {  createConnection(resource, it) } }
        resource.network.dataConnections.forEach { executeFunctionWithCheck { createConnection(resource, it) } }

        return didRequestSucceed
    }

    override fun createResource(resource: ResourceDeclaration): Boolean {
        val request = format(CREATE_RESOURCE_INSTANCE, nextId(), resource.name, resource.typeReference.presentation)
        logger.info(request)
        var didRequestSucceed = false
        var rawResponse = ""

        try {
            rawResponse = sendRequest(destination = "", request = request)
            val response = parseIDResponse(rawResponse)
            didRequestSucceed = response.didSucceed()
            logResponse(rawResponse, response)
        } catch (e: DeploymentException) {
            logger.error("Failed to send request for creating the resource '${resource.name}'.", e)
        } catch (e: ResponseParserException) {
            logger.error(createErrorMessage(rawResponse, request), e)
        }

        return didRequestSucceed
    }

    override fun writeResourceParameter(resource: ResourceDeclaration, parameter: ParameterAssignment): Boolean {
        val paramName = parameter.parameterReference.getTarget()?.name
        val request = format(parameterMessage(), nextId(), printLiteral(parameter.value!!), "${resource.name}.$paramName")
        logger.info(request)
        var didRequestSucceed = false
        var rawResponse = ""

        try {
            rawResponse = sendRequest(destination = "", request = request)
            val response = parseIDResponse(rawResponse)
            didRequestSucceed = response.didSucceed()
            logResponse(rawResponse, response)
        } catch (e: DeploymentException) {
            logger.error(
                "Failed to send request for writing the parameter '$paramName' in resource '${resource.name}'.",
                e
            )
        } catch (e: ResponseParserException) {
            logger.error(createErrorMessage(rawResponse, request), e)
        }

        return didRequestSucceed
    }

    override fun writeFBParameter(resource: ResourceDeclaration, parameter: ParameterAssignment): Boolean {
        val parentFB = parameter.container
        val paramName = parameter.parameterReference.getTarget()?.name
        val request = format(
            parameterMessage(),
            nextId(),
            printLiteral(parameter.value!!),
            "${parentFB?.name}.$paramName"
        )
        logger.info(request)
        var didRequestSucceed = false
        var rawResponse = ""

        try {
            rawResponse = sendRequest(destination = resource.name, request = request)
            val response = parseIDResponse(rawResponse)
            didRequestSucceed = response.didSucceed()
            logResponse(rawResponse, response)
        } catch (e: DeploymentException) {
            logger.error(
                "Failed to send request for writing FB parameter '$paramName' into resource '${resource.name}'.",
                e
            )
        } catch (e: ResponseParserException) {
            logger.error(createErrorMessage(rawResponse, request), e)
        }

        return didRequestSucceed
    }


    override fun createFBInstance(resource: ResourceDeclaration, fb: FBTypeDeclaration): Boolean {
        val typeName = fb.typeDescriptor.typeName
        val request = format(CREATE_FB_INSTANCE, nextId(), fb.name, typeName)
        logger.info(request)
        var didRequestSucceed = false
        var rawResponse = ""

        try {
            rawResponse = sendRequest(destination = resource.name, request = request)
            val response = parseIDResponse(rawResponse)
            didRequestSucceed = response.didSucceed()
            logResponse(rawResponse, response)
        } catch (e: DeploymentException) {
            logger.error(
                "Failed to send request for creating FB instance [name='${fb.name}', type='$typeName']" +
                        " into resource '${resource.name}'.",
                e
            )
        } catch (e: ResponseParserException) {
            logger.error(createErrorMessage(rawResponse, request), e)
        }

        return didRequestSucceed
    }

    override fun createConnection(resource: ResourceDeclaration, connection: FBNetworkConnection): Boolean {
        val sourceName = connection.sourceReference.presentation
        val targetName = connection.targetReference.presentation
        var didRequestSucceed = false

        if (connection.sourceReference.getTarget() != null && connection.targetReference.getTarget() != null) {
            val request = format(CREATE_CONNECTION, nextId(), sourceName, targetName)
            logger.info(request)
            var rawResponse = ""

            try {
                rawResponse = sendRequest(destination = resource.name, request = request)
                val response = parseIDResponse(rawResponse)
                didRequestSucceed = response.didSucceed()
                logResponse(rawResponse, response)
            } catch (e: DeploymentException) {
                logger.error(
                    "Failed to send request for creating FB connection '$sourceName -> $targetName'" +
                            " in resource '${resource.name}'.",
                    e
                )
            } catch (e: ResponseParserException) {
                logger.error(createErrorMessage(rawResponse, request), e)
            }
        } else {
            logger.error(
                "Failed to create connection '$sourceName -> $targetName' in resource '${resource.name}':" +
                        " source ref or target ref is null."
            )
        }

        return didRequestSucceed
    }

    override fun startResource(resource: ResourceDeclaration): Boolean {
        val request = format(START, id)
        id++
        logger.info(request)
        var didRequestSucceed = false
        var rawResponse = ""

        try {
            rawResponse = sendRequest(destination = resource.name, request = request)
            val response = parseIDResponse(rawResponse)
            didRequestSucceed = response.didSucceed()
            logResponse(rawResponse, response)
        } catch (e: DeploymentException) {
            logger.error("Failed to send request for starting the resource '${resource.name}'.", e)
        } catch (e: ResponseParserException) {
            logger.error(createErrorMessage(rawResponse, request), e)
        }

        return didRequestSucceed
    }

    override fun startDevice(device: DeviceTypeDeclaration): Boolean {
        val request = format(START, id)
        id++
        logger.info(request)
        var didRequestSucceed = false
        var rawResponse = ""

        try {
            rawResponse = sendRequest(destination = "", request = request)
            val response = parseIDResponse(rawResponse)
            didRequestSucceed = response.didSucceed()
            logResponse(rawResponse, response)
        } catch (e: DeploymentException) {
            logger.error("Failed to send request for starting the device '${device.name}'.", e)
        } catch (e: ResponseParserException) {
            logger.error(createErrorMessage(rawResponse, request), e)
        }

        return didRequestSucceed
    }

    override fun writeDeviceParameter(device: DeviceDeclaration, parameter: ParameterAssignment): Boolean {
        val paramName = parameter.parameterReference.getTarget()?.name
        val request = format(parameterMessage(), id, printLiteral(parameter.value!!), paramName)
        id++
        logger.info(request)
        var didRequestSucceed = false
        var rawResponse = ""

        try {
            rawResponse = sendRequest(destination = "", request = request)
            val response = parseIDResponse(rawResponse)
            didRequestSucceed = response.didSucceed()
            logResponse(rawResponse, response)
        } catch (e: DeploymentException) {
            logger.error(
                "Failed to send request for writing the parameter '$paramName' into device '${device.name}'.",
                e
            )
        } catch (e: ResponseParserException) {
            logger.error(createErrorMessage(rawResponse, request), e)
        }

        return didRequestSucceed
    }

    override fun deleteResource(resource: ResourceDeclaration): Boolean {
        val killRequest = format(KILL_FB, nextId(), resource.name)
        logger.info(killRequest)
        var didRequestSucceed = false
        var rawResponse = ""

        try {
            rawResponse = sendRequest(destination = "", request = killRequest)
            val response = parseIDResponse(rawResponse)
            didRequestSucceed = response.didSucceed()
            logResponse(rawResponse, response)
        } catch (e: DeploymentException) {
            logger.error("Failed to send request for killing the resource '${resource.name}'.", e)
        } catch (e: ResponseParserException) {
            logger.error(createErrorMessage(rawResponse, killRequest), e)
        }

        val deleteRequest = format(DELETE_FB, nextId(), resource.name)
        logger.info(deleteRequest)

        try {
            rawResponse = sendRequest(destination = "", request = deleteRequest)
            val response = parseIDResponse(rawResponse)
            didRequestSucceed = response.didSucceed()
            logResponse(rawResponse, response)
        } catch (e: DeploymentException) {
            logger.error("Failed to send request for deleting the resource '${resource.name}'.", e)
        } catch (e: ResponseParserException) {
            logger.error(createErrorMessage(rawResponse, killRequest), e)
        }

        return didRequestSucceed
    }

    override fun deleteFB(resource: ResourceDeclaration, fb: FBTypeDeclaration): Boolean {
        throw UnsupportedOperationException("Failed deleting the FB '${fb.name}'.")
    }

    override fun deleteConnection(resource: ResourceDeclaration, connection: FBNetworkConnection): Boolean {
        val sourceName = connection.sourceReference.presentation
        val targetName = connection.targetReference.presentation

        throw UnsupportedOperationException("Failed deleting the connection '$sourceName' -> '$targetName'.")
    }

    override fun killDevice(device: DeviceTypeDeclaration): Boolean {
        val request = format(KILL_DEVICE, nextId())
        logger.info(request)
        var didRequestSucceed = false
        var rawResponse = ""

        try {
            rawResponse = sendRequest(destination = "", request = request)
            val response = parseIDResponse(rawResponse)
            didRequestSucceed = response.didSucceed()
            logResponse(rawResponse, response)
        } catch (e: DeploymentException) {
            logger.error("Failed to send request for killing the device '${device.name}'.", e)
        } catch (e: ResponseParserException) {
            logger.error(createErrorMessage(rawResponse, request), e)
        } finally {
            resetTypes()
        }

        return didRequestSucceed
    }

    override fun queryResources(): List<ResourceDeclaration> {
        throw UnsupportedOperationException("Failed to query resources.")
    }

    override fun disconnect() {
        try {
            super.disconnect()
            logger.info("Successfully disconnected.")
        } catch (e: DeploymentException) {
            logger.error("Failed to disconnect from device.", e)
        }
    }

    protected fun parameterMessage() = WRITE_PARAMETER

    protected fun logResponse(rawResponse: String, response: IDResponse) {
        if (response.didSucceed()) {
            logger.info(rawResponse)
        } else {
            logger.error(rawResponse)
        }
    }

    companion object {
        const val CREATE_RESOURCE_INSTANCE: String =
            "<Request ID=\"{0}\" Action=\"CREATE\"><FB Name=\"{1}\" Type=\"{2}\" /></Request>"
        const val CREATE_FB_INSTANCE: String =
            "<Request ID=\"{0}\" Action=\"CREATE\"><FB Name=\"{1}\" Type=\"{2}\" /></Request>"
        const val CREATE_CONNECTION: String =
            "<Request ID=\"{0}\" Action=\"CREATE\"><Connection Source=\"{1}\" Destination=\"{2}\" /></Request>"
        const val WRITE_PARAMETER: String =
            "<Request ID=\"{0}\" Action=\"WRITE\"><Connection Source=\"{1}\" Destination=\"{2}\" /></Request>"
        const val START: String = "<Request ID=\"{0}\" Action=\"START\"/>"
        const val START_FB: String =
            "<Request ID=\"{0}\" Action=\"START\"><FB Name=\"{1}\" Type=\"{2}\"/></Request>"
        const val KILL_FB: String =
            "<Request ID=\"{0}\" Action=\"KILL\"><FB Name=\"{1}\" Type=\"\"/></Request>"
        const val KILL_DEVICE: String = "<Request ID=\"{0}\" Action=\"KILL\"></Request>"
        const val STOP_FB: String =
            "<Request ID=\"{0}\" Action=\"STOP\"><FB Name=\"{1}\" Type=\"\"/></Request>"
        const val DELETE_FB: String =
            "<Request ID=\"{0}\" Action=\"DELETE\"><FB Name=\"{1}\" Type=\"\"/></Request>"
        const val DELETE_CONNECTION: String =
            "<Request ID=\"{0}\" Action=\"DELETE\"><Connection Source=\"{1}\" Destination=\"{2}\"/></Request>"
        const val QUERY_FB_INSTANCES: String =
            "<Request ID=\"{0}\" Action=\"QUERY\"><FB Name=\"*\" Type=\"*\"/></Request>"
        const val READ_WATCHES: String = "<Request ID=\"{0}\" Action=\"READ\"><Watches/></Request>"
        const val ADD_WATCH: String =
            "<Request ID=\"{0}\" Action=\"CREATE\"><Watch Source=\"{1}\" Destination=\"{2}\" /></Request>"
        const val DELETE_WATCH: String =
            "<Request ID=\"{0}\" Action=\"DELETE\"><Watch Source=\"{1}\" Destination=\"{2}\" /></Request>"
        const val FORCE_VALUE: String =
            "<Request ID=\"{0}\" Action=\"WRITE\"><Connection Source=\"{1}\" Destination=\"{2}\" force=\"{3}\" /></Request>"
    }
}
