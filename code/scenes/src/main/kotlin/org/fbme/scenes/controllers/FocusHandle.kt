package org.fbme.scenes.controllers

class FocusHandle(private val onFocusLost: Runnable) {
    fun onFocusLost() {
        onFocusLost.run()
    }
}
