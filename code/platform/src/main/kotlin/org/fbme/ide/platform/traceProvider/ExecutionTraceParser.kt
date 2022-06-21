package org.fbme.ide.platform.traceProvider

import jetbrains.mps.project.MPSProject
import org.fbme.lib.iec61499.declarations.CompositeFBTypeDeclaration
import java.nio.file.Path

interface ExecutionTraceParser  {
    var project: MPSProject
    fun getUnifiedTrace(arg : String,
                        fbPath: Path,
                        compositeFb: CompositeFBTypeDeclaration)
}