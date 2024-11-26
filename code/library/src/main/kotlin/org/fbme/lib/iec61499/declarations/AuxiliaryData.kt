package org.fbme.lib.iec61499.declarations

import org.fbme.lib.common.Element

interface AuxiliaryData : Element {
    var guid: String?
    var comment: String?
    val attributes: MutableList<AttributeDeclaration>
    var identificationStandard: String?
    var versionInfo: VersionInfo?
}