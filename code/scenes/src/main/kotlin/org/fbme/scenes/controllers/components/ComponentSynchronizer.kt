package org.fbme.scenes.controllers.components

interface ComponentSynchronizer<CompT, FormT> {
    fun getForm(component: CompT): () -> FormT
    fun setForm(component: CompT, form: FormT)
}
