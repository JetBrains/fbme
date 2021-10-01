package org.fbme.scenes.controllers.components

import java.util.function.Supplier

interface ComponentSynchronizer<CompT, FormT> {
    fun getForm(component: CompT): Supplier<FormT>
    fun setForm(component: CompT, form: FormT)
}