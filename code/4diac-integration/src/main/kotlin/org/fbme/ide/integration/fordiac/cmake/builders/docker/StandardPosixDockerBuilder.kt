package org.fbme.ide.integration.fordiac.cmake.builders.docker

import org.fbme.ide.integration.fordiac.cmake.builders.local.StandardPosixLocalBuilder
import org.fbme.ide.integration.fordiac.cmake.shell.DockerShellExecutor
import org.fbme.ide.integration.fordiac.cmake.shell.ShellExecutor
import java.nio.file.Path

/**
 * Builds a standard Posix runtime executable using Docker.
 *
 * @param forteFolderPath the path to the folder containing the Forte runtime
 * @param containerId the ID of the Docker container where the runtime will be built
 * @param shell the shell executor to use for executing commands (optional, defaults to a DockerShellExecutor)
 */
class StandardPosixDockerBuilder(
    forteFolderPath: Path,
    containerId: String,
    override val shell: ShellExecutor = DockerShellExecutor(containerId)
): StandardPosixLocalBuilder(forteFolderPath, shell)
