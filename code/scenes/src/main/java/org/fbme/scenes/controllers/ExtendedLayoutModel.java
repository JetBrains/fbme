package org.fbme.scenes.controllers;

import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

import java.awt.*;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Map;
import java.util.Set;
import java.util.function.BiFunction;
import java.util.function.Function;

public class ExtendedLayoutModel<ResT, ExtT extends ResT, OrigT extends ResT> extends ROLayoutModelBase<ResT> {

    private final LayoutModel<OrigT> myBaseModel;
    private final Function<OrigT, Set<ExtT>> myExtensionsProvider;
    private final BiFunction<ExtT, Point, Point> myExtensionPositionProvider;
    private final BiFunction<ExtT, Point, Rectangle> myExtensionBoundsProvider;

    private final Map<OrigT, Set<ExtT>> myExtensions = new HashMap<>();
    private final Map<ExtT, OrigT> myExtensionOrigin = new HashMap<>();

    public ExtendedLayoutModel(
            LayoutModel<OrigT> baseModel,
            BiFunction<ExtT, Point, Point> extensionPositionProvider,
            BiFunction<ExtT, Point, Rectangle> extensionBoundsProvider,
            Function<OrigT, Set<ExtT>> extensionsProvider
    ) {
        myBaseModel = baseModel;
        myExtensionsProvider = extensionsProvider;
        myExtensionPositionProvider = extensionPositionProvider;
        myExtensionBoundsProvider = extensionBoundsProvider;

        for (OrigT component : myBaseModel.components()) {
            Point activePosition = myBaseModel.getActivePosition(component);
            addComponent(component, activePosition.x, activePosition.y);
        }

        myBaseModel.addListener(new ROLayoutModel.Listener<>() {
            public void onComponentAdded(@NotNull OrigT component, int x, int y) {
                fireAdded(component, x, y);
                addComponent(component, x, y);
            }

            public void onComponentRemoved(@NotNull OrigT component) {
                fireRemoved(component);
                Set<ExtT> extensions = myExtensionsProvider.apply(component);
                myExtensions.remove(component);
                for (ExtT extension : extensions) {
                    myExtensionOrigin.remove(extension);
                    fireRemoved(extension);
                }
            }

            public void onComponentsMoved(@NotNull Set<OrigT> components, int dx, int dy, boolean completed) {
                HashSet<ResT> all = new HashSet<>(components);
                for (OrigT component : components) {
                    Set<ExtT> ext = myExtensions.get(component);
                    if (ext != null) {
                        all.addAll(ext);
                    }
                }
                fireMoved(all, dx, dy, completed);
            }
        });
    }

    private void addComponent(OrigT component, int x, int y) {
        Set<ExtT> extensions = myExtensionsProvider.apply(component);
        myExtensions.put(component, extensions);
        Point componentPosition = new Point(x, y);
        for (ExtT extension : extensions) {
            myExtensionOrigin.put(extension, component);
            Point extensionPosition = myExtensionPositionProvider.apply(extension, componentPosition);
            fireAdded(extension, extensionPosition.x, extensionPosition.y);
        }
    }


    @Override
    public Set<ResT> components() {
        HashSet<ResT> res = new HashSet<>();
        res.addAll(myBaseModel.components());
        res.addAll(myExtensionOrigin.keySet());
        return res;
    }

    @Nullable
    @Override
    public ResT findAt(int x, int y) {
        // FIXME has to employ myExtensionBoundsProvider to handle extensions also
        return myBaseModel.findAt(x, y);
    }

    @NotNull
    @Override
    public Point getActivePosition(@NotNull ResT ext) {
        if (myExtensions.containsKey(ext)) {
            return myBaseModel.getActivePosition((OrigT) ext);
        }
        Point origPosition = myBaseModel.getActivePosition(myExtensionOrigin.get(ext));
        return myExtensionPositionProvider.apply((ExtT) ext, origPosition);
    }

    @Nullable
    @Override
    public Point getTracePosition(@NotNull ResT ext) {
        if (myExtensions.containsKey(ext)) {
            return myBaseModel.getTracePosition((OrigT) ext);
        }
        Point origPosition = myBaseModel.getTracePosition(myExtensionOrigin.get(ext));
        return myExtensionPositionProvider.apply((ExtT) ext, origPosition);
    }
}
