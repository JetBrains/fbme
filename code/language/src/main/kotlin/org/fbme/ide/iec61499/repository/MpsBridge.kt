package org.fbme.ide.iec61499.repository

import jetbrains.mps.project.AbstractModule
import jetbrains.mps.project.Project
import jetbrains.mps.project.ProjectManager
import jetbrains.mps.smodel.MPSModuleRepository
import jetbrains.mps.vfs.IFile
import org.fbme.lib.iec61499.IEC61499Factory
import org.fbme.lib.st.STFactory
import org.jetbrains.mps.openapi.persistence.PersistenceFacade

abstract class MpsBridge {
    protected abstract fun provideElementAdapter(owner: PlatformElementsOwner): PlatformElementAdapter
    protected abstract fun provideStFactory(owner: PlatformElementsOwner): STFactory
    protected abstract fun provideIec61499Factory(owner: PlatformElementsOwner): IEC61499Factory

    companion object {
        @JvmField
        protected var PROVIDER: MpsBridge? = null

        fun createElementAdapter(owner: PlatformElementsOwner): PlatformElementAdapter {
            return PROVIDER!!.provideElementAdapter(owner)
        }

        fun createStFactory(owner: PlatformElementsOwner): STFactory {
            return PROVIDER!!.provideStFactory(owner)
        }

        fun createIec61499Factory(owner: PlatformElementsOwner): IEC61499Factory {
            return PROVIDER!!.provideIec61499Factory(owner)
        }

        @Volatile
        private var loaded = false

        @JvmStatic
        val isLoaded get() = loaded

        @JvmStatic
        fun reloadAll() {
            loaded = true
            reloadLibraries()
            for (project in ProjectManager.getInstance().openedProjects) {
                reloadModelsInProject(project)
            }
        }

        private fun reloadLibraries() {
            // TODO provider ext point here
            val repo = MPSModuleRepository.getInstance()
            repo.modelAccess.runWriteInEDT {
                val moduleId = PersistenceFacade.getInstance().createModuleId("b8a7e14f-52ea-4ee2-b17e-26c27da8084c")
                val moduleImpl = repo.getModule(moduleId) as? AbstractModule
                moduleImpl?.updateModelsSet()
            }
        }

        private fun reloadModelsInProject(project: Project) {
            project.repository.modelAccess.runWriteInEDT {
                for (module in project.projectModules) {
                    val moduleImpl = module as? AbstractModule ?: continue
                    val dir = moduleImpl.moduleSourceDir
                    if (dir != null && hasIec61499Model(dir)) {
                        moduleImpl.updateModelsSet()
                    }
                }
            }
        }

        private fun hasIec61499Model(file: IFile): Boolean = if (file.isDirectory) {
            file.children!!.stream().anyMatch { hasIec61499Model(it) }
        } else {
            file.name == "header.iec61499"
        }
    }
}
