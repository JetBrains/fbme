
plugins {
    java
    mps
}

dependencies {
    implementation(mpsDistribution())
    implementation(project(":code:library"))
    implementation(project(":code:language", "mps"))
}

java {
    sourceCompatibility = JavaVersion.VERSION_11
    targetCompatibility = JavaVersion.VERSION_11
}

mps {
    artifactName = "statistics-plugin"
    buildScriptName = "fbme_statistics"
}
