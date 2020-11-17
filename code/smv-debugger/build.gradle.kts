
plugins {
    mps
}

dependencies {
    implementation(project(":code:library"))
    implementation(project(":code:platform", "mps"))
    implementation(project(":code:richediting", "mps"))

    mpsImplementation(project(":code:library", "mps"))
}

configurations {
    implementation {
        extendsFrom(mpsBinaries.get())
    }
}

mps {
    artifactName = "smv-debugger"
    buildScriptName = "fbme_smvdebugger"
}