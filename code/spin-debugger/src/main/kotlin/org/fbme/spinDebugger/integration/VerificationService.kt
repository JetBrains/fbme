package org.fbme.spinDebugger.integration

import org.fbme.smvDebugger.integration.AbstractIntegrationService
import org.fbme.smvDebugger.integration.ServicePathProvider
import org.fbme.smvDebugger.model.Counterexample
import org.fbme.spinDebugger.counterexample.SPINCounterExampleParser
import java.io.IOException
import java.nio.file.Files
import java.nio.file.Path

class VerificationService(provider: ServiceSPINPathProvider) {
    private val spinVerificationService = SPINVerificationService(provider.spinServicePath)
    private val spinTrailGenerationService = SPINTrailGenerationService(provider.spinServicePath)

    fun verify(modelPath: Path, specification: String): Path? {
        return try {
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