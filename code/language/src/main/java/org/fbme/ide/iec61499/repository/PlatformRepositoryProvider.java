package org.fbme.ide.iec61499.repository;

import jetbrains.mps.project.Project;

import java.util.HashMap;
import java.util.Map;

public class PlatformRepositoryProvider {

  private static final Map<Project, PlatformRepository> ourRepositories = new HashMap<>();

  public static PlatformRepository getInstance(Project project) {
    return ourRepositories.get(project);
  }

  public static void init(Project project) {
    ourRepositories.put(project, new PlatformRepository(project.getRepository()));
  }

  public static void dispose(Project project) {
    ourRepositories.remove(project).dispose();
  }
}
