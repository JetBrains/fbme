package org.fbme.scenes.controllers.components;

import org.fbme.scenes.controllers.LayoutSetting;

import java.awt.*;
import java.util.function.Supplier;

class ComponentEntry<CompT, FormT> {
    final CompT myComponent;

    final MyLayoutSetting myLayoutSetting;
    Supplier<FormT> myFormProvider;
    FormT myModelForm;
    FormT myTransformedForm;

    final ComponentController<FormT> myController;

    private final ComponentsFacility<CompT, FormT> myFacility;

    ComponentEntry(ComponentsFacility<CompT, FormT> facility, CompT component) {
        myComponent = component;
        myLayoutSetting = new MyLayoutSetting();
        myFacility = facility;
        myController = myFacility.myControllerFactory.create(myFacility.myEditor.getContext(), myComponent);
        myFormProvider = myFacility.myComponentSyncronizer.getForm(myComponent);
        myModelForm = myFormProvider.get();
        myLayoutSetting.myBounds = myController.getBounds(myModelForm);
    }

    void relayout() {
        myModelForm = myFormProvider.get();
        myLayoutSetting.myBounds = myController.getBounds(myModelForm);
        myController.updateCellWithForm((myTransformedForm != null ? myTransformedForm : myModelForm));
        myController.updateCellSelection(isSelected());
    }

    Rectangle getLayoutBounds() {
        Rectangle bounds = myController.getBounds(myModelForm);
        if (myTransformedForm != null) {
            bounds = bounds.union(myController.getBounds(myTransformedForm));
        }
        return bounds;
    }

    public boolean isSelected() {
        return myFacility.mySelection.isSelected(myComponent);
    }

    private class MyLayoutSetting implements LayoutSetting {
        private Rectangle myBounds;

        @Override
        public Rectangle getBounds() {
            return myBounds;
        }

        @Override
        public boolean canStartMoveAt(int x, int y) {
            return myController.canStartMoveAt(myModelForm, x, y);
        }

        @Override
        public void moveTo(int x, int y) {
            myFacility.myComponentSyncronizer.setForm(myComponent, myController.translateForm(myModelForm, x - myBounds.x, y - myBounds.y));
        }
    }
}
