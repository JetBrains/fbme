package org.fbme.spinDebugger.integration

import org.fbme.smvDebugger.integration.AbstractIntegrationService
import java.nio.file.Path
import java.util.*

/**
 * SPINTrailGenerationService is a class that generates trails for SPIN models.
 * It extends the AbstractIntegrationService.
 *
 * @property binaryPath the path to the SPIN binary.
 * @constructor Creates a new instance of SPINTrailGenerationService.
 * @param spinBinaryPath the path to the SPIN binary.
 */
class SPINTrailGenerationService(spinBinaryPath: Path?) : AbstractIntegrationService(spinBinaryPath) {

    /**
     * Gets the raw counter example for a given SPIN model.
     *
     * @param modelPath the path to the SPIN model.
     * @return an Optional containing the path to the raw counter example if it exists, empty otherwise.
     */
    fun getRawCounterExample(modelPath: Path) : Optional<Path> {
        runProcess(modelPath)
        return Optional.of(modelPath.resolveSibling("counterexample.txt"))
    }

    /**
     * Gets the command to be run for generating the trail.
     *
     * @param path the path to the SPIN model.
     * @return the command to be run.
     */
    override fun getCommand(path: Path): String {
        return "$binaryPath -t -p $path > ${path.resolveSibling("counterexample.txt")}"
    }
}