package org.fbme.ide.richediting.adapters.fbnetwork

import jetbrains.mps.nodeEditor.EditorSettings
import jetbrains.mps.openapi.editor.style.Style
import org.fbme.lib.iec61499.fbnetwork.ConnectionPath
import org.fbme.scenes.controllers.LayoutUtil.getFontSize
import java.awt.Graphics
import java.awt.Point
import java.util.function.BiConsumer
import java.util.function.BiFunction

object FBConnectionUtils {
    const val ENDPOINTS_PADDING = 40
    private const val ENDPOINT_HOVER_LENGTH = 20

    @JvmStatic
    fun getPathFactory(style: Style): BiFunction<Point, Point, FBConnectionPath> {
        return BiFunction { source: Point, target: Point ->
            if (target.x - source.x < 2 * padding(style)) {
                var y = (source.y + target.y) / 2
                if (y >= source.y && y - padding(style) < source.y) {
                    y = source.y + padding(style)
                } else if (y < source.y && y + padding(style) > source.y) {
                    y = source.y - padding(style)
                }
                val x1 = source.x + padding(style)
                val x2 = target.x - padding(style)
                FBConnectionPath(source, target, ConnectionPath.Kind.FourAngles, x1, y, x2)
            } else {
                val x1 = (source.x + target.x) / 2
                FBConnectionPath(source, target, ConnectionPath.Kind.TwoAngles, x1, 0, 0)
            }
        }
    }

    @JvmStatic
    fun getPathPainter(style: Style): BiConsumer<Graphics, FBConnectionPath> {
        return BiConsumer { g: Graphics, path: FBConnectionPath ->
            FBConnectionPathPainter.setupRegularPathPaint(g, width(style).toFloat())
            FBConnectionPathPainter(path, null, hoverLength(style)).paint(g, false)
        }
    }

    private fun padding(style: Style): Int {
        return getFontSize(style) * ENDPOINTS_PADDING / EditorSettings.getInstance().fontSize
    }

    private fun hoverLength(style: Style): Int {
        return getFontSize(style) * ENDPOINT_HOVER_LENGTH / EditorSettings.getInstance().fontSize
    }

    private fun width(style: Style): Int {
        return getFontSize(style) / EditorSettings.getInstance().fontSize
    }
}
