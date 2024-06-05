package org.fbme.spinDebugger.integration

import org.fbme.smvDebugger.integration.AbstractIntegrationService
import org.fbme.smvDebugger.integration.ServicePathProvider
import org.fbme.smvDebugger.model.Counterexample
import org.fbme.spinDebugger.counterexample.SPINCounterExampleParser
import java.io.IOException
import java.nio.file.Files
import java.nio.file.Path

/**
 * VerificationService is a class that provides functionality for verifying SPIN models.
 * It uses SPINVerificationService and SPINTrailGenerationService to perform its tasks.
 *
 * @property spinVerificationService service for verifying SPIN models.
 * @property spinTrailGenerationService service for generating trails for SPIN models.
 * @constructor Initializes the verification service with the given path provider.
 * @param provider the path provider for the SPIN service.
 */
class VerificationService(provider: ServiceSPINPathProvider) {
    private val spinVerificationService = SPINVerificationService(provider.spinServicePath)
    private val spinTrailGenerationService = SPINTrailGenerationService(provider.spinServicePath)

    /**
     * Verifies a given SPIN model with a given specification.
     *
     * @param modelPath the path to the SPIN model.
     * @param specification the specification for the verification.
     * @return the path to the raw counterexample if it exists, null otherwise.
     * @throws RuntimeException if an exception occurs during the verification.
     */
    fun verify(modelPath: Path, specification: String): Path? {
        try {
            val spinTrailPath = spinVerificationService.getTrailPath(modelPath, specification)
            val rawCounterExamplePath = spinTrailGenerationService.getRawCounterExample(modelPath)
            if (rawCounterExamplePath.isEmpty) {
                return null
            }
            return rawCounterExamplePath.get()
        } catch (e: Exception) {
            throw RuntimeException(e)
        }
    }
}