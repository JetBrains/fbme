package org.fbme.ide.integration.fordiac.cmake.builders.docker

import org.fbme.ide.integration.fordiac.cmake.builders.AbstractBuilderTest
import org.fbme.ide.integration.fordiac.cmake.shell.DockerShellExecutor
import org.junit.Test
import java.nio.file.Paths
import kotlin.test.assertTrue

class PosixSetupDockerBuilderTest : AbstractBuilderTest() {

    @Test
    fun `forte posix setup build is successful`() {
        val builder = PosixSetupDockerBuilder(Paths.get("./"), container.containerId)
        val fortePath = builder.build()

        val shell = DockerShellExecutor(container.containerId)
        val result = validateExecutable(fortePath, shell)

        assertTrue(result.size == 1)
        assertTrue(result[0] == "File exists and is executable")
    }
}
