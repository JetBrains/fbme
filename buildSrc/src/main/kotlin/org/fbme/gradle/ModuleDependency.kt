package org.fbme.gradle

import org.gradle.api.internal.provider.DefaultProvider
import org.gradle.api.provider.Provider
import org.gradle.api.tasks.Input

data class ModuleDependency(
    @get:Input val idProvider: Provider<String>,
    @get:Input val nameProvider: Provider<String> = DefaultProvider { "" },
    @get:Input val version: Int = 0
) {

    constructor(id: String, name: String = "", version: Int = 0) : this(
        DefaultProvider { id },
        DefaultProvider { name },
        version
    )
}

val ModuleDependency.name get() = nameProvider.get()

val ModuleDependency.id get() = idProvider.get()
