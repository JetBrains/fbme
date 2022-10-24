package org.fbme.scenes.viewmodel

interface PositionalCompletionItem {
    fun getMatchingText(pattern: String?): String?
    val descriptionText: String?
    operator fun invoke(pattern: String?, x: Int, y: Int)
}
