package org.fbme.lib.iec61499.instances;


import org.fbme.lib.iec61499.declarations.Declaration;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

public interface Instance {

    @Nullable Instance getParent();

    @NotNull Declaration getDeclaration();

    default @NotNull Instance getRootInstance() {
        Instance root = this;
        Instance parent = this.getParent();
        while (parent != null) {
            root = parent;
            parent = root.getParent();
        }
        return root;
    }

}
