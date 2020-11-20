package org.fbme.scenes.controllers;

import java.util.HashSet;
import java.util.Set;

public class DefaultSelectionModel<T> extends SelectionModelBase<T> {

    public final Set<T> mySelectedComponents = new HashSet<T>();

    @Override
    public void setSelected(T component, boolean selected) {
        if (selected) {
            mySelectedComponents.add(component);
        } else {
            mySelectedComponents.remove(component);
        }
    }

    @Override
    public void clear() {
        mySelectedComponents.clear();
    }

    @Override
    public Set<T> getSelectedComponents() {
        return new HashSet<T>(mySelectedComponents);
    }
}
