package org.fbme.ide.platform.persistence

import jetbrains.mps.internal.collections.runtime.ListSequence
import jetbrains.mps.project.AbstractModule
import jetbrains.mps.project.Project
import jetbrains.mps.project.ProjectManager
import jetbrains.mps.project.ProjectPathUtil
import jetbrains.mps.smodel.MPSModuleRepository
import jetbrains.mps.smodel.SNodeUtil
import jetbrains.mps.vfs.IFile
import org.jetbrains.mps.openapi.model.SNode

object Iec61499Persistence {

    @JvmStatic
    fun getPathToElement(rootNode: SNode): String? {
        val model = rootNode.model ?: return null
        val fileName = rootNode.getProperty(SNodeUtil.property_BaseConcept_virtualPackage).orEmpty()
            .replace(".", "/") + "/" + rootNode.name
        if (model is CustomPersistenceModelWithHeader0) {
            val source = model.source
            if (source.type == RecursiveFolderDataSource.TYPE) {
                val root = (source as RecursiveFolderDataSource).rootFolder.path
                return root + "/" + fileName + "." + Iec61499ModelFactory.getExtensionOfSource(rootNode)
            }
        } else {
            val module = model.module as AbstractModule
            val generatorOutputPath = ProjectPathUtil.getGeneratorOutputPath(module.moduleDescriptor)
            return generatorOutputPath + "/" + model.name.longName.replace(".", "/") + fileName + ".xml"
        }
        return null
    }
}