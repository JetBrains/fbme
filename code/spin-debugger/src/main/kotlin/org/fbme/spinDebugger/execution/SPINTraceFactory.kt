package org.fbme.spinDebugger.execution

import com.intellij.openapi.components.service
import jetbrains.mps.project.MPSProject
import org.fbme.debugger.executionTraceFactory.TraceFactory
import org.fbme.ide.platform.traceProvider.SystemStateUpdate
import org.fbme.lib.iec61499.declarations.CompositeFBTypeDeclaration
import java.nio.file.Path
import java.util.concurrent.Future

/**
 * SPINTraceFactory is a class that generates traces for SPIN programs.
 * It implements the TraceFactory interface.
 *
 * @constructor Creates a new instance of SPINTraceFactory.
 */
class SPINTraceFactory: TraceFactory {

    /**
     * Generates a trace for a given Function Block.
     *
     * @param project the MPS project.
     * @param fbPath the path to the Function Block.
     * @param compositeFb the composite Function Block type declaration. TODO extend to support BasicFBTypeDeclaration?
     * @param agr an ArrayList of Strings.
     * @return a Future containing an ArrayList of SystemStateUpdate objects.
     */
    override fun generateTrace(
        project: MPSProject,
        fbPath: Path,
        compositeFb: CompositeFBTypeDeclaration,
        agr: ArrayList<String>
    ): Future<ArrayList<SystemStateUpdate>> {
        val rez =  project.project.service<SPINTraceService>().generateTrace(project,fbPath,compositeFb,agr)
        return rez
    }
}