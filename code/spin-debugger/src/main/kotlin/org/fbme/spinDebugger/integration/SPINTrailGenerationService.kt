package org.fbme.spinDebugger.integration

import org.fbme.smvDebugger.integration.AbstractIntegrationService
import java.nio.file.Path
import java.util.*

class SPINTrailGenerationService(spinBinaryPath: Path?) : AbstractIntegrationService(spinBinaryPath) {
    fun getRawCounterExample(modelPath: Path) : Optional<Path> {
        runProcess(modelPath)
        return Optional.of(modelPath.resolveSibling("counterexample.txt"))
    }

    override fun getCommand(path: Path): String {
        return "$binaryPath -t -p $path > ${path.resolveSibling("counterexample.txt")}"
    }
}