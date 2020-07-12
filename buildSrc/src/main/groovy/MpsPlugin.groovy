import org.gradle.api.*
import org.gradle.api.plugins.*

class MpsPlugin implements Plugin<Project> {

    void apply(Project project) {
        project.pluginManager.apply(JavaPlugin)

        project.sourceSets {
            main {
                java {
                    project.file('languages').listFiles().each { moduleDir ->
                        srcDir "${moduleDir}/source_gen"
                    }
                    project.file('solutions').listFiles().each { moduleDir ->
                        srcDir "${moduleDir}/source_gen"
                    }
                }
            }
        }
        project.dependencies {
            compile project.fileTree('../../lib/MPS 2019.3/') {
                include '**/*.jar'
                exclude '**/*-src.jar'
            }
        }
    }
}
