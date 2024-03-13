package org.fbme.ide.integration.fordiac.deploy

import java.io.*
import java.net.InetSocketAddress
import java.net.Socket

/**
 * An implementation of {@link DeviceCommunicationHandler} for communication with an Ethernet-connected device.
 * <p>
 * This class provides methods to connect to a specified address and port, close the communication channels,
 * send requests to the device, and check the current connection status. It uses an underlying socket for
 * communication and handles potential errors by throwing {@link DeploymentException} with appropriate error messages.
 * </p>
 *
 * @author Aliev Ruslan
 * @version 1.0
 */
class EthernetDeviceCommunicationHandler : DeviceCommunicationHandler {
    private var socket: Socket = Socket()
    private var inputStream: DataInputStream? = null
    private var outputStream: DataOutputStream? = null
    private val errorMessagePrefix = "Ethernet device manager:"

    /**
     * Connects to a specified address and port, initializing the input and output streams for communication.
     * <p>
     * This method closes any existing connections before attempting to establish a new connection. It sets a timeout
     * for the socket connection and initializes the input and output streams. If any errors occur during the
     * connection process, a {@link DeploymentException} is thrown with an appropriate error message.
     * </p>
     *
     * @param address The IP address or hostname to connect to.
     * @param port The port number on the remote host to connect to.
     *
     * @throws DeploymentException if an error occurs during the connection process or if the existing connection cannot
     * be closed.
     */
    override fun connect(address: String, port: Int) {
        val socketAddress = InetSocketAddress(address, port)
        val timeout = 1000

        try {
            socket = Socket().also {
                it.soTimeout = timeout
                it.connect(socketAddress)
                inputStream = DataInputStream(BufferedInputStream(it.getInputStream()))
                outputStream = DataOutputStream(BufferedOutputStream(it.getOutputStream()))
            }
        } catch (e: IOException) {
            close()
            throw DeploymentException(
                message = "$errorMessagePrefix failed to connect to $address:$port. ${e.message}",
                cause = e
            )
        }
    }

    /**
     * Closes the input stream, output stream, and socket associated with this object.
     * <p>
     * This method attempts to close the input stream, output stream, and socket in sequence. If any of these
     * operations fail, a {@link DeploymentException} is thrown with an appropriate error message.
     * </p>
     *
     * @throws DeploymentException if an error occurs while closing the input stream, output stream, or socket.
     */
    override fun disconnect() {
        try {
            inputStream?.close()
            outputStream?.close()
            socket.close()
        } catch (e: IOException) {
            throw DeploymentException(message = "$errorMessagePrefix failed to disconnect: ${e.message}", cause = e)
        }
    }

    /**
     * Sends a request to a specified destination over the current connection, waiting for and returning the response.
     * <p>
     * This method sends the provided destination and request strings to the remote host through the output stream. It then
     * reads the response from the input stream and returns it as a string. If any errors occur during the process,
     * a {@link DeploymentException} is thrown with an appropriate error message.
     * </p>
     *
     * @param destination The destination identifier for the request.
     * @param request The request string to be sent.
     * @return The response received from the remote host.
     *
     * @throws DeploymentException if an error occurs during the sending or receiving process, including issues with
     * writing to the output stream or reading from the input stream. The exception message will provide details about
     * the specific error.
     */
    override fun send(destination: String, request: String): String {
        val response: StringBuilder

        try {
            if (outputStream == null || inputStream == null) {
                throw DeploymentException(message = "$errorMessagePrefix trying to send but was not connected.")
            }
            outputStream?.writeByte(IEC_STRING_TAG)
            outputStream?.writeShort(destination.length)
            outputStream?.writeBytes(destination)
            outputStream?.writeByte(IEC_STRING_TAG)
            outputStream?.writeShort(request.length)
            outputStream?.writeBytes(request)
            outputStream?.flush()

            inputStream?.readByte()
            val size = inputStream?.readUnsignedShort() ?: 0
            response = StringBuilder(size)
            for (i in 0 until size) {
                response.append(inputStream?.readByte()?.toInt()?.toChar())
            }
        } catch (e: IOException) {
            throw DeploymentException(
                message = "Failed to send request to destination: '$destination'. ${e.message}",
                cause = e
            )
        }

        return response.toString()
    }

    /**
     * Checks whether the object is currently connected to a remote host.
     * <p>
     * This method returns {@code true} if the underlying socket is not closed and is connected to a remote host;
     * otherwise, it returns {@code false}. It provides a quick way to determine the current connection status.
     * </p>
     *
     * @return {@code true} if the object is connected to a remote host, {@code false} otherwise.
     */
    override fun isConnected(): Boolean = !socket.isClosed && socket.isConnected

    companion object {
        const val IEC_STRING_TAG = 80
    }
}
