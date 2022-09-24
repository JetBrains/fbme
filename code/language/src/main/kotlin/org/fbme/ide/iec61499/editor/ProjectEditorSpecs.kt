package org.fbme.ide.iec61499.editor

import jetbrains.mps.project.Project
import org.jetbrains.mps.openapi.model.SNode

abstract class ProjectEditorSpecs {
    abstract fun getSpec(target: SNode, projectionState: String): SNode
    abstract fun getSpecTarget(spec: SNode): SNode
    abstract fun getSpecProjectionState(spec: SNode): String?

    companion object {
        @JvmField
        val ourInstances: Map<Project, ProjectEditorSpecs> = HashMap()
        fun getInstance(project: Project): ProjectEditorSpecs {
            return ourInstances[project] ?: error("ProjectEditorSpecs not found")
        }
    }
}
