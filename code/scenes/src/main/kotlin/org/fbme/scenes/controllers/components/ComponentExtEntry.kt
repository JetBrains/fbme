package org.fbme.scenes.controllers.components

internal class ComponentExtEntry<CompT, CompExtT, FormT>(
    facility: ComponentsExtensionsFacility<CompT, CompExtT, FormT>,
    componentExt: CompExtT,
    val component: CompT
) {
    val componentEntry: ComponentEntry<CompT, FormT>
    val controller: ComponentExtController<FormT>

    init {
        componentEntry = facility.componentsFacility.components[component] ?: error("Component not found")
        controller = facility.controllerFactory.create(
            facility.componentsFacility.editor.editorContext,
            componentExt,
            componentEntry.controller
        )
    }
}
