package org.fbme.ide.integration.fordiac.cmake.builders.local

import org.fbme.ide.integration.fordiac.cmake.builders.AbstractRuntimeBuilder
import org.fbme.ide.integration.fordiac.cmake.shell.LocalShellExecutor
import org.fbme.ide.integration.fordiac.cmake.shell.ShellExecutor
import java.nio.file.Path
import java.nio.file.Paths

/**
 * Builds a standard Posix runtime executable locally.
 *
 * @param runtimeFolderPath the path to the folder containing the Forte runtime
 * @param shell the shell executor to use for executing commands (optional, defaults to a LocalShellExecutor)
 */
open class StandardPosixLocalBuilder(
    override val runtimeFolderPath: Path,
    override val shell: ShellExecutor = LocalShellExecutor()
) : AbstractRuntimeBuilder() {

    override fun performBuild(): Path {
        val buildResultDestination = "$runtimeFolderPath/bin/posix"

        shell.execute(
            "cmake",
            "-S", "$runtimeFolderPath",
            "-B", buildResultDestination,
            "-G", "Unix Makefiles",
            "-DFORTE_ARCHITECTURE=Posix",
            "-DFORTE_MODULE_CONVERT=ON",
            "-DFORTE_MODULE_IEC61131=ON",
            "-DFORTE_MODULE_UTILS=ON",
            "-DCMAKE_BUILD_TYPE=Release",
            "-DFORTE_COM_ETH=ON",
            "-DFORTE_COM_LOCAL=ON",
            "-DFORTE_COM_FBDK=ON",
            "-DFORTE_LOGLEVEL=LOGERROR",
            "-DFORTE_TESTS=OFF",
        )

        shell.execute("make", "-C", buildResultDestination, "-j", "4")

        return Paths.get("$buildResultDestination/src/forte")
    }
}
