package org.fbme.ide.iec61499.repository

import jetbrains.mps.project.Project
import org.jetbrains.mps.openapi.module.SRepository

object PlatformRepositoryProvider {
    private val ourRepositories: MutableMap<SRepository, PlatformRepository> = HashMap()

    @JvmStatic
    fun getInstance(project: Project) = getInstance(project.repository)

    @JvmStatic
    fun getInstance(repository: SRepository): PlatformRepository {
        return ourRepositories[repository] ?: error("PlatformRepository not found")
    }

    @JvmStatic
    fun init(project: Project) {
        val repository = project.repository
        ourRepositories[repository] = PlatformRepository(repository)
    }

    @JvmStatic
    fun dispose(project: Project) {
        ourRepositories.remove(project.repository)!!.dispose()
    }
}
