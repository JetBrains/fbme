package org.fbme.smvDebugger.execution.executionTraceGeneration

import jetbrains.mps.project.MPSProject
import org.fbme.ide.platform.traceProvider.ExecutionTraceParser
import org.fbme.ide.platform.traceProvider.SystemStateEvent
import org.fbme.ide.platform.traceProvider.SystemStateUpdate
import org.fbme.lib.iec61499.declarations.CompositeFBTypeDeclaration
import java.io.File
import java.nio.file.Path
import kotlin.io.path.pathString

class SMVCountereExampleParser(override var project: MPSProject) : ExecutionTraceParser {

    override fun getUnifiedTrace(arg: String, fbPath: Path, compositeFb: CompositeFBTypeDeclaration): ArrayList<SystemStateUpdate> {

        val rawTrace = File(fbPath.pathString).useLines { it.toList() }
        var m: MatchResult? =  null
        trace.clear()
        var currTraceState: SystemStateUpdate? = null

        try {
        for(str in rawTrace){

            var clearStr = str.trim()

            m = stateRegex.find(clearStr)
            if(null != m){
                if (currTraceState != null) {
                    trace.add(currTraceState)
                }
                currTraceState = SystemStateUpdate(null, arrayListOf())
                continue
            }

            m = variableRegex.find(clearStr)
            if(null != m){
                val id = m.groups[1]?.value
                val info = m.groups[3]?.value
                id?.let { info?.let {
                    VariableParser.splitLine(id, info, compositeFb, project)?.let { currTraceState?.info?.add(it) }}
                }
                continue
            }
            m = stateRegex.find(clearStr)
            if(null != m){
                continue
            }
            m = loopBeginRegex.find(clearStr)
            if(null != m){
                continue
            }
            m = counterexampleBeginRegex.find(str.trim())
            if(null != m) {
                continue
            }
        }
            currTraceState?.let { trace.add(it) }
        }
        catch (e: Exception) {
            println("HELP")
        }
        return trace


    }


    private val counterexampleBeginRegex = Regex("""-- specification\s*(.*)\s*is\s*(\w*)""")
    private val stateRegex = Regex("""->\s+State:\s((\d|\.)+)\s+<-""")
    private val variableRegex = Regex("""((\w|\.|\[|\])+)\s=\s((\w|-|.)+)""")
    private val loopBeginRegex = Regex("""\s*--\s*(Loop starts here)""")
    private val trace = ArrayList<SystemStateUpdate>()

}