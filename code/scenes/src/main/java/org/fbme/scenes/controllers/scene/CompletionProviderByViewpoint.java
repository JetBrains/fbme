package org.fbme.scenes.controllers.scene;

import org.fbme.scenes.controllers.SceneViewpoint;
import org.fbme.scenes.viewmodel.PositionalCompletionItem;

import java.util.ArrayList;
import java.util.List;
import java.util.function.Supplier;

public class CompletionProviderByViewpoint implements SceneCompletionProvider {

    private final Supplier<List<PositionalCompletionItem>> myCompletionProvider;
    private final SceneViewpoint myViewpoint;

    public CompletionProviderByViewpoint(SceneViewpoint viewpoint, Supplier<List<PositionalCompletionItem>> completionProvider) {
        myViewpoint = viewpoint;
        myCompletionProvider = completionProvider;
    }

    @Override
    public List<SceneCompletionAction> getActions() {
        List<SceneCompletionAction> res = new ArrayList<>();
        for (PositionalCompletionItem completionItem : myCompletionProvider.get()) {
            res.add(new SceneCompletionAction() {
                public String getMatchingText(String pattern) {
                    return completionItem.getMatchingText(pattern);
                }

                public String getDescriptionText() {
                    return completionItem.getDescriptionText();
                }

                public void invoke(String pattern, int x, int y) {
                    int modelX = myViewpoint.translateFromEditorX(x);
                    int modelY = myViewpoint.translateFromEditorY(y);
                    completionItem.invoke(pattern, modelX, modelY);
                }
            });
        }
        return res;
    }
}
