package org.fbme.scenes.controllers.diagram

import java.awt.Point
import java.util.function.BiFunction

interface ConnectionPathSynchronizer<ConnT, PathT> {
    fun getPath(connection: ConnT): (Point, Point) -> PathT
    fun setPath(connection: ConnT, path: PathT)
}