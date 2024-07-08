package org.fbme.smvDebugger.fb2smv.AbstractConverters

import jetbrains.mps.project.MPSProject
import org.fbme.lib.iec61499.declarations.CompositeFBTypeDeclaration
import org.fbme.lib.iec61499.declarations.FBTypeDeclaration
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
 5) generateOutputVariablesUpdate - Iterate over algs 2d output generation
 6) names of composite blocks???

 */
abstract class AbstractFBDConverter(val fileExtention: String) {
    val fbTypesSet = HashSet<FBTypeDeclaration>() //needs to be cleaned each new run
    val buf = StringBuilder() //needs to be cleaned each new run
    var basicFBConverter: AbstractBasicFBConverter? = null
    var compositeFBConverter: AbstractCompositeFBConverter? = null
    var mainFunction: AbstractMainConverter? = null
    var data: VerifiersData? = null // TODO can be tuned from UI (NDT)


    private fun compositeBlockNetworkTraversal(compositeFb: CompositeFBTypeDeclaration){
        if( fbTypesSet.contains(compositeFb)) return
        val fbs: List<FunctionBlockDeclaration> = compositeFb.network.functionBlocks
        for (fb in fbs) {
            //if we have already generated definition for this FB type
            if(fbTypesSet.contains(fb.typeReference.getTarget())){
                continue
            }
            //composite or not?
            if (fb.typeReference.getTarget() is CompositeFBTypeDeclaration){
                compositeBlockNetworkTraversal(fb.typeReference.getTarget() as CompositeFBTypeDeclaration)
                fbTypesSet.add(compositeFb)
            }else{
                basicFBConversion(fb.type)
                fb.typeReference.getTarget()?.let { fbTypesSet.add(it) }
            }
        }
        compositeFBConversion(compositeFb)

    }

    abstract fun compositeFBConversion(compositeFb: CompositeFBTypeDeclaration)

    abstract fun basicFBConversion(fb: FBTypeDescriptor)

    fun convertFB(
        fbPath: Path, compositeFb: CompositeFBTypeDeclaration,
        project: MPSProject
    ): Path? {
       project.modelAccess.runReadAction {
            val file = File(
                    fbPath.pathString.substring(0, fbPath.pathString.lastIndexOf("."))
                      + "." + fileExtention)


            compositeBlockNetworkTraversal(compositeFb)
            mainFunction?.generateMainFunction(compositeFb, buf)
            file.writeText(buf.toString())
            buf.clear()
           fbTypesSet.clear()
       }
        return null
    }



}