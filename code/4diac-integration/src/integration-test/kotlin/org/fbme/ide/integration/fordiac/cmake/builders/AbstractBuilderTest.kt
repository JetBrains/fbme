package org.fbme.ide.integration.fordiac.cmake.builders

import org.fbme.ide.integration.fordiac.cmake.shell.ShellExecutor
import org.junit.After
import org.junit.Before
import org.junit.BeforeClass
import org.testcontainers.containers.GenericContainer
import org.testcontainers.images.builder.ImageFromDockerfile
import java.nio.file.Path
import java.nio.file.Paths
import kotlin.io.path.notExists

abstract class AbstractBuilderTest {
    protected lateinit var container: GenericContainer<*>

    @Before
    fun startContainer() {
        val dockerFilePath = Paths.get("build", "resources", "integrationTest", "cmake", "UbuntuDockerfile")

        container = GenericContainer(ImageFromDockerfile().withDockerfile(dockerFilePath))
            .withCommand("/bin/bash", "-c", "tail -f /dev/null")

        container.start()
    }

    @After
    fun teardown() {
        container.stop()
    }

    protected fun validateExecutable(fortePath: Path, shell: ShellExecutor) = shell.execute(
        "bash", "-c",
        "if [ -x \"$fortePath\" ]; " +
                "then echo \"File exists and is executable\"; " +
                "elif [ -e \"$fortePath\" ]; " +
                "then echo \"File exists but is not executable\"; " +
                "else echo \"File does not exist\"; fi"
    )

    companion object {
        @JvmStatic
        @BeforeClass
        fun `clone forte`() {
            val fortePath = Paths.get("build", "resources", "integrationTest", "cmake", "forte")

            if (fortePath.notExists()) {
                val builder = ProcessBuilder(
                    "git",
                    "clone",
                    "https://github.com/eclipse-4diac/4diac-forte.git",
                    "./build/resources/integrationTest/cmake/forte/"
                )
                val process = builder.start()
                val exitCode = process.waitFor()
                if (exitCode != 0) {
                    throw RuntimeException("Failed to clone FORTE.")
                }
            }
        }
    }
}
