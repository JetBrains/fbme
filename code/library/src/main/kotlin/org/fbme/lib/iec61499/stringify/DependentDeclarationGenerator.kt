package org.fbme.lib.iec61499.stringify

import org.fbme.lib.common.Declaration
import org.fbme.lib.common.RootElement
import org.fbme.lib.iec61499.declarations.CATBlockTypeDeclaration
import org.fbme.lib.iec61499.declarations.FBTypeDeclaration
import org.fbme.lib.iec61499.declarations.HMIInterfaceTypeDeclaration
import org.fbme.lib.iec61499.parser.ConverterArguments

class DependentDeclarationGenerator(private val myDeclaration: Declaration, private val converterArguments: ConverterArguments) {


    fun generate(): List<RootElement> {
        val rootElements: List<FBTypeDeclaration> = when (myDeclaration) {
            is HMIInterfaceTypeDeclaration -> HMIInterfaceTypeGenerator(myDeclaration, converterArguments).generateDependents()
            else -> error("Unrecognized root declaration")
        }


        return rootElements
    }

}