package org.fbme.smvDebugger.integration

import org.fbme.smvDebugger.commons.OS
import org.fbme.smvDebugger.commons.OSUtils
import java.nio.file.Path

class NutracService(nutracBinaryPath: Path?) : AbstractIntegrationService(nutracBinaryPath) {
    fun convertToCsv(rawCounterexamplePath: Path?): Path {
        runProcess(rawCounterexamplePath!!)
        return newPathOf(rawCounterexamplePath, CSV_FILE_EXTENSION)
    }

    override fun getCommand(counterexamplePath: Path): String {
        return if (OSUtils.oS == OS.MAC_OS) {
            MAC_MONO_FRAMEWORK + " " + binaryPath + " " + counterexamplePath
        } else "$binaryPath $counterexamplePath"
    }

    companion object {
        const val NUTRAC_FILE_EXTENSION = "nutrac"
        private const val CSV_FILE_EXTENSION = "csv"
    }
}
