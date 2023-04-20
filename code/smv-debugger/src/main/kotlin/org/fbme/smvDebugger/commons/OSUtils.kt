package org.fbme.smvDebugger.commons

import java.util.*

object OSUtils {
    private val SUPPORTED_OS = EnumSet.of(OS.MAC_OS)
    val oS: OS
        get() {
            val osName = System.getProperty("os.name").lowercase(Locale.getDefault())
            if (osName.contains("mac os")) {
                return OS.MAC_OS
            }
            return if (osName.contains("windows")) {
                OS.WINDOWS
            } else OS.UNKNOWN
        }

    fun isSupportedOS(os: OS): Boolean {
        return SUPPORTED_OS.contains(os)
    }
}
