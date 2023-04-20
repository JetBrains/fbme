package org.fbme.smvDebugger.integration

import java.io.BufferedReader
import java.io.InputStreamReader
import java.nio.file.Path

abstract class AbstractIntegrationService(protected val binaryPath: Path?) {
    protected fun runProcess(path: Path): String {
        val command = getCommand(path)
        val builder = ProcessBuilder()
        builder.command(command)
        return try {
            val process = builder.start()
            process.waitFor()
            val reader = BufferedReader(InputStreamReader(process.inputStream))
            val sb = StringBuilder()
            var line: String? = ""
            while (reader.readLine().also { line = it } != null) {
                sb.append(line).append("\n")
            }
            sb.toString()
        } catch (e: Exception) {
            throw RuntimeException(e)
        }
    }

    protected fun newPathOf(basePath: Path, fileExtension: String): Path {
        val fullFileName = basePath.fileName.toString()
        val dotIndex = fullFileName.lastIndexOf(".")
        val fileNameWithoutExtension = fullFileName.substring(0, dotIndex)
        return basePath.parent.resolve("$fileNameWithoutExtension.$fileExtension")
    }

    protected abstract fun getCommand(path: Path): String

    companion object {
        const val MAC_MONO_FRAMEWORK = "mono"
    }
}
