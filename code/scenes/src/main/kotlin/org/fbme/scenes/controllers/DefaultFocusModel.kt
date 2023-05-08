package org.fbme.scenes.controllers

class DefaultFocusModel : SceneFocusModel {
    private val handles = HashSet<FocusHandle>()

    override fun addFocus(focus: FocusHandle) {
        handles.add(focus)
    }

    override fun clearFocus() {
        for (handle in handles) {
            handle.onFocusLost()
        }
        handles.clear()
    }
}
