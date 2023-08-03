package org.fbme.smvDebugger.fb2smv.AbstractConverters

import jetbrains.mps.project.MPSProject
import org.fbme.ide.platform.traceProvider.SystemStateEventType
import org.fbme.lib.iec61499.declarations.CompositeFBTypeDeclaration
import org.fbme.lib.iec61499.declarations.FBTypeDeclaration
import org.fbme.lib.iec61499.declarations.ParameterDeclaration
import org.fbme.lib.iec61499.descriptors.FBPortDescriptor
import org.fbme.lib.iec61499.fbnetwork.FunctionBlockDeclaration
import org.fbme.lib.iec61499.fbnetwork.PortPath
import org.fbme.lib.st.types.DataType
import org.fbme.smvDebugger.execution.executionTraceGeneration.VariableParser

object CFBInfoService {
    fun getConnectedDataPort(fbc: CompositeFBTypeDeclaration, inputDataPort: FBPortDescriptor ):
            PortPath<*>? {
        return fbc.network.dataConnections.firstOrNull()
        {it.targetReference.getTarget()?.portTarget == inputDataPort.declaration}?.sourceReference?.getTarget()

    }

    fun getConnectedEventPort(fbc: CompositeFBTypeDeclaration, inputDataPort: FBPortDescriptor ):
            PortPath<*>? {
        return fbc.network.eventConnections.firstOrNull()
        {it.targetReference.getTarget()?.portTarget == inputDataPort.declaration}?.sourceReference?.getTarget()

    }

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

        fun getInputVariableTypeByName(fbId: List<String>, id: String, compositeFb: CompositeFBTypeDeclaration, project: MPSProject): DataType? {

        var type: DataType? = null
        project.modelAccess.runReadAction {
            var curFb = findFB(fbId, compositeFb)
            val inputEventOpt = curFb!!.inputParameters.stream().filter { varId: ParameterDeclaration ->
                id == varId.name
            }.findFirst()
            if(inputEventOpt.isPresent) {
                type = inputEventOpt.get().type
            }
        }
        return type
    }

    fun getOutputVariableTypeByName(fbId: List<String>, id: String, compositeFb: CompositeFBTypeDeclaration, project: MPSProject): DataType? {

        var type: DataType? = null
        project.modelAccess.runReadAction {
            var curFb = findFB(fbId, compositeFb)
            val outputEventOpt = curFb!!.outputParameters.stream().filter { varId: ParameterDeclaration ->
                id == varId.name
            }.findFirst()
            if(outputEventOpt.isPresent) {
                type = outputEventOpt.get().type
            }
        }
        return type
    }
}