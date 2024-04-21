package org.fbme.ide.platform.testing

import jetbrains.mps.tool.environment.EnvironmentConfig
import jetbrains.mps.tool.environment.IdeaEnvironment
import jetbrains.mps.util.PathManager
import java.io.File
import java.nio.file.Path

object IdeaTestEnvironment {

    init {
        System.setProperty("ide.widget.toolbar", "false")
        System.setProperty("ide.cancellation.propagate", "false")
    }

    val ourEnvironment by lazy {
        val config = EnvironmentConfig.defaultConfig()
            .withBuildPlugin()
            .addDistributedPlugin("mps-execution-api", "jetbrains.mps.execution.api")
            .addDistributedPlugin("mps-execution-configurations", "jetbrains.mps.execution.configurations")
            .addFbmePlugin("fbme.library")
            .addFbmePlugin("fbme.language")
            .addFbmePlugin("fbme.platform")
            .addFbmePlugin("fbme.richediting")
            .addFbmePlugin("fbme.scenes")
            .addFbmePlugin("fbme.formalfb")
            .addFbmePlugin("fbme.integration.nxt")
        val environment = IdeaEnvironment(config)
        environment.init()
        environment
    }

    private fun libPath(relative: String) = Path.of(relative).toAbsolutePath().normalize().toString()

    private fun EnvironmentConfig.addDistributedPlugin(folder: String, id: String): EnvironmentConfig {
        val preinstalledPluginFolder = File(PathManager.getPreInstalledPluginsPath())
        return addPlugin(File(preinstalledPluginFolder, folder).absolutePath, id)
    }

    private fun EnvironmentConfig.addFbmePlugin(id: String): EnvironmentConfig {
        return addPlugin(libPath("../../build/dist-plugins/$id"), id)
    }
}