package org.fbme.ide.platform.editor;

import jetbrains.mps.util.containers.ConcurrentHashSet;

import java.util.Set;

public class EditorProjectionControllerRegistry {

    private static final EditorProjectionControllerRegistry INSTANCE = new EditorProjectionControllerRegistry();

    public static EditorProjectionControllerRegistry getInstance() {
        return INSTANCE;
    }

    private final Set<EditorProjectionController.Factory> myFactories = new ConcurrentHashSet<>();

    private EditorProjectionControllerRegistry() {
    }

    public void register(EditorProjectionController.Factory factory) {
        myFactories.add(factory);
    }

    public void unregister(EditorProjectionController.Factory factory) {
        myFactories.remove(factory);
    }

    public Set<EditorProjectionController.Factory> getFactories() {
        return myFactories;
    }
}
