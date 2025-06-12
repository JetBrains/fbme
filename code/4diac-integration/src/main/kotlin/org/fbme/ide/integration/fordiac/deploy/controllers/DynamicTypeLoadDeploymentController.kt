package org.fbme.ide.integration.fordiac.deploy.controllers

import org.apache.logging.log4j.LogManager
import org.apache.logging.log4j.Logger
import org.fbme.ide.integration.fordiac.translator.lua.AdapterFBTypeTranslator
import org.fbme.ide.integration.fordiac.translator.lua.ForteLuaTranslator
import org.fbme.ide.integration.fordiac.parser.ResponseParser.parseIDResponse
import org.fbme.ide.integration.fordiac.parser.ResponseParser.parseNameListResponse
import org.fbme.ide.integration.fordiac.parser.exceptions.ResponseParserException
import org.fbme.ide.platform.deploy.exceptions.DeploymentException
import org.fbme.lib.iec61499.declarations.CompositeFBTypeDeclaration
import org.fbme.lib.iec61499.declarations.DeviceDeclaration
import org.fbme.lib.iec61499.declarations.FBTypeDeclaration
import org.fbme.lib.iec61499.declarations.ResourceDeclaration
import java.text.MessageFormat.format

/**
 * A specialized deployment controller that handles dynamic loading of FB types and adapter types
 * during the deployment process.
 * This class implements 4diac FORTE With Dynamic Type Load configuration.
 *
 * @param device The device declaration associated with this controller.
 */
