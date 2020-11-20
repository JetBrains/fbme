package org.fbme.scenes.controllers.scene;

import org.fbme.scenes.controllers.SceneFocusModel;
import org.jetbrains.annotations.NotNull;

public class BackgroundFocusLossFacility {

    @NotNull
    private final SceneEditor myScene;

    @NotNull
    private final SceneFocusModel myFocus;

    public BackgroundFocusLossFacility(@NotNull SceneEditor scene, @NotNull SceneFocusModel sceneFocus, Layer backgroundLayer) {
        myFocus = sceneFocus;
        myScene = scene;
        scene.addClickListener(backgroundLayer, new MyClickListener());
    }

    public class MyClickListener implements ClickEventListener {

        @Override
        public void onMouseClicked(ClickEvent event) {
            if (!(event.awt.isMetaDown())) {
                myFocus.clearFocus();
                myScene.fireRepaint();
            }
        }
    }
}
