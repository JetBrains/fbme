package org.fbme.ide.platform.editor

import jetbrains.mps.util.containers.ConcurrentHashSet

class EditorProjectionControllerRegistry private constructor() {
    val factories: MutableSet<EditorProjectionController.Factory> = ConcurrentHashSet()

    fun register(factory: EditorProjectionController.Factory) {
        factories.add(factory)
    }

    fun unregister(factory: EditorProjectionController.Factory) {
        factories.remove(factory)
    }

    companion object {
        val instance = EditorProjectionControllerRegistry()
    }
}
