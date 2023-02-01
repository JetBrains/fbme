package org.fbme.smvDebugger.fb2smv

import jetbrains.mps.project.MPSProject
import org.fbme.lib.iec61499.declarations.CompositeFBTypeDeclaration
import org.fbme.lib.iec61499.descriptors.FBTypeDescriptor
import org.fbme.lib.iec61499.fbnetwork.FunctionBlockDeclaration
import java.io.File
import java.nio.file.Path
import kotlin.io.path.pathString

/*
TODO
 1)INIT[...] - on ECC transitions
 2)REQ AND (PREV = INP) - on ECC transitions
 3) generateNA - when NA may be grater then 1
 4) fill maps

 */
abstract class AbstractFBConverter(val fileExtention: String) {
    var file: File? = null
    val fbTypesSet = HashSet<FBTypeDescriptor>()
    val fbService = FBInfoService()


    private fun networkTraversal(compositeFb: CompositeFBTypeDeclaration){
        if( fbTypesSet.contains(compositeFb.typeDescriptor)) return
        val fbs: List<FunctionBlockDeclaration> = compositeFb.network.functionBlocks
        for (fb in fbs) {
            //if we have already generated definition for this FB type
            if(fbTypesSet.contains(fb.type)) continue
            //composite or not?
            if (fb.typeReference is CompositeFBTypeDeclaration){
                networkTraversal(fb.typeReference as CompositeFBTypeDeclaration)
            }
            fbTraversal(fb.type)
            fbTypesSet.add(fb.type)
        }
    }

    private fun fbTraversal(fb: FBTypeDescriptor) {
        generateSignature(fb)
        generateLocalVariableDeclaration(fb)
        generateCountersDeclaration(fb)
        generateLocalVariableDefinition(fb)
        generateECCTransitions(fb)
        generateOSM(fb)
        generateNA(fb)
        generateNI(fb)
        generateInputVariablesUpdate(fb)
        generateOutputVariablesUpdate(fb)
        generateAlphaBeta(fb)
    }

    protected abstract fun generateAlphaBeta(fb: FBTypeDescriptor)

    protected abstract fun generateOutputVariablesUpdate(fb: FBTypeDescriptor)

    protected abstract fun generateInputVariablesUpdate(fb: FBTypeDescriptor)

    protected abstract fun generateCountersDeclaration(fb: FBTypeDescriptor)

    protected abstract fun generateNI(fb: FBTypeDescriptor)

    protected abstract fun generateNA(fb: FBTypeDescriptor)

    protected abstract fun generateOSM(fb: FBTypeDescriptor)

    protected abstract fun generateECCTransitions(fb: FBTypeDescriptor)

    protected abstract fun generateLocalVariableDefinition(fb: FBTypeDescriptor)

    protected abstract fun generateLocalVariableDeclaration(fb: FBTypeDescriptor)

    protected abstract fun generateSignature(fb: FBTypeDescriptor)

    fun convertFB(
        fbPath: Path, compositeFb: CompositeFBTypeDeclaration,
        project: MPSProject
    ): Path? {
        project.modelAccess.runReadAction {
            file = File(
                    fbPath.pathString.substring(0, fbPath.pathString.lastIndexOf("."))
                            + compositeFb.name + "." + fileExtention)

            networkTraversal(compositeFb)
            val fbs: List<FunctionBlockDeclaration> = compositeFb.network.functionBlocks
            val dataCon = compositeFb.network.dataConnections
            val eventCon = compositeFb.network.eventConnections
            for (fb in fbs) {

            }
        }
        return null
    }


}