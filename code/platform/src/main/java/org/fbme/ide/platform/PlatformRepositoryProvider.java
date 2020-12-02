package org.fbme.ide.platform;

import jetbrains.mps.project.MPSProject;
import jetbrains.mps.project.Project;
import org.fbme.ide.iec61499.repository.PlatformRepository;

import java.util.HashMap;
import java.util.Map;

public class PlatformRepositoryProvider {

    private static final Map<MPSProject, PlatformRepository> ourRepositories = new HashMap<>();

    public static PlatformRepository getInstance(Project project) {
        return ourRepositories.get(project);
    }

    static void init(MPSProject project) {
        ourRepositories.put(project, new PlatformRepository(project.getRepository()));
    }

    static void dispose(MPSProject project) {
        ourRepositories.remove(project).dispose();
    }
}
