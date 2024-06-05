package org.fbme.spinDebugger.counterexample

import jetbrains.mps.project.MPSProject
import org.fbme.ide.platform.traceProvider.ExecutionTraceParser
import org.fbme.ide.platform.traceProvider.SystemStateUpdate
import org.fbme.lib.iec61499.declarations.CompositeFBTypeDeclaration
import java.io.File
import java.nio.file.Path
import kotlin.io.path.pathString

class SPINCounterExampleParser(override var project: MPSProject) : ExecutionTraceParser {
    private val trace = ArrayList<SystemStateUpdate>()

    override fun getUnifiedTrace(
        arg: String,
        fbPath: Path,
        compositeFb: CompositeFBTypeDeclaration
    ): ArrayList<SystemStateUpdate> {
        val rawTrace = File(fbPath.pathString).useLines { it.toList() }
        var m: MatchResult? =  null
        trace.clear()
        var currTraceState: SystemStateUpdate? = null

        try {
            for(str in rawTrace){
                var clearStr = str.trim()

            }
        } catch (e: Exception) {
            println("HELP")
        }
        return trace
    }
}