package org.fbme.smvDebugger.execution.executionTraceGeneration

import com.intellij.ide.plugins.PluginManager
import jetbrains.mps.project.MPSProject
import org.fbme.ide.platform.traceProvider.SystemStateEvent
import org.fbme.ide.platform.traceProvider.SystemStateEventType
import org.fbme.ide.platform.traceProvider.SystemStateUpdate
import org.fbme.lib.iec61499.declarations.*
import org.fbme.lib.iec61499.fbnetwork.FunctionBlockDeclaration

object VariableParser {

    fun findFB(fbId: List<String>, compositeFb: CompositeFBTypeDeclaration): FBTypeDeclaration? {
        var fbs: List<FunctionBlockDeclaration> = compositeFb.network.functionBlocks
        var curFb: FBTypeDeclaration? = null
        for(id in fbId){
            curFb = fbs.stream().filter { it: FunctionBlockDeclaration -> it.name == id
            }.findFirst()
                .get().typeReference.getTarget()!!
            if (curFb is CompositeFBTypeDeclaration){
                fbs = curFb.network.functionBlocks
            }
        }
        return curFb
    }

    private fun getEventType(fbId: List<String>, id: String, compositeFb: CompositeFBTypeDeclaration, project: MPSProject): SystemStateEventType {

        var type = SystemStateEventType.EI_UPDATE
        project.modelAccess.runReadAction {
            var curFb = findFB(fbId, compositeFb)
            val inputEventOpt = curFb!!.inputEvents.stream().filter { eventId: EventDeclaration ->
                id == eventId.name
            }.findFirst()
            if(inputEventOpt.isPresent) {
                type =  SystemStateEventType.EI_UPDATE
            }

            else{
                val outputEventOpt = curFb!!.outputEvents.stream().filter { eventId: EventDeclaration ->
                    id == eventId.name
                }.findFirst()

                if(outputEventOpt.isPresent) {
                    type =  SystemStateEventType.EO_UPDATE
                }
            }

        }
        return type
    }

    fun getVariableType(fbId: List<String>, id: String, compositeFb: CompositeFBTypeDeclaration, project: MPSProject): SystemStateEventType{
        var type = SystemStateEventType.VV_UPDATE
        project.modelAccess.runReadAction {
            var curFb = findFB(fbId, compositeFb)
            val inputEventOpt = curFb!!.inputParameters.stream().filter { varId: ParameterDeclaration ->
                id == varId.name
            }.findFirst()
            if(inputEventOpt.isPresent) {
                type =  SystemStateEventType.VI_UPDATE
            }

            else{
                val outputEventOpt = curFb!!.outputParameters.stream().filter { varId: ParameterDeclaration ->
                    id == varId.name
                }.findFirst()

                if(outputEventOpt.isPresent) {
                    type =  SystemStateEventType.VO_UPDATE
                }
            }

        }
        return type
    }

    fun splitLine(variable: String, info: String, compositeFb: CompositeFBTypeDeclaration, project: MPSProject):
            SystemStateEvent?{
        try {

            var data = variable.split(".") //
            val id = data.last()

            alpha_reg.find(id)?.let { return getAlphaEvent(id, data, info) }
            beta_reg.find(id)?.let { return getBetaEvent(id, data, info)     }
            if(id.equals(q_reg)) {return getQEvent(id, data, info)        }
            if(id.equals(na_reg)) { return getNaEvent(id, data, info)   }
            if(id.equals(ni_reg)) { return getNiEvent(id, data, info)   }

            if(data.size >= 2) {//Event or variable

                event_reset.find(id)?.let { return null } //no event_INIT_reset or set
                event_set.find(id)?.let { return null }

                // now we have Event or Variable
                // CFB1...FB_eventName - event
                // CFB1...FB.Name - variable

                val eventInfo = id.split("_")

                if (eventInfo.size == 2) //this is event
                {
                    if (info == "FALSE"){return null}
                    var fbId = data.subList(1, data.lastIndex) + eventInfo[0]

                    return SystemStateEvent(
                                fbId,
                                getEventType(fbId, eventInfo.last(), compositeFb, project),
                                arrayOf(eventInfo.last()))
                } else { //Variable??
                    val fbId = data.subList(1, data.lastIndex)
                    return SystemStateEvent(fbId, getVariableType(fbId, id, compositeFb, project),
                    arrayOf(id, info))

                }
            }
        }
        catch (e: Exception) {
            PluginManager.getLogger().error(variable+info);
        }
        return null
    }



    fun getAlphaEvent(id: String, data: List<String>, info: String): SystemStateEvent {
        val lastFbId = id.split("_alpha")[0]
        var fbId = data.subList(1, data.lastIndex) + lastFbId
        return SystemStateEvent(fbId, SystemStateEventType.ALPHA_UPDATE,
                arrayOf(info))
    }

    fun getBetaEvent(id: String, data: List<String>, info: String): SystemStateEvent {
        val lastFbId = id.split("_beta")[0]
        var fbId = data.subList(1, data.lastIndex) + lastFbId
        return SystemStateEvent(fbId, SystemStateEventType.BETA_UPDATE,
                arrayOf(info))
    }

    fun getQEvent(id: String, data: List<String>, info: String): SystemStateEvent {
        val fb_id = data.subList(1, data.lastIndex)
        return SystemStateEvent(fb_id, SystemStateEventType.Q_UPDATE,
                arrayOf(info.slice(0.. info.lastIndex- qDataDelimeter.length)))
    }

    fun getNaEvent(id: String, data: List<String>, info: String): SystemStateEvent {
        val fbId = data.subList(1, data.lastIndex)
        return SystemStateEvent(fbId, SystemStateEventType.NA_UPDATE,
                arrayOf(info))
    }

    fun getNiEvent(id: String, data: List<String>, info: String): SystemStateEvent {
        val fbId = data.subList(1, data.lastIndex)
        return SystemStateEvent(fbId, SystemStateEventType.NI_UPDATE,
                arrayOf(info))
    }

    val alpha_reg = Regex(""".*_alpha$""")
    val beta_reg = Regex(""".*_beta$""")
    val event_reset = Regex("""/(?:event_)(.*)(?:_reset)/""")
    val event_set = Regex("""/(?:event_)(.*)(?:_set)/""")

    val q_reg = "Q_smv"
    val qDataDelimeter = "_ecc"
    val na_reg = "NA"
    val ni_reg = "NI"
}