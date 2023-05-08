package org.fbme.ide.platform.projectWizard

import fbme.platform.PlatformIcons
import org.fbme.ide.iec61499.repository.PlatformElement
import org.fbme.ide.iec61499.repository.PlatformRepository
import org.jetbrains.mps.openapi.model.SModel

class SystemTemplate : Iec61499ProjectTemplate(
    Iec61499SolutionSettings("NewSystem"),
    "System Configuration",
    "System Configuration for IEC 61499 Standard ",
    PlatformIcons.systemProject,
    "system"
) {

    override fun initModel(repository: PlatformRepository, model: SModel): PlatformElement {
        val system = repository.iec61499Factory.createSystemDeclaration(null)
        val application = repository.iec61499Factory.createApplicationDeclaration(null)

        val systemName = model.name.simpleName

        system.name = systemName
        application.name = systemName + "App"
        system.applications.add(application)

        model.addRootNode((system as PlatformElement).node)
        model.addRootNode((application as PlatformElement).node)

        return system
    }
}