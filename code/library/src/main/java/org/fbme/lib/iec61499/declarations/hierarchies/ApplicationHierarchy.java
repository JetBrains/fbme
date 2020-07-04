package org.fbme.lib.iec61499.declarations.hierarchies;

import org.fbme.lib.common.Declaration;
import org.fbme.lib.common.DeclarationPath;
import org.fbme.lib.iec61499.declarations.ApplicationDeclaration;
import org.fbme.lib.iec61499.fbnetwork.subapp.SubapplicationDeclaration;
import org.jetbrains.annotations.NotNull;

import java.util.ArrayList;
import java.util.List;

public abstract class ApplicationHierarchy implements DeclarationPath {

    ApplicationHierarchy() {
    }

    public static final class Root extends ApplicationHierarchy {

        private final @NotNull ApplicationDeclaration myApplication;

        public Root(@NotNull ApplicationDeclaration application) {
            myApplication = application;
        }

        public @NotNull ApplicationDeclaration getApplication() {
            return myApplication;
        }

        @Override
        public @NotNull List<Declaration> getDeclarations() {
            ArrayList<Declaration> res = new ArrayList<>();
            res.add(myApplication);
            return res;
        }
    }

    public static final class Subapplication extends ApplicationHierarchy {

        private final @NotNull ApplicationHierarchy myParent;

        private final @NotNull SubapplicationDeclaration mySubapplication;

        public Subapplication(@NotNull ApplicationHierarchy parent, @NotNull SubapplicationDeclaration subapplication) {
            myParent = parent;
            mySubapplication = subapplication;
        }

        public @NotNull ApplicationHierarchy getParent() {
            return myParent;
        }

        public @NotNull SubapplicationDeclaration getSubapplication() {
            return mySubapplication;
        }

        @Override
        public @NotNull List<Declaration> getDeclarations() {
            List<Declaration> declarations = myParent.getDeclarations();
            declarations.add(mySubapplication);
            return declarations;
        }
    }
}
