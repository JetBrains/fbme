package org.fbme.lib.iec61499.fbnetwork

import java.awt.Point

class LongConnectionPath(dx1: Int, dy: Int, dx2: Int, val bendPoints: List<Point>) :
    ConnectionPath(Kind.MoreThanFour, dx1, dy, dx2)
