package org.fbme.debugger.simulator

import org.fbme.debugger.common.state.State
import org.fbme.debugger.common.trace.ExecutionTrace
import org.fbme.lib.common.Declaration

sealed class Simulator(
    @get:JvmSynthetic
    internal open val declaration: Declaration,
    @get:JvmSynthetic
    internal open val state: State,
    val trace: ExecutionTrace,
)
