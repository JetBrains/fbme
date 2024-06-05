package org.fbme.ide.integration.fordiac.cmake.exceptions

import java.nio.charset.StandardCharsets.UTF_8

/**
 * Exception thrown to indicate an error during shell command execution.
 */
class ShellException : RuntimeException {
    constructor(message: String?) : super(message)
    constructor(message: String?, cause: Throwable?) : super(message, cause)

    /**
     * Constructs a new ShellException with the specified process details.
     *
     * @param processBuilder the ProcessBuilder used to create the process
     * @param result the result of the command execution
     * @param exitCode the exit code returned by the process
     * @param process the process that failed
     */
    constructor(processBuilder: ProcessBuilder, result: List<String>, exitCode: Int, process: Process) : super(
        "Exit code for command '${processBuilder.command().joinToString(" ")}'" +
                " is $exitCode.\nResult: '${result.joinToString("\n")}'." +
                "\nError: '${process.errorMessage()}'"
    )
}

/**
 * Returns the error message from the error stream of the process.
 *
 * @return the error message as a string
 */
private fun Process.errorMessage(): String {
    val message = StringBuilder()

    errorStream.bufferedReader(UTF_8).use { reader ->
        var line: String?

        message.appendLine("START ERROR")
        while (reader.readLine().also { line = it } != null) {
            message.appendLine(line)
        }
        message.appendLine("END ERROR")
    }

    return message.toString()
}
