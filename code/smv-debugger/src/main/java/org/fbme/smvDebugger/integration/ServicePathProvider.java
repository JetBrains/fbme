package org.fbme.smvDebugger.integration;

import jetbrains.mps.project.MPSProject;
import org.jetbrains.annotations.NotNull;

import java.nio.file.Path;

public interface ServicePathProvider {

    Path getFb2SmvServicePath();

    Path getNuSmvServicePath();

    Path getNutracServicePath();

    abstract class Factory {
        protected static ServicePathProvider.Factory INSTANCE = null;

        protected abstract ServicePathProvider create(@NotNull MPSProject project);
    }

    static ServicePathProvider create(@NotNull MPSProject project) {
        return Factory.INSTANCE.create(project);
    }
}
