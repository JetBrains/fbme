package org.fbme.lib.iec61499.parser

import org.fbme.lib.iec61499.declarations.FBInterfaceDeclaration


class AuxiliaryDataConverter(arguments: ConverterArguments, private val declaration: FBInterfaceDeclaration) :
    ConverterBase(arguments) {

    fun extractAuxiliaryData() {
        // Extract certain attributes from the root of element.
        val rootAttributes = listOf("GUID", "Comment", "Namespace")
        var attributeValue: String?
        for (attribute in rootAttributes) {
            attributeValue = element?.getAttributeValue(attribute)
            when (attribute) {
                "GUID" -> declaration.guid = attributeValue
                "Comment" -> declaration.comment = attributeValue
                "Namespace" -> declaration.namespace = attributeValue
            }
        }

        // Extract all data from Attribute children.
        val attributeElements = element?.getChildren("Attribute") //MutableList<AttributeElement>?
        attributeElements?.forEach { attributeElement ->
            val attributeDeclaration = factory.createAttributeDeclaration()
            attributeDeclaration.name = attributeElement.getAttributeValue("Name")
            attributeDeclaration.value = attributeElement.getAttributeValue("Value")
            declaration.attributes.add(attributeDeclaration)
        }

        // Element Identification, should only have one attribute,
        declaration.identificationStandard = element?.getChild("Identification")?.getAttributeValue("Standard")

        // Extract all data from VersionInfo child.
        val versionInfo = factory.createVersionInfo()
        versionInfo.organization = element?.getChild("VersionInfo")?.getAttributeValue("Organization")
        versionInfo.version = element?.getChild("VersionInfo")?.getAttributeValue("Version")
        versionInfo.author = element?.getChild("VersionInfo")?.getAttributeValue("Author")
        versionInfo.date = element?.getChild("VersionInfo")?.getAttributeValue("Date")
        versionInfo.remarks = element?.getChild("VersionInfo")?.getAttributeValue("Remarks")
        declaration.versionInfo = versionInfo
    }

    fun extractAuxiliaryData1() {
        val attributes = listOf("GUID", "Comment", "Namespace")
        var attributeValue: String
        for (attribute in attributes) {

            if (element?.getAttributeValue(attribute) != null) {
                attributeValue = element.getAttributeValue(attribute)
            } else {
                attributeValue = ""
            }

            when (attribute) {
                "GUID" -> declaration.guid = attributeValue
                "Comment" -> declaration.comment = attributeValue
                "Namespace" -> declaration.namespace = attributeValue
            }
        }
    }
}