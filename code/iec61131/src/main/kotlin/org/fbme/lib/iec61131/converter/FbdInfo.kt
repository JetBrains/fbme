package org.fbme.lib.iec61131.converter

import org.fbme.lib.iec61131.model.Iec61131Xml

class FbdInfo(
    val name: String,
    val xmlFbd: Iec61131Xml.FBD,
    val xmlInterface: Iec61131Xml.Interface,
)