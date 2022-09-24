package org.fbme.scenes.controllers.scene

class SceneStateKey<T>(private val id: String) {
    override fun equals(other: Any?): Boolean {
        if (this === other) {
            return true
        }
        if (other !is SceneStateKey<*>) {
            return false
        }
        return id == other.id
    }

    override fun hashCode(): Int {
        return id.hashCode()
    }

    override fun toString(): String {
        return "SceneStateKey{$id}"
    }
}
