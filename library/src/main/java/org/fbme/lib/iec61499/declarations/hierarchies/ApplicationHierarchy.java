package org.fbme.lib.iec61499.declarations.hierarchies;

import org.fbme.lib.iec61499.declarations.ApplicationDeclaration;
import org.fbme.lib.iec61499.fbnetwork.subapp.SubapplicationDeclaration;
import org.jetbrains.annotations.NotNull;

public abstract class ApplicationHierarchy {

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
    }
}
