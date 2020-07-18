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
            id = "mps"
            implementationClass = "MpsPlugin"
        }
    }
}

