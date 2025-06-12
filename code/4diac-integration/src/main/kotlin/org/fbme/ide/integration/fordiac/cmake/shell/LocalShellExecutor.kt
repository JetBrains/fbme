package org.fbme.ide.integration.fordiac.cmake.shell

import org.fbme.ide.integration.fordiac.cmake.exceptions.ShellException
import java.nio.charset.StandardCharsets.UTF_8

/**
 * Implementation of ShellExecutor for executing commands on the local system.
 */
open class LocalShellExecutor : ShellExecutor {

    override fun execute(vararg command: String): List<String> {
        if (command.isEmpty()) {
            throw ShellException(message = "Unexpected empty shell command during execution.")
        }

        val processBuilder = ProcessBuilder(*command)
        val process = processBuilder.start()
        val result = process.result()
        val exitCode = process.waitFor()

        if (exitCode != 0) {
            throw ShellException(processBuilder, result, exitCode, process)
        }

        return result
    }

    /**
     * Reads and collects the output of the process.
     *
     * @return the output of the process as a list of strings
     */
    protected fun Process.result(): List<String> {
        val result = mutableListOf<String>()

        inputStream.bufferedReader(UTF_8).use { reader ->
            var line: String?

            while (reader.readLine().also { line = it } != null) {
                line?.let { result.add(it) }
            }
        }

        return result
    }
}
