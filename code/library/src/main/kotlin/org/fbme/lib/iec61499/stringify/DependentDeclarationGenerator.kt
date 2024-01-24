package org.fbme.lib.iec61499.stringify

import org.fbme.lib.common.Declaration
import org.fbme.lib.common.RootElement
import org.fbme.lib.iec61499.declarations.CATBlockTypeDeclaration
import org.fbme.lib.iec61499.declarations.FBTypeDeclaration
import org.fbme.lib.iec61499.declarations.HMIInterfaceTypeDeclaration
import org.fbme.lib.iec61499.parser.ConverterArguments
import org.fbme.lib.iec61499.parser.Iec61499ConverterConfiguration

class DependentDeclarationGenerator(private val myDeclaration: Declaration, private val converterArguments: Iec61499ConverterConfiguration) {


    fun generate(): List<RootElement> {
        val rootElements: List<FBTypeDeclaration> = when (myDeclaration) {
            is HMIInterfaceTypeDeclaration -> HMIInterfaceTypeGenerator(myDeclaration, converterArguments).generateDependents()
            else -> listOf()
        }


        return rootElements
    }

    fun getName(): String {
        val name = when (myDeclaration) {
            is HMIInterfaceTypeDeclaration -> HMIInterfaceTypeGenerator.getDeclarationName(myDeclaration.name)
            else -> myDeclaration.name
        }
        return name
    }

    fun getIdentifier(): String {
        val name = when (myDeclaration) {
            is HMIInterfaceTypeDeclaration -> HMIInterfaceTypeGenerator.getDeclarationName(myDeclaration.identifier.toString())
            else -> myDeclaration.name
        }
        return name
    }
}