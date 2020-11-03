plugins {
    `kotlin-dsl`
    `java-gradle-plugin`
}

repositories {
    jcenter()
}

gradlePlugin {
    plugins {
        create("mpsPlugin") {
            id = "org.fbme.gradle.mps"
            implementationClass = "org.fbme.gradle.MpsPlugin"
        }
    }
}

