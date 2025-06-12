package org.fbme.ide.integration.fordiac.cmake.builders

import org.fbme.ide.integration.fordiac.cmake.exceptions.RuntimeBuildException
import org.fbme.ide.integration.fordiac.cmake.exceptions.ShellException
import org.fbme.ide.integration.fordiac.cmake.shell.ShellExecutor
import java.nio.file.Path

/**
 * Abstract base class for implementing RuntimeBuilder.
 *
 */
abstract class AbstractRuntimeBuilder : RuntimeBuilder {
    /**
     * The path to the folder containing the Forte runtime.
     */
    protected abstract val runtimeFolderPath: Path

    /**
     * The shell executor to execute shell commands.
     */
    protected abstract val shell: ShellExecutor

    /**
     * Performs the build process to generate the runtime executable.
     *
     * @return the path of the resulting runtime executable
     * @throws ShellException if an error occurs during the execution of shell commands
     */
    protected abstract fun performBuild(): Path

    override fun build(): Path {
        try {
            return performBuild()
        } catch (e: ShellException) {
            throw RuntimeBuildException(message = "Failed building runtime in '$runtimeFolderPath'.", cause = e)
        }
    }

}
