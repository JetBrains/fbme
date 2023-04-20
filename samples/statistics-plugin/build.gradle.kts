
plugins {
    java
    mps
}

dependencies {
    implementation(mpsDistribution())
    implementation(project(":code:library"))
    implementation(project(":code:language"))

    mpsImplementation(project(":code:language", "mps"))
}

java {
    sourceCompatibility = JavaVersion.VERSION_11
    targetCompatibility = JavaVersion.VERSION_11
}

mps {
    buildScriptName.set("fbme_statistics")
    moduleName.set("org.fbme.samples.statistics.lib")
}

val mpsPrepare by tasks.getting(Copy::class) {
    from("build/libs/statistics-plugin.jar")
    into("solutions/org.fbme.samples.statisticsPlugin/lib")
}