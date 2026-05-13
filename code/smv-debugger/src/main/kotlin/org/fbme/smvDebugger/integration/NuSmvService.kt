package org.fbme.smvDebugger.integration

import java.io.File
import java.io.IOException
import java.nio.charset.StandardCharsets
import java.nio.file.Files
import java.nio.file.Path
import java.nio.file.StandardOpenOption
import java.util.*
import java.util.concurrent.TimeUnit
import kotlin.io.path.pathString

class NuSmvService(nuSmvBinaryPath: Path?) : AbstractIntegrationService(nuSmvBinaryPath) {
    fun getRawCounterexample(smvPath: Path?, specification: String, timeoutSec: Long = 60): Optional<Path> {

        // Build and start process
        val process = ProcessBuilder(binaryPath?.pathString, smvPath?.pathString)
            .redirectErrorStream(true)
            .start()

        // Send spec + quit
        process.outputStream.bufferedWriter(StandardCharsets.UTF_8).use { writer ->
            specification
                .split(';')
                .mapNotNull { it.trim().takeIf(String::isNotEmpty) }
                .forEach { writer.appendLine("$it;") }
            writer.appendLine("quit;")
            writer.flush()
        }

        val output = process.inputStream.bufferedReader(StandardCharsets.UTF_8).use { it.readText() }

        if (!process.waitFor(timeoutSec, TimeUnit.SECONDS)) {
            process.destroy()
            if (process.isAlive) process.destroyForcibly()
            throw IOException("NuSMV did not finish within $timeoutSec s")
        }

        if (process.exitValue() != 0) {
            throw IOException("NuSMV exited with ${process.exitValue()}:\n$output")
        }

        if (!output.contains(NUSMV_FAIL)) {
            return Optional.empty()
        }
        return Optional.ofNullable(smvPath)
            .map { path -> createRawCounterexampleFile(path, output) }
    }

    override fun getCommand(smvPath: Path): String {
        return "$binaryPath $smvPath"
    }

    private fun addSpecification(smvPath: Path?, specification: String) {
        try {
            Files.write(smvPath, "\n\n$specification".toByteArray(), StandardOpenOption.APPEND)
        } catch (e: IOException) {
            throw RuntimeException(e)
        }
    }

    private fun createRawCounterexampleFile(smvPath: Path, counterexample: String?): Path {

        val originalName = smvPath.fileName.toString()
            .substringBeforeLast('.')

        val rawCounterexamplePath = smvPath.parent.resolve("$originalName$COUNTEREX_FILE_EXTENSION")
        return try {

            Files.write(rawCounterexamplePath, counterexample!!.toByteArray())

        } catch (e: IOException) {
            throw RuntimeException(e)
        }
    }

    companion object {
        private const val NUSMV_FAIL = "is false"

        private const val COUNTEREX_FILE_EXTENSION = "execution_trace.txt"
    }
}
