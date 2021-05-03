package org.fbme.scenes.controllers.scene;

import jetbrains.mps.openapi.editor.EditorComponent;
import jetbrains.mps.openapi.editor.cells.EditorCell;
import jetbrains.mps.openapi.editor.extensions.EditorExtension;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.mps.openapi.model.SNodeReference;

import java.util.HashMap;
import java.util.Map;

public class SceneStateManager {

    private static final Map<EditorComponent, SceneStateManager> INSTANCES = new HashMap<>();

    public static final EditorExtension EDITOR_EXTENSION = new EditorExtension() {

        public boolean isApplicable(@NotNull EditorComponent ec) {
            return true;
        }

        public void install(@NotNull EditorComponent ec) {
            INSTANCES.put(ec, new SceneStateManager());
        }

        public void uninstall(@NotNull EditorComponent ec) {
            SceneStateManager stateManager = INSTANCES.remove(ec);
            stateManager.myStates.clear();
        }
    };

    private final Map<StateId, Object> myStates = new HashMap<>();

    public SceneStateManager() {
    }

    public static SceneStateManager getInstance(@NotNull EditorComponent ec) {
        return INSTANCES.get(ec);
    }

    public <T> void storeState(EditorCell cell, SceneStateKey<T> key, T state) {
        myStates.put(new StateId(cell.getSNode().getReference(), cell.getCellId(), key), state);
    }

    public <T> T loadState(EditorCell cell, SceneStateKey<T> key) {
        //noinspection unchecked
        return (T) myStates.get(new StateId(cell.getSNode().getReference(), cell.getCellId(), key));
    }

    private static class StateId {
        private final SNodeReference myNodeRef;
//        private final String myCellId;
        private final SceneStateKey<?> myKey;

        private StateId(SNodeReference nodeRef, String cellId, SceneStateKey<?> key) {
            myNodeRef = nodeRef;
//            myCellId = cellId;
            myKey = key;
        }

        @Override
        public boolean equals(Object o) {
            if (this == o) {
                return true;
            }
            if (!(o instanceof StateId)) {
                return false;
            }

            StateId that = (StateId) o;
//            return myNodeRef.equals(that.myNodeRef) && myCellId.equals(that.myCellId) && myKey.equals(that.myKey);
            return myNodeRef.equals(that.myNodeRef) && myKey.equals(that.myKey);
        }

        @Override
        public int hashCode() {
            int result = 0;
            result = 31 * result + myNodeRef.hashCode();
//            result = 31 * result + myCellId.hashCode();
            result = 31 * result + myKey.hashCode();
            return result;
        }
    }
}
