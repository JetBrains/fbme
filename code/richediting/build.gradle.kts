
plugins {
    mps
}

dependencies {
    implementation("org.eclipse.elk:org.eclipse.elk.alg.layered:0.7.1")
    implementation("org.eclipse.elk:org.eclipse.elk.core:0.7.1")
    implementation("org.eclipse.elk:org.eclipse.elk.graph:0.7.1")
    implementation(mpsDistribution())
    implementation(project(":code:scenes"))
    implementation(project(":code:library"))
    implementation(project(":code:language"))
    implementation(project(":code:platform"))
    mpsImplementation(project(":code:language", "mps"))
    mpsImplementation(project(":code:platform", "mps"))
    mpsImplementation(project(":code:scenes", "mps"))
    mpsImplementation(project(":code:library", "mps"))
}

mps {
    artifactName = "richediting"
    buildScriptName = "fbme_richediting"
}

val mpsPrepare by tasks.getting(Copy::class) {
    from("build/libs/richediting.jar")
    from(configurations.runtimeClasspath.get().files.filter { it.name.startsWith("org.eclipse") })
    into("solutions/org.fbme.ide.richediting/lib")
}