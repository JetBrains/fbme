package org.fbme.lib.st.types

import org.fbme.lib.common.Identifier

interface DerivedType : NonGenericType {
    val identifier: Identifier
    val declaration: DataTypeDeclaration?
}
