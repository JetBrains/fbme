package org.fbme.ide.integration.fordiac.cmake.shell

/**
 * Implementation of ShellExecutor for executing commands within a Docker container.
 *
 * @param containerId the ID of the Docker container
 */
class DockerShellExecutor(private val containerId: String) : LocalShellExecutor() {

    override fun execute(vararg command: String): List<String> =
        super.execute("docker", "exec", containerId, *command)
}
