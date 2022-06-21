package org.fbme.smvDebugger.executionTraceGeneration

import com.intellij.ide.plugins.PluginManager
import jetbrains.mps.project.MPSProject
import org.fbme.ide.platform.traceProvider.SystemStateEvent
import org.fbme.ide.platform.traceProvider.SystemStateEventType
import org.fbme.ide.platform.traceProvider.SystemStateUpdate
import org.fbme.lib.iec61499.declarations.BasicFBTypeDeclaration
import org.fbme.lib.iec61499.declarations.CompositeFBTypeDeclaration
import org.fbme.lib.iec61499.declarations.FBTypeDeclaration
import org.fbme.lib.iec61499.declarations.ParameterDeclaration
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

                if(outputEventOpt.isPresent) type =  SystemStateEventType.VO_UPDATE
            }

        }
        return type
    }

    fun splitLine(variable: String, info: String, compositeFb: CompositeFBTypeDeclaration, project: MPSProject) : SystemStateUpdate?{
        try {

            var data = variable.split(".")
            val id = data.last()

            alpha_reg.find(id)?.let { return getAlphaEvent(id, data, info) }
            beta_reg.find(id)?.let { return getBetaEvent(id, data, info)     }
            if(id.equals(q_reg)) {return getQEvent(id, data, info)        }
            if(id.equals(na_reg)) { return getNaEvent(id, data, info)   }
            if(id.equals(ni_reg)) { return getNiEvent(id, data, info)   }

            if(data.size >= 2) {//Event or variable
                val eventInfo = id.split("_")
                if (eventInfo.size > 1 && eventInfo[0] == "event") //this is event
                {
                    var fbId = data.subList(1, data.lastIndex)
                    return SystemStateUpdate(
                        null,
                        arrayOf(
                            SystemStateEvent(
                                fbId, SystemStateEventType.EMMITS_EVENT,
                                (eventInfo.subList(1, eventInfo.lastIndex) + info).toTypedArray()
                            )
                        )
                    )
                } else { //Variable??
                    val fbId = data.subList(1, data.lastIndex)
                    return SystemStateUpdate(null,
                        arrayOf(SystemStateEvent(fbId, getVariableType(fbId, id, compositeFb, project),
                    arrayOf(id, info))))

                }
            }
        }
        catch (e: Exception) {
            PluginManager.getLogger().error(variable+info);
        }
        return null
    }

    fun getAlphaEvent(id: String, data: List<String>, info: String): SystemStateUpdate {
        val lastFbId = id.split("_alpha")[0]
        var fbId = data.subList(1, data.lastIndex) + lastFbId
        return SystemStateUpdate(null,
            arrayOf(SystemStateEvent(fbId, SystemStateEventType.ALPHA_UPDATE,
                arrayOf(info))))
    }

    fun getBetaEvent(id: String, data: List<String>, info: String): SystemStateUpdate {
        val lastFbId = id.split("_beta")[0]
        var fbId = data.subList(1, data.lastIndex) + lastFbId
        return SystemStateUpdate(null,
            arrayOf(SystemStateEvent(fbId, SystemStateEventType.BETA_UPDATE,
                arrayOf(info))))
    }

    fun getQEvent(id: String, data: List<String>, info: String): SystemStateUpdate {
        val fb_id = data.subList(1, data.lastIndex)
        return SystemStateUpdate(null,
            arrayOf(SystemStateEvent(fb_id, SystemStateEventType.Q_UPDATE,
                arrayOf(info.slice(0.. info.lastIndex- qDataDelimeter.length)))))
    }

    fun getNaEvent(id: String, data: List<String>, info: String): SystemStateUpdate {
        val fbId = data.subList(1, data.lastIndex)
        return SystemStateUpdate(null,
            arrayOf(SystemStateEvent(fbId, SystemStateEventType.NA_UPDATE,
                arrayOf(info))))
    }

    fun getNiEvent(id: String, data: List<String>, info: String): SystemStateUpdate {
        val fbId = data.subList(1, data.lastIndex)
        return SystemStateUpdate(null,
            arrayOf(SystemStateEvent(fbId, SystemStateEventType.NI_UPDATE,
                arrayOf(info))))
    }

    val alpha_reg = Regex(""".*_alpha$""")
    val beta_reg = Regex(""".*_beta$""")
    val q_reg = "Q_smv"
    val qDataDelimeter = "_ecc"
    val na_reg = "NA"
    val ni_reg = "NI"
}