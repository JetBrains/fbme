package org.fbme.lib.iec61499.stringify

import org.fbme.lib.iec61499.declarations.AuxiliaryData
import org.jdom.Element

class AuxiliaryDataPrinter(private val myDeclaration: AuxiliaryData, val element: Element) {

    fun print() {
        if (myDeclaration.guid != null) element.setAttribute("GUID", myDeclaration.guid)
        if (myDeclaration.comment != null) element.setAttribute("Comment", myDeclaration.comment)

        myDeclaration.attributes.forEach { attribute ->
            val attributeElement = Element("Attribute")
            if (attribute.name != null) attributeElement.setAttribute("Name", attribute.name)
            if (attribute.value != null) attributeElement.setAttribute("Value", attribute.value)
            if ((attribute.name != null) or  (attribute.value != null)) {
                element.addContent(attributeElement)
            }
        }

        if (myDeclaration.identificationStandard != null) {
            val identificationStandardElement = Element("Identification")
            identificationStandardElement.setAttribute("Standard", myDeclaration.identificationStandard)
            element.addContent(identificationStandardElement)
        }

        if (myDeclaration.versionInfo != null) {
            val versionInfoElement = Element("VersionInfo")
            val organization = myDeclaration.versionInfo!!.organization
            if (organization != null) versionInfoElement.setAttribute("Organization", organization)
            val version = myDeclaration.versionInfo!!.version
            if (version != null) versionInfoElement.setAttribute("Version", version)
            val author = myDeclaration.versionInfo!!.author
            if (author != null) versionInfoElement.setAttribute("Author", author)
            val date = myDeclaration.versionInfo!!.date
            if (date != null) versionInfoElement.setAttribute("Date", date)
            val remarks = myDeclaration.versionInfo!!.remarks
            if (remarks != null) versionInfoElement.setAttribute("Remarks", remarks)
            element.addContent(versionInfoElement)
        }

    }

}