import org.gradle.api.*
import org.gradle.api.plugins.*
import org.gradle.api.tasks.SourceSetContainer
import org.gradle.kotlin.dsl.*

class MpsPlugin: Plugin<Project> {

    override fun apply(project: Project) = with(project) {
        pluginManager.apply(JavaPlugin::class.java)

        val sourceSets = the<SourceSetContainer>()

        sourceSets {
            "main" {
                java {
                    file("languages").listFiles()?.forEach { moduleDir ->
                        srcDir("${moduleDir}/source_gen")
                    }
                    file("solutions").listFiles()?.forEach { moduleDir ->
                        srcDir("${moduleDir}/source_gen")
                    }
                }
            }
        }

        dependencies {
            "implementation"(fileTree("../../lib/MPS 2019.3/") {
                include("**/*.jar")
                exclude("**/*-src.jar")
            })
        }
    }
}
