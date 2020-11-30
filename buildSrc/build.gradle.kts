plugins {
    `kotlin-dsl`
    `java-gradle-plugin`
}

val mpsMajor = "2020.2"
val mpsMinor = "2"


repositories {
    jcenter()

    ivy {
        url = uri("https://download.jetbrains.com/mps/$mpsMajor/")
        patternLayout {
            artifact("[module]-[revision].[ext]")
        }
        metadataSources { // skip downloading ivy.xml
            artifact()
        }
    }
}

gradlePlugin {
    plugins {
        create("mpsPlugin") {
            id = "org.fbme.gradle.mps"
            implementationClass = "org.fbme.gradle.MpsPlugin"
        }
    }
}

val mps by configurations.creating

dependencies {
    mps("com.jetbrains:MPS:$mpsMajor.$mpsMinor@zip")
}

val downloadDependencies by tasks.registering(Copy::class) {
    dependsOn(mps)

    mps.files.forEach {
        from(zipTree(it))
    }
    into("../lib")
}

val build by tasks.getting {
    dependsOn(downloadDependencies)
}