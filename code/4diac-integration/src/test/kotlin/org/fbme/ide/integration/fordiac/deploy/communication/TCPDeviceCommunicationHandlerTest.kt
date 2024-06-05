package org.fbme.ide.integration.fordiac.deploy.communication

import io.mockk.*
import org.fbme.ide.platform.deploy.exceptions.DeploymentException
import org.junit.jupiter.api.AfterEach
import org.junit.jupiter.api.Assertions.*
import org.junit.jupiter.api.Test
import org.junit.platform.commons.util.ReflectionUtils
import java.io.DataInputStream
import java.io.DataOutputStream
import java.io.IOException
import java.lang.reflect.Field
import java.net.Socket


class TCPDeviceCommunicationHandlerTest {
    private val inputStreamMock = mockk<DataInputStream>()
    private val outputStreamMock = mockk<DataOutputStream>()
    private val socketMock = mockk<Socket> {
        every { getInputStream() } returns inputStreamMock
        every { getOutputStream() } returns outputStreamMock
    }
    private val handler = TCPDeviceCommunicationHandler()

    init {
        val field: Field = ReflectionUtils
            .findFields(
                TCPDeviceCommunicationHandler::class.java, { f: Field -> f.name == "socket" },
                ReflectionUtils.HierarchyTraversalMode.TOP_DOWN
            )[0]

        field.setAccessible(true)
        field.set(handler, socketMock)
    }

    @AfterEach
    fun tearDown() {
        clearAllMocks()
    }

    @Test
    fun `test close`() {
        every { socketMock.close() } just Runs
        handler.close()
        verify { socketMock.close() }
    }

    @Test
    fun `close should throw DeploymentException when closing fails`() {
        every { inputStreamMock.close() } throws IOException("Error closing input stream")
        every { outputStreamMock.close() } throws IOException("Error closing output stream")
        every { socketMock.close() } throws IOException("Error closing socket")

        assertThrows(DeploymentException::class.java) {
            handler.close()
        }
    }

    @Test
    fun `isConnected should return true when the socket is connected`() {
        every { socketMock.isClosed } returns false
        every { socketMock.isConnected } returns true

        assertTrue(handler.isConnected())
    }

    @Test
    fun `isConnected should return false when the socket is closed`() {
        every { socketMock.isClosed } returns true
        assertFalse(handler.isConnected())
    }
}
