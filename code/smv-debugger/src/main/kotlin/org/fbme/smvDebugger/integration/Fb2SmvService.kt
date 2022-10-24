package org.fbme.smvDebugger.integration

import org.fbme.smvDebugger.commons.OS
import org.fbme.smvDebugger.commons.OSUtils
import java.nio.file.Path

class Fb2SmvService(fb2SmvBinaryPath: Path?) : AbstractIntegrationService(fb2SmvBinaryPath) {
    fun convertFbToSmv(fbPath: Path?): Path {
        runProcess(fbPath!!)
        return newPathOf(fbPath, SMV_FILE_EXTENSION)
    }

    override fun getCommand(fbPath: Path): String {
        return if (OSUtils.oS == OS.MAC_OS) {
            MAC_MONO_FRAMEWORK + " " + binaryPath + " " + fbPath
        } else "$binaryPath $fbPath"
    }

    companion object {
        private const val SMV_FILE_EXTENSION = "smv"
    }
}
