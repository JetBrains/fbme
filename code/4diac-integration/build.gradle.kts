
plugins {
    mps
}

dependencies {
    mpsImplementation(project(":code:library", "mps"))
    mpsImplementation(project(":code:language", "mps"))
    mpsImplementation(project(":code:platform", "mps"))
}

mps {
    buildScriptName.set("fbme_fordiac")
    moduleName.set("org.fbme.integration.fordiac.lib")
}