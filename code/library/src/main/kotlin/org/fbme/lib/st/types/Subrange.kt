package org.fbme.lib.st.types

import org.fbme.lib.common.ContainedElement

interface Subrange: ContainedElement {
    var from: Int
    var to: Int
}
