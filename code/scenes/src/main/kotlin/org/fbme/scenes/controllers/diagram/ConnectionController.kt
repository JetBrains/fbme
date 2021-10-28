package org.fbme.scenes.controllers.diagram

import jetbrains.mps.nodeEditor.cells.EditorCell
import java.awt.Graphics
import java.awt.Point
import java.awt.Rectangle
import java.util.function.BiFunction
import java.util.function.Function

interface ConnectionController<CursorT, PathT> {
    fun getEdgeTransformation(path: PathT, x: Int, y: Int): ((Point) -> PathT)?
    fun getSourceTransformation(path: PathT): ((Point) -> PathT)?
    fun getTargetTransformation(path: PathT, isSmart: Boolean): ((Point) -> PathT)?
    fun getEndpointsTransformation(path: PathT): ((Point, Point) -> PathT)?
    fun isSourceTransformableAt(path: PathT, x: Int, y: Int): Boolean
    fun isTargetTransformableAt(path: PathT, x: Int, y: Int): Boolean
    fun isSelectableAt(path: PathT, x: Int, y: Int): Boolean
    fun getCursorAt(path: PathT, x: Int, y: Int): CursorT?
    fun getBounds(path: PathT): Rectangle
    fun paintConnection(path: PathT, cursor: CursorT?, selected: Boolean, graphics: Graphics)
    fun paintTrace(path: PathT, graphics: Graphics)
    val connectionCell: EditorCell?
        get() = null

    fun updateCellWithPath(path: PathT) {}
    fun updateCellSelection(selected: Boolean) {}
}