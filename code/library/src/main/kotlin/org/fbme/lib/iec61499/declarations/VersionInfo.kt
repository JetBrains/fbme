package org.fbme.lib.iec61499.declarations

import org.fbme.lib.common.Element

interface VersionInfo : Element { // Maybe VersionInfoDeclaration would be a better name.
    var organization: String?
    var version: String?
    var author: String?
    var date: String?
    var remarks: String?
}