class DynamicTypeLoadDeploymentController(
    device: DeviceDeclaration,
) : DeploymentController(device) {
    private val logger: Logger = LogManager.getLogger(this::class.qualifiedName)

    override fun connect() {
        try {
            super.connect()
            logger.info("Successfully connected to the device '${device.name}'.")
            queryFBTypes()
            queryAdapterTypes()
        } catch (e: DeploymentException) {
            logger.error("Failed to establish a connection to the device '${device.name}'.", e)
        } catch (e: ResponseParserException) {
            logger.error("Failed to parse the FORTE response while connecting to the device '${device.name}'.", e)
        } catch (e: Throwable) {
            logger.error("An error occurred while establishing a connection to the device '${device.name}'.", e)
        }
    }

    /**
     * Queries the available FB types from the device and updates the internal list.
     */
    private fun queryFBTypes() {
        val request = format(QUERY_FB_TYPES, nextId())
        logger.info(request)
        var rawResponse = ""

        try {
            rawResponse = sendRequest(destination = "", request = request)
            val response = parseNameListResponse(rawResponse)
            fbTypes = response.names.toMutableSet()
            logResponse(rawResponse, response.idResponse)
        } catch (e: DeploymentException) {
            throw DeploymentException("Failed to send the request while querying FB types.", e)
        } catch (e: ResponseParserException) {
            throw ResponseParserException(rawResponse, request, cause = e)
        }
    }

    /**
     * Queries the available adapter types from the device and updates the internal list.
     */
    private fun queryAdapterTypes() {
        val request = format(QUERY_ADAPTER_TYPES, nextId())
        logger.info(request)
        var rawResponse = ""

        try {
            rawResponse = sendRequest(destination = "", request = request)
            val response = parseNameListResponse(rawResponse)
            adapterTypes = response.names.toMutableSet()
            logResponse(rawResponse, response.idResponse)
        } catch (e: DeploymentException) {
            throw DeploymentException("Failed to send the request while querying adapter types.", e)
        } catch (e: ResponseParserException) {
            throw ResponseParserException(rawResponse, request, cause = e)
        }
    }

    /**
     * Creates adapter types if they are not already present for the given FB type.
     *
     * @param fb The function block type declaration.
     */
    private fun createAdapterTypesIfAbsent(fb: FBTypeDeclaration) {
        val usedAdapterTypes =
            (fb.sockets.mapNotNull { it.typeReference.getTarget() } +
                    fb.plugs.mapNotNull { it.typeReference.getTarget() })
                .toSet()

        usedAdapterTypes.forEach {
            val typeName = it.plugTypeDescriptor.typeName
            if (!adapterTypes.contains(typeName)) {
                val luaScript = AdapterFBTypeTranslator.translate(it)
                val request = format(CREATE_ADAPTER_TYPE, nextId(), typeName, luaScript)
                logger.info(request)
                sendCreateAdapterTypeRequest(request = request, adapterTypeName = typeName)
            }
        }
    }

    /**
     * Sends a request to create an adapter type.
     *
     * @param request The request string to create the adapter type.
     * @param adapterTypeName The name of the adapter type to create.
     */
    private fun sendCreateAdapterTypeRequest(request: String, adapterTypeName: String) {
        var rawResponse = ""

        try {
            rawResponse = sendRequest(destination = "", request = request)
            val response = parseIDResponse(rawResponse)
            if (response.didSucceed()) {
                adapterTypes.add(adapterTypeName)
            }
            logResponse(rawResponse, response)
        } catch (e: DeploymentException) {
            throw DeploymentException(
                "Failed to send the request for creating the adapter type '$adapterTypeName'.",
                e
            )
        } catch (e: ResponseParserException) {
            throw ResponseParserException(rawResponse, request, cause = e)
        }
    }

    /**
     * Overrides the createFBInstance method to handle dynamic loading of FB types and adapter types.
     *
     * @param resource The resource declaration.
     * @param fb The function block type declaration.
     * @return true if the creation is successful, false otherwise.
     */
    override fun createFBInstance(resource: ResourceDeclaration, fb: FBTypeDeclaration): Boolean {
        var didRequestSucceed = false

        try {
            createAdapterTypesIfAbsent(fb)

            // if needed, creates fb type first
            if (isFBNotLoaded(fb.typeDescriptor.typeName)) {
                val succeed = createFBType(fb)
                if (!succeed) {
                    return false
                }
            }
            didRequestSucceed = super.createFBInstance(resource, fb)
        } catch (e: DeploymentException) {
            logger.error("Failed to send the request for creating FB instance '${fb.name}'.", e)
        } catch (e: ResponseParserException) {
            logger.error("Failed to parse the response for creating FB instance '${fb.name}'.", e)
        }

        return didRequestSucceed
    }

    /**
     * Creates an FB type on the device.
     *
     * @param fb The function block type declaration.
     * @return true if the creation is successful, false otherwise.
     */
    fun createFBType(fb: FBTypeDeclaration): Boolean {
        var didRequestSucceed = false
        val typeName = fb.typeDescriptor.typeName

        try {
            if (fb is CompositeFBTypeDeclaration) {
                didRequestSucceed = createCompositeNetworkFBTypes(fb)
                if (!didRequestSucceed) {
                    return false
                }
            }
            val luaProgram = ForteLuaTranslator.translate(fb)
            val request = format(CREATE_FB_TYPE, nextId(), typeName, luaProgram)
            logger.info(request)

            val rawResponse = sendRequest(destination = "", request = request)
            val response = parseIDResponse(rawResponse)
            if (response.didSucceed()) {
                fbTypes.add(typeName)
                didRequestSucceed = true
            }
            logResponse(rawResponse, response)
        } catch (e: DeploymentException) {
            logger.error("Failed to send the request for creating FB type '$typeName'.", e)
        } catch (e: ResponseParserException) {
            logger.error("Failed to parse response for creating FB type '$typeName'.", e)
        }

        return didRequestSucceed
    }

    /**
     * Creates composite network FB types if needed.
     *
     * @param composite The composite function block type declaration.
     * @return true if the creation is successful, false otherwise.
     */
    private fun createCompositeNetworkFBTypes(composite: CompositeFBTypeDeclaration): Boolean {
        var didSucceed = true

        composite.network.functionBlocks.forEach { fb ->
            if (isFBNotLoaded(fb.type.typeName)) {
                val typeDeclaration = fb.typeReference.getTarget()!!
                createAdapterTypesIfAbsent(typeDeclaration)
                val succeed = createFBType(typeDeclaration)
                if (!succeed) {
                    didSucceed = false
                    return@forEach
                }
            }
        }

        return didSucceed
    }

    companion object {
        private const val CREATE_FB_TYPE =
            "<Request ID=\"{0}\" Action=\"CREATE\"><FBType Name=\"{1}\">{2}</FBType></Request>"
        private const val CREATE_ADAPTER_TYPE =
            "<Request ID=\"{0}\" Action=\"CREATE\"><AdapterType Name=\"{1}\">{2}</AdapterType></Request>"
        private const val QUERY_FB_TYPES =
            "<Request ID=\"{0}\" Action=\"QUERY\"><FBType Name=\"*\" /></Request>"
        private const val QUERY_FB_TYPE =
            "<Request ID=\"{0}\" Action=\"QUERY\"><FBType Name=\"{1}\" /></Request>"
        private const val QUERY_ADAPTER_TYPES =
            "<Request ID=\"{0}\" Action=\"QUERY\"><AdapterType Name=\"*\" /></Request>"
        private const val QUERY_ADAPTER_TYPE =
            "<Request ID=\"{0}\" Action=\"QUERY\"><AdapterType Name=\"{1}\" /></Request>"
        private const val QUERY_CONNECTIONS =
            "<Request ID=\"{0}\" Action=\"QUERY\"><Connection Source=\"{1}\" Destination=\"{2}\"/></Request>"
        private const val QUERY_PARAMETER =
            "<Request ID=\"{0}\" Action=\"READ\"><Connection Source=\"{1}\" Destination=\"*\" /></Request>"
    }
}
