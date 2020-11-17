package org.fbme.gradle

open class MpsExtension(val hasBuildSolution: Boolean) {
    var artifactName: String? = null
    var buildScriptName: String? = null
    var skipGeneration = false
}