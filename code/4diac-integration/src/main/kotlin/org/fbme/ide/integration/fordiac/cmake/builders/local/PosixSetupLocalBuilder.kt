package org.fbme.ide.integration.fordiac.cmake.builders.local

import org.fbme.ide.integration.fordiac.cmake.builders.AbstractRuntimeBuilder
import org.fbme.ide.integration.fordiac.cmake.shell.LocalShellExecutor
import org.fbme.ide.integration.fordiac.cmake.shell.ShellExecutor
import java.nio.file.Path
import java.nio.file.Paths

/**
 * Builds a Posix runtime executable locally using posix_setup.sh.
 *
 * @param runtimeFolderPath the path to the folder containing the Forte runtime
 * @param shell the shell executor to use for executing commands (optional, defaults to a LocalShellExecutor)
 */
open class PosixSetupLocalBuilder(
    override val runtimeFolderPath: Path,
    override val shell: ShellExecutor = LocalShellExecutor()
) : AbstractRuntimeBuilder() {

    override fun performBuild(): Path {
        shell.execute("${runtimeFolderPath.resolve("setup_posix.sh")}")
        shell.execute("make", "-C", "$runtimeFolderPath/bin/posix/", "-j", "4")

        return Paths.get("$runtimeFolderPath/bin/posix/src/forte")
    }
}
