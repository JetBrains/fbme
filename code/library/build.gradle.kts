
plugins {
    java
    antlr
    mps
}

dependencies {
    antlr("org.antlr:antlr4:4.5")
    implementation("org.jetbrains:annotations:19.0.0")
    // TODO use real JDOM and somehow bridge it in the intellij platform environment?
    implementation("org.jetbrains.intellij.deps:jdom:2.0.6")
}

mps {
    artifactName = "library"
    buildScriptName = "fbme_library"
    skipGeneration = true
}

// to mark them as source set in idea module
sourceSets {
    main {
        java {
            srcDir("src/main/antlr")
        }
    }
}

val mpsAssemble by tasks.getting {
    inputs.dir("out")
}

tasks.named<Copy>("mpsPrepare") {
    from(configurations.antlr.get().files.find { it.name.startsWith("antlr4-runtime") })
    from("build/libs")
    into("out")
}