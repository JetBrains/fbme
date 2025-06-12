package org.fbme.ide.integration.fordiac.cmake.shell

/**
 * Interface for executing shell commands.
 */
interface ShellExecutor {

    /**
     * Executes the given shell command.
     *
     * @param command the command and its arguments to be executed
     * @return the output of the command as a list of strings
     * @throws ShellException if the command execution fails
     */
    fun execute(vararg command: String): List<String>
}
