package org.fbme.scenes.controllers.diagram

interface DiagramComponentSettingProvider<CompT, CFormT> {
    fun getModelForm(component: CompT): CFormT
    fun getTransformedForm(component: CompT): CFormT?
}
