package org.fbme.ide.platform.projectWizard

import jetbrains.mps.ide.ui.dialogs.modules.AbstractModuleCreationSettings
import java.awt.Dimension

open class Iec61499SolutionSettings(private val defaultName: String) :
    AbstractModuleCreationSettings(null, "System configuration name:", "Solution location:") {

    init {
        preferredSize = Dimension(400, 100)
        reset()
    }

    override fun getDefaultModuleName() = defaultName

    override fun getDefaultModulePath(): String = getModuleRootPath("solutions")
}