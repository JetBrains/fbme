package org.fbme.integration.nxt.refactorings

class CoordinateShift(xInput: Int, private val xOutput: Int) {
    var yDiff = 50
    private var yInput = 50
    private var yOutput = 50
    private val xInput: Int

    init {
        this.xInput = -xInput
    }

    fun getY(type: Type): Int {
        return if (type == Type.INPUT) yInput else yOutput
    }

    fun getX(type: Type): Int {
        return if (type == Type.INPUT) xInput else xOutput
    }

    fun setY(type: Type, value: Int) {
        if (type == Type.INPUT) {
            yInput = value
        } else {
            yOutput = value
        }
    }

    fun adjustYForParameters() {
        yInput = Math.max(yInput, yOutput) + 2 * yDiff
        yOutput = yInput
    }
}