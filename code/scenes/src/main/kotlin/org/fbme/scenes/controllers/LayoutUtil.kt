package org.fbme.scenes.controllers

import jetbrains.mps.editor.runtime.style.StyleAttributes
import jetbrains.mps.nodeEditor.EditorSettings
import jetbrains.mps.openapi.editor.style.Style

object LayoutUtil {
    fun getScale(style: Style): Float {
        return scale(getLineSize(style))
    }

    fun scale(lineSize: Int): Float {
        return lineSize.toFloat() / 100
    }

    fun getLineSize(style: Style): Int {
        return (getFontSize(style) * EditorSettings.getInstance().lineSpacing).toInt()
    }

    fun getFontSize(style: Style): Int {
        val sizeFromStyle = style.get(StyleAttributes.FONT_SIZE)
        return sizeFromStyle ?: EditorSettings.getInstance().fontSize
    }

    fun setFontSize(style: Style, fontSize: Int) {
        val validFontSize = if (fontSize < 1) 1 else fontSize
        val currentOrDefault = style.get(StyleAttributes.FONT_SIZE) ?: EditorSettings.getInstance().fontSize
        if (currentOrDefault == validFontSize) {
            return
        }
        style.set(StyleAttributes.FONT_SIZE, validFontSize)
    }
}
