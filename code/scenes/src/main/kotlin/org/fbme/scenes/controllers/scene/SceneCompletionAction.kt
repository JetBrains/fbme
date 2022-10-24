package org.fbme.scenes.controllers.scene

interface SceneCompletionAction {
    fun getMatchingText(pattern: String?): String?
    val descriptionText: String?
    operator fun invoke(pattern: String?, x: Int, y: Int)
}
