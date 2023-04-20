package org.fbme.ide.richediting.adapters.fbnetwork.fb

import jetbrains.mps.nodeEditor.cells.EditorCell_Collection
import java.awt.Graphics2D
import java.awt.Point
import java.awt.Rectangle

interface FBCell {
    val width: Int
    val height: Int
    fun paintTrace(g: Graphics2D, x: Int, y: Int)
    fun relayout()
    val bottomPortsCount: Int
    val inputBottomPortsCount: Int
    val outputBottomPortsCount: Int
    val inputDataPortsCount: Int
    val outputDataPortsCount: Int
    val socketPortsCount: Int
    val plugPortsCount: Int
    val eventPortsCount: Int
    val inputEventPortsCount: Int
    val outputEventPortsCount: Int
    fun getInputEventPortPosition(eventNumber: Int): Point
    fun getOutputEventPortPosition(eventNumber: Int): Point
    fun getInputDataPortPosition(dataNumber: Int): Point
    fun getOutputDataPortPosition(dataNumber: Int): Point
    fun getSocketPortPosition(dataNumber: Int): Point
    fun getPlugPortPosition(dataNumber: Int): Point
    fun getInputEventPortBounds(eventNumber: Int): Rectangle
    fun getOutputEventPortBounds(eventNumber: Int): Rectangle
    fun getInputDataPortBounds(dataNumber: Int): Rectangle
    fun getOutputDataPortBounds(dataNumber: Int): Rectangle
    fun getSocketPortBounds(socketNumber: Int): Rectangle
    fun getPlugPortBounds(plugNumber: Int): Rectangle
    val rootCell: EditorCell_Collection
    fun canStartMoveAt(x: Int, y: Int): Boolean
    val bounds: Rectangle
}
