
plugins {
    java
    mps
}

dependencies {
    implementation(project(":code:library"))
    implementation(project(":code:platform", "mps"))
}


configurations {
    implementation {
        extendsFrom(configurations["mpsBinaries"])
    }
}

java {
    sourceCompatibility = JavaVersion.VERSION_11
    targetCompatibility = JavaVersion.VERSION_11
}

mps {
    artifactName = "statistics-plugin"
    buildScriptName = "fbme_statistics"
}
