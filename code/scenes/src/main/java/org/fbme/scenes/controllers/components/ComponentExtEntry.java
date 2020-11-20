package org.fbme.scenes.controllers.components;

class ComponentExtEntry<CompT, CompExtT, FormT> {
    final CompExtT myComponentExt;
    final CompT myComponent;

    final ComponentEntry<CompT, FormT> myComponentEntry;

    final ComponentExtController<FormT> myController;

    ComponentExtEntry(ComponentsExtensionsFacility<CompT, CompExtT, FormT> facility, CompExtT componentExt, CompT component) {
        myComponentExt = componentExt;
        myComponent = component;
        myComponentEntry = facility.myComponentsFacility.myComponents.get(component);
        myController = facility.myControllerFactory.create(facility.myComponentsFacility.myEditor.getContext(), myComponentExt, myComponentEntry.myController);
    }
}
