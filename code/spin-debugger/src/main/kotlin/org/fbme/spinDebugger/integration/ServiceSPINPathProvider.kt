package org.fbme.spinDebugger.integration

import jetbrains.mps.project.MPSProject
import java.nio.file.Path


interface ServiceSPINPathProvider {
    val spinServicePath: Path?

    abstract class Factory {
        abstract fun create(project: MPSProject): ServiceSPINPathProvider

        companion object {
            var INSTANCE: Factory? = null
        }
    }

    companion object {
        fun create(project: MPSProject): ServiceSPINPathProvider {
            return Factory.INSTANCE!!.create(project)
        }
    }
}