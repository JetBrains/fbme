package org.fbme.lib.iec61499.fbnetwork

open class ConnectionPath @JvmOverloads constructor(
    val kind: Kind = Kind.Straight,
    val dX1: Int = 0,
    val dY: Int = 0,
    val dX2: Int = 0
) {

    constructor(dx1: Int, dy: Int, dx2: Int) : this(Kind.FourAngles, dx1, dy, dx2)
    constructor(dx: Int) : this(Kind.TwoAngles, dx, 0, 0)

    fun copyDX1(dx1: Int): ConnectionPath {
        return ConnectionPath(kind, dx1, dY, dX2)
    }

    fun copyDY(dy: Int): ConnectionPath {
        return ConnectionPath(kind, dX1, dy, dX2)
    }

    fun copyDX2(dx2: Int): ConnectionPath {
        return ConnectionPath(kind, dX1, dY, dx2)
    }

    enum class Kind {
        Straight, TwoAngles, FourAngles, MoreThanFour
    }
}
