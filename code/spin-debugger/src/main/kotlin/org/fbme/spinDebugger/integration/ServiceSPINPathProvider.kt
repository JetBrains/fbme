package org.fbme.spinDebugger.integration

import jetbrains.mps.project.MPSProject
import java.nio.file.Path

/**
 * ServiceSPINPathProvider is an interface that provides a path to the SPIN service.
 *
 * @property spinServicePath the path to the SPIN service.
 */
interface ServiceSPINPathProvider {
    val spinServicePath: Path?

    /**
     * Factory is an abstract class that creates instances of ServiceSPINPathProvider.
     */
    abstract class Factory {
        /**
         * Creates a new instance of ServiceSPINPathProvider.
         *
         * @param project the MPS project.
         * @return a new instance of ServiceSPINPathProvider.
         */
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