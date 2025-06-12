package org.fbme.ide.integration.fordiac.cmake.builders

import java.nio.file.Path

/**
 * Interface for building a runtime executable.
 */
interface RuntimeBuilder {

    /**
     * Builds the runtime executable.
     *
     * @return the path of the resulting runtime executable
     * @throws RuntimeBuildException if an error occurs during the build process
     */
    fun build(): Path
}
