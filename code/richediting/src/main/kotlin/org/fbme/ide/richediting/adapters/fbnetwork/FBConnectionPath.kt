package org.fbme.ide.richediting.adapters.fbnetwork

import org.fbme.lib.iec61499.fbnetwork.ConnectionPath
import java.awt.Point

class FBConnectionPath {
    private val mySourcePosition: Point
    private val myTargetPosition: Point
    val pathKind: ConnectionPath.Kind
    val x1: Int
    val y: Int
    val x2: Int
    val bendPoints: MutableList<Point>

    constructor(sourcePosition: Point, targetPosition: Point, bendPoints: MutableList<Point>) {
        mySourcePosition = sourcePosition
        myTargetPosition = targetPosition
        this.bendPoints = bendPoints
        when (bendPoints.size) {
            0 -> {
                pathKind = ConnectionPath.Kind.Straight
                this.x2 = 0
                this.y = 0
                this.x1 = 0
            }

            2 -> {
                pathKind = ConnectionPath.Kind.TwoAngles
                x1 = bendPoints[0].x
                x2 = 0
                y = 0
            }

            4 -> {
                pathKind = ConnectionPath.Kind.FourAngles
                x1 = bendPoints[0].x
                y = bendPoints[1].y
                x2 = bendPoints[bendPoints.size - 1].x
            }

            else -> {
                pathKind = ConnectionPath.Kind.MoreThanFour
                x1 = bendPoints[0].x
                y = bendPoints[1].y
                x2 = bendPoints[bendPoints.size - 1].x
            }
        }
    }

    constructor(sourcePosition: Point, targetPosition: Point, pathKind: ConnectionPath.Kind, x1: Int, y: Int, x2: Int) {
        mySourcePosition = sourcePosition
        myTargetPosition = targetPosition
        this.pathKind = pathKind
        this.x1 = x1
        this.y = y
        this.x2 = x2
        bendPoints = ArrayList()
        when (pathKind) {
            ConnectionPath.Kind.Straight -> {
            }

            ConnectionPath.Kind.TwoAngles -> {
                bendPoints.add(Point(x1, mySourcePosition.y))
                bendPoints.add(Point(x1, myTargetPosition.y))
            }

            ConnectionPath.Kind.FourAngles -> {
                bendPoints.add(Point(x1, mySourcePosition.y))
                bendPoints.add(Point(x1, y))
                bendPoints.add(Point(x2, y))
                bendPoints.add(Point(x2, myTargetPosition.y))
            }

            ConnectionPath.Kind.MoreThanFour -> {
                // do nothing
            }
        }
    }

    constructor(sourcePosition: Point, targetPosition: Point) : this(
        sourcePosition,
        targetPosition,
        ArrayList<Point>()
    )

    val sourcePosition: Point
        get() = Point(mySourcePosition)
    val targetPosition: Point
        get() = Point(myTargetPosition)
}
