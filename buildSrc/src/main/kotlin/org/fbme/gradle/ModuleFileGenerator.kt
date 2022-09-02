package org.fbme.gradle

class ModuleFileGenerator(
    private val name: String,
    private val moduleId: String,
    private val pluginId: String,
    private val dependencies: List<ModuleDependency>,
    private val libraryLocations: List<String>,
    private val languages: List<ModuleDependency>
) {

    private val module get() = "\${module}"

    fun generateSourceDescriptor(): String {
        val prefix = "\n                  "

        val libraryRoots = libraryLocations.joinToString("") {
            """$prefix<sourceRoot location="$it" />"""
        }
        val stubModelEntries = libraryLocations.joinToString("") {
            """$prefix<stubModelEntry path="$module/lib/$it" />"""
        }
        val dependencyEntries = dependencies.joinToString("") {
            """$prefix<dependency reexport="false">${it.id}(${it.name})</dependency>"""
        }
        val languageEntries = languages.joinToString("") {
            """$prefix<language slang="l:${it.id}:${it.name}" version="${it.version}" />"""
        }
        val dependencyVersionEntries = dependencies.joinToString("") {
            """$prefix<module reference="${it.id}(${it.name})" version="${it.version}" />"""
        }

        return """
            <?xml version="1.0" encoding="UTF-8"?>
            <solution name="$name" uuid="$moduleId" moduleVersion="0" pluginKind="PLUGIN_OTHER" compileInMPS="false">
              <models>
                <modelRoot contentPath="$module/lib" type="java_classes">$libraryRoots  
                </modelRoot>
              </models>
              <facets>
                <facet type="java" languageLevel="JAVA_8">
                  <classes generated="true" path="$module/classes_gen" />
                </facet>
                <facet type="ideaPlugin" pluginId="$pluginId" />
              </facets>
              <stubModelEntries>$stubModelEntries
              </stubModelEntries>
              <sourcePath />
              <dependencies>$dependencyEntries
              </dependencies>
              <languageVersions>$languageEntries
              </languageVersions>
              <dependencyVersions>$dependencyVersionEntries
              </dependencyVersions>
            </solution>
        """.trimIndent()
    }

    fun generateDeploymentDescriptor(): String {
        val prefixSmall = "\n              "
        val prefix = "$prefixSmall  "

        val dependencyEntries = dependencies.joinToString("") {
            """$prefix<module kind="rt" ref="${it.id}(${it.name})" />"""
        }
        val languageEntries = languages.joinToString("") {
            """$prefix<language id="l:${it.id}:${it.name}" />"""
        }
        val libraryEntries = libraryLocations.joinToString("") {
            """$prefixSmall<library jar="../lib/$it" />"""
        }

        return """
            <?xml version="1.0" encoding="UTF-8"?>
            <module namespace="$name" type="solution" uuid="$moduleId">
              <dependencies>$dependencyEntries
              </dependencies>
              <uses>$languageEntries
              </uses>$libraryEntries
              <sources descriptor="$name.msd" jar="." />
            </module>
        """.trimIndent()
    }

    companion object {
        fun forIdeaPlugin(
            spec: PluginModuleFileSpec
        ): ModuleFileGenerator {
            val name = spec.moduleName.get()
            val moduleId = spec.moduleId.get()
            val pluginId = spec.pluginId.get()
            val dependencies = ideaPluginDependencies + spec.dependentModules.get()
            val libraryLocations = spec.libraryLocations + "${spec.project.name}.jar"
            return ModuleFileGenerator(name, moduleId, pluginId, dependencies, libraryLocations, ideaPluginLanguages)
        }

        private val ideaPluginDependencies = listOf(
            ModuleDependency("3f233e7f-b8a6-46d2-a57f-795d56775243", "Annotations"),
            ModuleDependency("6354ebe7-c22a-4a0f-ac54-50b52ab9b065", "JDK"),
            ModuleDependency("6ed54515-acc8-4d1e-a16c-9fd6cfe951ea", "MPS.Core"),
            ModuleDependency("1ed103c3-3aa6-49b7-9c21-6765ee11f224", "MPS.Editor"),
            ModuleDependency("498d89d2-c2e9-11e2-ad49-6cf049e62fe5", "MPS.IDEA"),
            ModuleDependency("8865b7a8-5271-43d3-884c-6fd1d9cfdd34", "MPS.OpenAPI"),
            ModuleDependency("742f6602-5a2f-4313-aa6e-ae1cd4ffdc61", "MPS.Platform"),
            ModuleDependency("86441d7a-e194-42da-81a5-2161ec62a379", "MPS.Workbench")
        )

        private val ideaPluginLanguages = listOf(
            ModuleDependency(
                "f3061a53-9226-4cc5-a443-f952ceaf5816",
                "jetbrains.mps.baseLanguage",
                11
            ),
            ModuleDependency(
                "443f4c36-fcf5-4eb6-9500-8d06ed259e3e",
                "jetbrains.mps.baseLanguage.classifiers",
                0
            ),
            ModuleDependency(
                "f2801650-65d5-424e-bb1b-463a8781b786",
                "jetbrains.mps.baseLanguage.javadoc",
                2
            )
        )
    }
}
