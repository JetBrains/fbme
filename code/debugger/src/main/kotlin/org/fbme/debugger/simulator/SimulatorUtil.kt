package org.fbme.debugger.simulator

import org.fbme.debugger.common.value.Value

fun ResourceSimulatorImpl.applyContext(otherSimulator: ResourceSimulatorImpl) {
    for ((fbName, fbSimulator) in otherSimulator.children) {
        children[fbName]!!.applyContext(fbSimulator)
    }
}

private fun FBSimulatorImpl.applyFBContext(otherSimulator: FBSimulatorImpl) {
    for ((name, value) in otherSimulator.candidates) {
        candidates[name] = value.copy()
    }
    for (name in otherSimulator.deferredTriggers) {
        deferredTriggers.add(name)
    }
}

fun FBSimulatorImpl.applyContext(otherSimulator: FBSimulatorImpl) {
    when (this) {
        is CompositeFBSimulator -> applyContext(otherSimulator as CompositeFBSimulator)
        is BasicFBSimulator -> applyContext(otherSimulator as BasicFBSimulator)
        is ServiceFBSimulator -> applyContext(otherSimulator as ServiceFBSimulator)
    }
}

fun CompositeFBSimulator.applyContext(otherSimulator: CompositeFBSimulator) {
    applyFBContext(otherSimulator)
    for ((fbName, fbSimulator) in otherSimulator.children) {
        children[fbName]!!.applyContext(fbSimulator)
    }
}

fun BasicFBSimulator.applyContext(otherSimulator: BasicFBSimulator) {
    applyFBContext(otherSimulator)
}

fun ServiceFBSimulator.applyContext(otherSimulator: ServiceFBSimulator) {
    applyFBContext(otherSimulator)
}
