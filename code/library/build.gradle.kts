
plugins {
    java
    antlr
    mps
}

dependencies {
    antlr("org.antlr:antlr4:4.5")
    implementation("org.jetbrains:annotations:19.0.0")
    implementation("org.jdom:jdom:1.1.3")
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

java {
    sourceCompatibility = JavaVersion.VERSION_11
    targetCompatibility = JavaVersion.VERSION_11
}

tasks.named<Copy>("mpsPrepare") {
    from(configurations.antlr.get().files.find { it.name.startsWith("antlr4-runtime") })
    from("build/libs")
    into("out")
}