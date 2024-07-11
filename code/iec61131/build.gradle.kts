plugins {
    kotlin
    kotlin("plugin.serialization").version("1.6.21")
}

dependencies {
    implementation("io.github.pdvrieze.xmlutil:serialization-jvm:0.83.0")
    implementation("io.github.pdvrieze.xmlutil:core-jvm:0.83.0")
    compileOnly(project(":code:library"))
}
