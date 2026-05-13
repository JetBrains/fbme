package org.fbme.smvDebugger.execution.executionTraceGeneration

import com.intellij.openapi.components.service
import jetbrains.mps.project.MPSProject
import org.fbme.debugger.executionTraceFactory.TraceFactory
import org.fbme.ide.platform.traceProvider.SystemStateUpdate
import org.fbme.lib.iec61499.declarations.CompositeFBTypeDeclaration
import java.nio.file.Path
import java.util.concurrent.Future
import javax.swing.JOptionPane

class SMVTraceFactory: TraceFactory {

    override fun generateTrace(
        project: MPSProject,
        fbPath: Path,
        compositeFb: CompositeFBTypeDeclaration,
        agr: ArrayList<String>
    ): Future<ArrayList<SystemStateUpdate>> {
        val rez =  project.project.service<SMVTraceService>().generateTrace(project,fbPath,compositeFb,agr)
        return rez
    }


}