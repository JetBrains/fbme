package org.fbme.lib.iec61131.converter

import org.fbme.lib.common.Declaration
import org.fbme.lib.iec61131.model.Iec61131Xml
import org.fbme.lib.iec61499.IEC61499Factory
import org.fbme.lib.iec61499.declarations.CompositeFBTypeDeclaration
import org.fbme.lib.st.STFactory

class ProjectConverter(
    private val factory: IEC61499Factory,
    private val stFactory: STFactory
) {
    fun getProjectNodes(path: String): List<Declaration> {
        val project = Iec61131Xml.serializeProject(path)
        val blockInterfaceService = BlocksInterfaceInfo(project.types.pous)
        val converterArguments = ConverterArguments(factory, stFactory, blockInterfaceService)
        val resDeclarations = getChildNodes(converterArguments, project)

        return resDeclarations + SystemConverter(project, converterArguments).createSystems()
    }

    private fun getChildNodes(
        converterArguments: ConverterArguments,
        project: Iec61131Xml.Project
    ): List<Declaration> {
        return project.types.pous.pouList.map { convertToCompositeFBType(it, converterArguments) }
    }

    private fun convertToCompositeFBType(
        xmlPou: Iec61131Xml.Pou,
        converterArguments: ConverterArguments
    ): CompositeFBTypeDeclaration {
        val fbdInfo = getFbdInfo(xmlPou)
        val compositeFbtd = converterArguments.factory.createCompositeFBTypeDeclaration(null)
        FbNetworkConverter(fbdInfo, converterArguments, "REQ", "CNF")
            .fillNetwork(compositeFbtd.network)
        FbInterfaceConverter(xmlPou, converterArguments).fillInterface(compositeFbtd)
        return compositeFbtd
    }
}