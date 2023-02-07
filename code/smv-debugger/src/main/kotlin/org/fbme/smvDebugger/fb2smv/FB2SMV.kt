package org.fbme.smvDebugger.fb2smv

import org.fbme.smvDebugger.fb2smv.AbstractConverters.AbstractFBDConverter

class FB2SMV: AbstractFBDConverter("smv")  {
    init {
        basicFBConverter = SMVFunctionBlockConverter()
        compositeFBConverter = SMVCompositeFBConverter()
    }

}