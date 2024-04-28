package org.fbme.ide.integration.fordiac.deploy.communication

import org.junit.After
import org.junit.Test
import java.io.InputStream
import java.io.OutputStream
import java.net.ServerSocket

class TCPDeviceCommunicationHandlerTest {
    private val handler = TCPDeviceCommunicationHandler()
    private val port = 9999

    private fun serverThread(code: (writer: OutputStream, reader: InputStream) -> Unit) = Thread {
        val server = ServerSocket(port)
        val client = server.accept()

        code(client.outputStream, client.inputStream)

        client.close()
        server.close()
    }

    @After
    fun disconnectHandler() {
        handler.disconnect()
    }

    @Test
    fun `communication with server`() {
        val request = "hello"
        val response = "ok"

        val thread = serverThread { writer, reader ->
            val additionalBytesAmount = 6
            val message = reader.readNBytes(request.length + additionalBytesAmount)

            val iecTag: Byte = 80
            val prefix = byteArrayOf(iecTag, 0, 0, iecTag, 0, request.length.toByte())

            assert((prefix + request.toByteArray()).contentEquals(message))

            writer.write(byteArrayOf(0, 0, response.length.toByte()) + response.toByteArray())
            reader.close()
            writer.close()
        }

        thread.start()

        handler.connect("localhost", port)
        val actualResponse = handler.send(destination = "", request = request)

        assert(response.contentEquals(actualResponse))

        thread.join()
    }
}
