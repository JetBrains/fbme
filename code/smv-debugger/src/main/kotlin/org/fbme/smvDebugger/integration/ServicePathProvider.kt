package org.fbme.smvDebugger.integration

import jetbrains.mps.project.MPSProject
import java.nio.file.Path

interface ServicePathProvider {
    val fb2SmvServicePath: Path?
    val nuSmvServicePath: Path?
    val nutracServicePath: Path?

    abstract class Factory {
        abstract fun create(project: MPSProject): ServicePathProvider

        companion object {
            var INSTANCE: Factory? = null
        }
    }

    companion object {
        fun create(project: MPSProject): ServicePathProvider {
            return Factory.INSTANCE!!.create(project)
        }
    }
}
