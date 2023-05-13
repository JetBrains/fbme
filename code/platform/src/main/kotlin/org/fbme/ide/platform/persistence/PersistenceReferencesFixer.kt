package org.fbme.ide.platform.persistence

import com.intellij.openapi.Disposable
import com.intellij.openapi.components.service
import com.intellij.openapi.project.Project
import com.intellij.openapi.startup.StartupActivity
import jetbrains.mps.project.MPSProject
import jetbrains.mps.smodel.DynamicReference
import org.jetbrains.mps.openapi.model.SModel
import org.jetbrains.mps.openapi.model.SNodeUtil
import org.jetbrains.mps.openapi.module.SRepositoryContentAdapter


class PersistenceReferencesFixer(ideaProject: Project) : Disposable {

    private val project: MPSProject = ideaProject.getComponent(MPSProject::class.java)

    val listener = object : SRepositoryContentAdapter() {
        override fun startListening(model: SModel) {
            fixReferences(project, model)
            model.addModelListener(this)
        }

        override fun stopListening(model: SModel) {
            model.removeModelListener(this)
        }

        override fun modelReplaced(model: SModel) {
            fixReferences(project, model)
        }
    }

    init {
        project.repository.modelAccess.runReadAction {
            listener.subscribeTo(project.repository)
        }
    }

    private fun isOurModel(model: SModel): Boolean {
        if (model !is CustomPersistenceModelWithHeader0) {
            return false
        }
        val source = model.source
        return source is RecursiveFolderDataSource
    }

    private fun fixReferences(project: MPSProject, model: SModel) {
        if (!isOurModel(model)) {
            return
        }
        model as CustomPersistenceModelWithHeader0

        project.modelAccess.runWriteInEDT {
            project.modelAccess.executeUndoTransparentCommand {
                val changed = model.isChanged
                for (node in SNodeUtil.getDescendants(model)) {
                    for (ref in node.references) {
                        if (ref is DynamicReference && ref.targetNode != null) {
                            node.setReferenceTarget(ref.link, ref.targetNode)
                        }
                    }
                }
                model.isChanged = changed
            }
        }
    }

    override fun dispose() {
        listener.unsubscribeFrom(project.repository)
    }

    class Starter : StartupActivity {
        override fun runActivity(project: Project) {
            project.service<PersistenceReferencesFixer>()
        }
    }
}