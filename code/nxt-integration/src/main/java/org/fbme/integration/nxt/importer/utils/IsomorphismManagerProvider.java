package org.fbme.integration.nxt.importer.utils;

import jetbrains.mps.project.Project;
import org.fbme.ide.iec61499.repository.PlatformRepository;
import org.fbme.integration.nxt.importer.network.NetworksAnalyser;

import java.util.HashMap;
import java.util.Map;

public class IsomorphismManagerProvider {
    private static final Map<Project, IsomorphismManager> managers = new HashMap<>();

    public static void init(Project project, PlatformRepository platformRepository) {
        // TODO properly check for tests
        if (!project.getName().contains("mpstemp")) {
            managers.put(project, new IsomorphismManager(project, platformRepository, new NetworksAnalyser()));
        }
    }

    public static void dispose(Project project) {
        IsomorphismManager manager = managers.remove(project);
        if (manager != null) {
            manager.dispose();
        }
    }
}
