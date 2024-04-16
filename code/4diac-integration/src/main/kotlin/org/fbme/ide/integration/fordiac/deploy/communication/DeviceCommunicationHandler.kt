package org.fbme.ide.integration.fordiac.deploy.communication

import org.fbme.ide.integration.fordiac.deploy.exceptions.DeploymentException

/**
 * An interface representing a communication handler for a device.
 * <p>
 * Implementations of this interface provide methods for establishing a connection to a device,
 * sending requests, checking the connection status, and closing the communication channels.
 * </p>
 *
 * <p>
 * Implementors should also adhere to the {@link AutoCloseable} contract, allowing the communication
 * handler to be used in try-with-resources constructs for proper resource management.
 * </p>
 *
 * @see AutoCloseable
 */
interface DeviceCommunicationHandler : AutoCloseable {

    /**
     * Connects to a specified address and port, initializing the communication channels.
     *
     * @param address The IP address or hostname to connect to.
     * @param port The port number on the remote host to connect to.
     * @throws DeploymentException if an error occurs during the connection process.
     */
    fun connect(address: String, port: Int)

    /**
     * Sends a request to a specified destination, waiting for and returning the response.
     *
     * @param destination The destination identifier for the request.
     * @param request The request string to be sent.
     * @return The response received from the remote device.
     * @throws DeploymentException if an error occurs during the sending or receiving process.
     */
    fun send(destination: String, request: String): String

    /**
     * Disconnects the communication handler from the remote device, closing all communication channels.
     * <p>
     * This method terminates the connection established with the remote device,
     * releasing any associated resources and closing the communication channels.
     * </p>
     *
     * @throws DeploymentException if an error occurs while closing IO stream.
     */
    fun disconnect()

    /**
     * Closes the communication handler, implementing the {@link AutoCloseable} interface.
     * <p>
     * This method calls the {@link #disconnect()} method to terminate the connection
     * with the remote device and release associated resources.
     * </p>
     *
     * @throws Exception if an error occurs while closing the communication handler.
     * @see AutoCloseable
     */
    override fun close() {
        disconnect()
    }

    /**
     * Checks whether the communication handler is currently connected to a remote device.
     *
     * @return {@code true} if connected, {@code false} otherwise.
     */
    fun isConnected(): Boolean
}
