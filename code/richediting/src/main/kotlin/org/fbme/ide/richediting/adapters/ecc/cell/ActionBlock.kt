package org.fbme.ide.richediting.adapters.ecc.cell

import kotlin.math.max

class ActionBlock(val algorithm: AlgorithmCell, val output: OutputCell) {
    fun relayout() {
        algorithm.relayoutAll()
        output.relayout()
    }

    fun newWidth(oldWidth: Int): Int {
        val maxTmp = max(algorithm.totalWidth, output.width)
        return max(oldWidth, maxTmp)
    }

    fun setWidth(width: Int) {
        algorithm.totalWidth = width
        output.width = width
    }

    fun getHeight(padding: Int): Int {
        return algorithm.totalHeight + output.height + 2 * padding
    }

    fun moveTo(dx: Int, dy: Int, padding: Int, currentHeight: Int): Int {
        var h = currentHeight
        algorithm.moveToAll(dx, dy, h)
        h += algorithm.totalHeight + padding
        output.moveTo(dx, dy + h)
        h += output.height + padding
        return h
    }
}
