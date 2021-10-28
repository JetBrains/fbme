package org.fbme.ide.iec61499.repository

import jetbrains.mps.project.Project

object PlatformRepositoryProvider {
    private val ourRepositories: MutableMap<Project, PlatformRepository> = HashMap()

    @JvmStatic
    fun getInstance(project: Project): PlatformRepository {
        return ourRepositories[project] ?: error("PlatformRepository not found")
    }

    @JvmStatic
    fun init(project: Project) {
        ourRepositories[project] = PlatformRepository(project.repository)
    }

    @JvmStatic
    fun dispose(project: Project) {
        ourRepositories.remove(project)!!.dispose()
    }
}