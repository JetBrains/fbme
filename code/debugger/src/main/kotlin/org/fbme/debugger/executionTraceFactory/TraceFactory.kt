package org.fbme.debugger.executionTraceFactory

import jetbrains.mps.project.MPSProject
import org.fbme.ide.platform.traceProvider.SystemStateUpdate
import org.fbme.lib.iec61499.declarations.CompositeFBTypeDeclaration
import java.nio.file.Path
import java.util.concurrent.Future

interface TraceFactory {
    fun generateTrace(project: MPSProject,
                      fbPath: Path,
                      compositeFb: CompositeFBTypeDeclaration,
                      agr: ArrayList<String>): Future<ArrayList<SystemStateUpdate>>
}