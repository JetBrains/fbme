package org.fbme.scenes.cells;

import jetbrains.mps.openapi.editor.EditorContext;
import jetbrains.mps.openapi.editor.cells.CellAction;
import org.jetbrains.annotations.NotNull;

import java.util.LinkedHashSet;
import java.util.Set;
import java.util.stream.Collectors;

public class CompositeCellAction implements CellAction {

    private final Set<CellAction> myActions = new LinkedHashSet<>();

    @Override
    public String getDescriptionText() {
        if (myActions.isEmpty()) {
            return "[Invalid Composite]";
        }
        if (myActions.size() == 1) {
            return myActions.iterator().next().getDescriptionText();
        }
        return "Composite[" + myActions.stream().map(CellAction::getDescriptionText).collect(Collectors.joining(", ")) + "]";
    }

    public void add(@NotNull CellAction action) {
        myActions.add(action);
    }

    public void remove(@NotNull CellAction action) {
        myActions.remove(action);
    }

    public boolean isInvalid() {
        return myActions.isEmpty();
    }

    @Override
    public boolean executeInCommand() {
        return myActions.stream().anyMatch(it -> executeInCommand());
    }

    @Override
    public boolean canExecute(final EditorContext context) {
        return myActions.stream().anyMatch(it -> it.canExecute(context));
    }

    @Override
    public void execute(final EditorContext context) {
        myActions.forEach(it -> it.execute(context));
    }
}
