package org.fbme.lib.st.types

import org.fbme.lib.common.Identifier

interface DerivedType : DataType {
    val identifier: Identifier
    val declaration: DataTypeDeclaration?
}
