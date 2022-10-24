package org.fbme.scenes.controllers.scene

import java.awt.event.MouseEvent
import java.util.*

object MouseEvents {
    fun isMetaDown(event: MouseEvent): Boolean = if (getOS() == OS.MAC_OS) event.isMetaDown else event.isControlDown
    fun isControlDown(event: MouseEvent): Boolean = event.isControlDown
    fun isAltDown(event: MouseEvent): Boolean = event.isAltDown
}

enum class OS {
    WINDOWS, LINUX, MAC_OS
}

fun getOS(): OS? {
    val os = System.getProperty("os.name").lowercase(Locale.getDefault())
    return when {
        os.contains("win") -> {
            OS.WINDOWS
        }

        os.contains("nix") || os.contains("nux") || os.contains("aix") -> {
            OS.LINUX
        }

        os.contains("mac") -> {
            OS.MAC_OS
        }

        else -> null
    }
}
