package org.fbme.debugger.simulator

import org.fbme.debugger.common.trace.ExecutionTrace

interface Simulator {
    val trace: ExecutionTrace
}