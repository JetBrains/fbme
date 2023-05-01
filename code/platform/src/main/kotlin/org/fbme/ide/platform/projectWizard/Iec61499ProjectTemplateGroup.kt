package org.fbme.ide.platform.projectWizard

import com.intellij.openapi.extensions.ExtensionPointName
import jetbrains.mps.workbench.dialogs.project.newproject.MPSProjectTemplate
import jetbrains.mps.workbench.dialogs.project.newproject.ProjectTemplatesGroup

class Iec61499ProjectTemplateGroup : ProjectTemplatesGroup {

    override fun getTemplates(): Collection<MPSProjectTemplate> = EP_NAME.extensionList

    override fun getName() = "IEC 61499"

    companion object {
        val EP_NAME: ExtensionPointName<MPSProjectTemplate> = ExtensionPointName.create("fbme.platform.iec61499projectTemplate")
    }
}