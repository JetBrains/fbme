package org.fbme.scenes.controllers;

import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import org.jetbrains.mps.openapi.module.SRepository;

import java.awt.*;
import java.util.HashMap;
import java.util.Map;
import java.util.Set;

public class DefaultLayoutModel<T> extends ROLayoutModelBase<T> implements LayoutModel<T> {
    private static final Point ZERO_ZERO = new Point(0, 0);

    private final Map<T, LayoutSetting> myComponentSettings = new HashMap<>();

    @NotNull
    private final SRepository myRepository;

    private DefaultLayoutMovementHandle myHandle;

    public DefaultLayoutModel(@NotNull SRepository repository) {
        myRepository = repository;
    }

    @Override
    public Set<T> components() {
        return myComponentSettings.keySet();
    }

    @Override
    public void addComponent(@NotNull T component, LayoutSetting setting) {
        myComponentSettings.put(component, setting);
        Rectangle bounds = setting.getBounds();
        fireAdded(component, bounds.x, bounds.y);
    }

    @Override
    public void removeComponent(@NotNull T component) {
        myComponentSettings.remove(component);
        fireRemoved(component);
    }

    @Nullable
    @Override
    public T findAt(int x, int y) {
        for (Map.Entry<T, LayoutSetting> componentEntry : myComponentSettings.entrySet()) {
            T component = componentEntry.getKey();
            LayoutSetting setting = componentEntry.getValue();
            if (setting != null && setting.getBounds().contains(x, y) && setting.canStartMoveAt(x, y)) {
                return component;
            }
        }
        return null;
    }

    @NotNull
    @Override
    public LayoutMovememntHandle moveComponents(@NotNull Set<T> components) {
        return (myHandle = new DefaultLayoutMovementHandle(components));
    }

    @NotNull
    @Override
    public Point getActivePosition(@NotNull T component) {
        Point modelPosition = getModelPosition(component);
        if (myHandle != null && myHandle.myComponentsToMove.contains(component)) {
            modelPosition.translate(myHandle.myDeltaX, myHandle.myDeltaY);
        }
        return modelPosition;
    }

    @Nullable
    @Override
    public Point getTracePosition(@NotNull T component) {
        if (myHandle != null && myHandle.myComponentsToMove.contains(component)) {
            return getModelPosition(component);
        }
        return null;
    }

    private Point getModelPosition(@NotNull T component) {
        LayoutSetting setting = myComponentSettings.get(component);
        if (setting == null) {
            return ZERO_ZERO;
        }
        return setting.getBounds().getLocation();
    }

    private class DefaultLayoutMovementHandle implements LayoutMovememntHandle {
        private final Set<T> myComponentsToMove;
        private int myDeltaX;
        private int myDeltaY;

        private DefaultLayoutMovementHandle(Set<T> componentsToMove) {
            myComponentsToMove = componentsToMove;
        }

        @Override
        public void cancel() {
            myHandle = null;
        }

        @Override
        public void complete() {
            myHandle = null;

            myRepository.getModelAccess().executeCommandInEDT(() -> {
                fireMoved(myComponentsToMove, myDeltaX, myDeltaY, true);

                for (T component : myComponentsToMove) {
                    LayoutSetting setting = myComponentSettings.get(component);

                    Rectangle bounds = setting.getBounds();
                    setting.moveTo(bounds.x + myDeltaX, bounds.y + myDeltaY);
                }
            });
        }

        @Override
        public void moveTo(int dx, int dy) {
            myDeltaX = dx;
            myDeltaY = dy;
            fireMoved(myComponentsToMove, myDeltaX, myDeltaY, false);
        }
    }

}
