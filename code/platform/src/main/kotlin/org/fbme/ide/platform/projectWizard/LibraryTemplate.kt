package org.fbme.ide.platform.projectWizard

import fbme.platform.PlatformIcons
import org.fbme.ide.iec61499.repository.PlatformElement
import org.fbme.ide.iec61499.repository.PlatformRepository
import org.jetbrains.mps.openapi.model.SModel

class LibraryTemplate : Iec61499ProjectTemplate(
    Iec61499SolutionSettings("NewLibrary"),
    "Library",
    "Library of function block, adapter and subapplication types",
    PlatformIcons.libraryProject,
    "library"
) {

    override fun initModel(repository: PlatformRepository, model: SModel): PlatformElement {
        val basicFBType = repository.iec61499Factory.createBasicFBTypeDeclaration(null)
        basicFBType.name = "SampleBasicBFType"

        model.addRootNode((basicFBType as PlatformElement).node)

        return basicFBType
    }
}