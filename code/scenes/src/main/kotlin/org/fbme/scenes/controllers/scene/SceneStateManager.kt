package org.fbme.scenes.controllers.scene

import jetbrains.mps.openapi.editor.EditorComponent
import jetbrains.mps.openapi.editor.cells.EditorCell
import jetbrains.mps.openapi.editor.extensions.EditorExtension
import org.jetbrains.mps.openapi.model.SNodeReference

class SceneStateManager {
    private val states: MutableMap<StateId, Any?> = HashMap()

    fun <T> storeState(cell: EditorCell, key: SceneStateKey<T>, state: T) {
        states[StateId(cell.sNode.reference, cell.cellId, key)] = state
    }

    fun <T> loadState(cell: EditorCell, key: SceneStateKey<T>): T? {
        return states[StateId(cell.sNode.reference, cell.cellId, key)] as T?
    }

    private class StateId(
        private val nodeRef: SNodeReference,
        private val cellId: String?,
        private val key: SceneStateKey<*>
    ) {
        override fun equals(other: Any?): Boolean {
            if (this === other) {
                return true
            }
            if (other !is StateId) {
                return false
            }
//            return nodeRef.equals(other.nodeRef) && cellId.equals(other.cellId) && key.equals(other.key);
            return nodeRef == other.nodeRef && key == other.key
        }

        override fun hashCode(): Int {
            var result = 0
            result = 31 * result + nodeRef.hashCode()
//            result = 31 * result + cellId.hashCode();
            result = 31 * result + key.hashCode()
            return result
        }
    }

    companion object {
        private val INSTANCES: MutableMap<EditorComponent, SceneStateManager> = HashMap()
        val EDITOR_EXTENSION: EditorExtension = object : EditorExtension {
            override fun isApplicable(ec: EditorComponent): Boolean {
                return true
            }

            override fun install(ec: EditorComponent) {
                INSTANCES[ec] = SceneStateManager()
            }

            override fun uninstall(ec: EditorComponent) {
                val stateManager = INSTANCES.remove(ec)
                stateManager!!.states.clear()
            }
        }

        fun getInstance(ec: EditorComponent): SceneStateManager? {
            return INSTANCES[ec]
        }
    }
}
