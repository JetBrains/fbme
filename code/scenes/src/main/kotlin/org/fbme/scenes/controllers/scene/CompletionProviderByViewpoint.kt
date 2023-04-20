package org.fbme.scenes.controllers.scene

import org.fbme.scenes.controllers.SceneViewpoint
import org.fbme.scenes.viewmodel.PositionalCompletionItem
import java.util.function.Supplier

class CompletionProviderByViewpoint(
    private val viewpoint: SceneViewpoint,
    private val completionProvider: Supplier<List<PositionalCompletionItem>>
) : SceneCompletionProvider {
    override val actions: List<SceneCompletionAction>
        get() {
            val res: MutableList<SceneCompletionAction> = ArrayList()
            for (completionItem in completionProvider.get()) {
                res.add(object : SceneCompletionAction {
                    override fun getMatchingText(pattern: String?): String? {
                        return completionItem.getMatchingText(pattern)
                    }

                    override val descriptionText: String?
                        get() = completionItem.descriptionText

                    override fun invoke(pattern: String?, x: Int, y: Int) {
                        val modelX = viewpoint.translateFromEditorX(x)
                        val modelY = viewpoint.translateFromEditorY(y)
                        completionItem.invoke(pattern, modelX, modelY)
                    }
                })
            }
            return res
        }
}
