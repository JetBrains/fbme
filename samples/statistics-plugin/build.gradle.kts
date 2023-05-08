
plugins {
    java
    mps
}

dependencies {
    compileOnly(mpsDistribution())
    compileOnly(project(":code:library"))
    compileOnly(project(":code:language"))

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