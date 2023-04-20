package org.fbme.smvDebugger.integration

import java.io.IOException
import java.nio.file.Files
import java.nio.file.Path
import java.nio.file.StandardOpenOption
import java.util.*

class NuSmvService(nuSmvBinaryPath: Path?) : AbstractIntegrationService(nuSmvBinaryPath) {
    fun getRawCounterexample(smvPath: Path?, specification: String): Optional<Path> {
        addSpecification(smvPath, specification)
        val output = runProcess(smvPath!!)
        if (!output.contains(NUSMV_FAIL)) {
            return Optional.empty()
        }
        val rawCounterexamplePath = createRawCounterexampleFile(smvPath, output)
        return Optional.of(rawCounterexamplePath)
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

    private fun createRawCounterexampleFile(smvPath: Path?, counterexample: String?): Path {
        val rawCounterexamplePath = newPathOf(smvPath!!, NutracService.NUTRAC_FILE_EXTENSION)
        return try {
            Files.write(rawCounterexamplePath, counterexample!!.toByteArray())
        } catch (e: IOException) {
            throw RuntimeException(e)
        }
    }

    companion object {
        private const val NUSMV_FAIL = "is false"
    }
}
