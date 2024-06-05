package org.fbme.spinDebugger.integration

import org.fbme.smvDebugger.integration.AbstractIntegrationService
import java.io.IOException
import java.nio.file.Files
import java.nio.file.Path
import java.nio.file.StandardOpenOption
import java.util.Optional

/**
 * SPINVerificationService is a class that verifies SPIN models.
 * It extends the AbstractIntegrationService.
 *
 * @property binaryPath the path to the SPIN binary.
 * @constructor Creates a new instance of SPINVerificationService.
 * @param spinBinaryPath the path to the SPIN binary.
 */
class SPINVerificationService(spinBinaryPath : Path?): AbstractIntegrationService(spinBinaryPath) {
    fun getTrailPath(promelaModelPath: Path, specification: String) : Optional<Path> {
        addSpecification(promelaModelPath, specification)
        val output = runProcess(promelaModelPath)
        if (!output.contains(SPIN_FAIL))
            return Optional.empty()
        return Optional.of(promelaModelPath)
    }

    override fun getCommand(path: Path): String {
        return "$binaryPath -search -DVECTORSZ=2048 -DNOREDUCE -DNFAIR=5 -a -f -n -m1000000 $path"
    }

    private fun addSpecification(spinPath: Path, specification: String) {
        try {
            Files.write(spinPath, "\n\n$specification".toByteArray(), StandardOpenOption.APPEND)
        } catch (e: IOException) {
            throw RuntimeException(e)
        }
    }

    companion object {
        private const val SPIN_FAIL = "pan:1"
    }

}