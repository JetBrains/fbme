package org.fbme.ide.platform.testing

import jetbrains.mps.module.ReloadableModule
import jetbrains.mps.smodel.MPSModuleRepository
import jetbrains.mps.smodel.ModelAccessHelper
import jetbrains.mps.tool.environment.Environment
import jetbrains.mps.tool.environment.EnvironmentConfig
import jetbrains.mps.tool.environment.IdeaEnvironment
import jetbrains.mps.util.PathManager
import org.junit.runner.notification.RunNotifier
import org.junit.runners.BlockJUnit4ClassRunner
import org.junit.runners.model.FrameworkMethod
import org.junit.runners.model.InitializationError
import org.junit.runners.model.Statement
import java.io.File
import java.lang.reflect.Field
import java.net.MalformedURLException
import java.net.URLClassLoader
import java.nio.file.Path
import java.util.concurrent.ConcurrentHashMap

class PlatformTestRunner(clazz: Class<*>) : BlockJUnit4ClassRunner(loadFromCustomClassloader(clazz)) {

    private val runnerEnvironment = runnerEnvironments.getValue(loadFromModuleName(clazz))

    override fun withBefores(method: FrameworkMethod, target: Any, statement: Statement): Statement {
        val original = super.withBefores(method, target, statement)
        return object : Statement() {
            @Throws(Throwable::class)
            override fun evaluate() {
                if (runnerEnvironment.platformTestClass.isInstance(target)) {
                    runnerEnvironment.platformTestEnvironmentField[target] = runnerEnvironment.environment
                }
                original.evaluate()
            }
        }
    }

    // Runs junit tests in a separate thread using the custom class loader
    override fun run(notifier: RunNotifier) {
        val runnable = Runnable { super.run(notifier) }
        val thread = Thread(runnable)
        thread.contextClassLoader = runnerEnvironment.classLoader
        thread.start()
        try {
            thread.join()
        } catch (e: InterruptedException) {
            throw RuntimeException(e)
        }
    }

    class RunnerEnvironment(
        val environment: Environment,
        val classLoader: PlatformTestClassloader,
        val platformTestClass: Class<*>,
        val platformTestEnvironmentField: Field
    )

    class PlatformTestClassloader(private val myParentModule: ReloadableModule) : URLClassLoader(
        arrayOf(
            File("build/classes/java/test").toURI().toURL(),
            File("build/classes/kotlin/test").toURI().toURL(),
            File("build/resources/test").toURI().toURL()
        ), null
    ) {
        @Throws(ClassNotFoundException::class)
        override fun loadClass(name: String): Class<*> {
            try {
                return super.loadClass(name)
            } catch (ignored: ClassNotFoundException) {
            }
            return myParentModule.getClass(name)
        }
    }

    companion object {
        private val runnerEnvironments = ConcurrentHashMap<String, RunnerEnvironment>()

        @Throws(InitializationError::class)
        private fun loadFromCustomClassloader(clazz: Class<*>): Class<*> {
            return try {
                val moduleName = loadFromModuleName(clazz)
                initializeRunnerEnvironment(moduleName)
                Class.forName(clazz.name, true, runnerEnvironments.getValue(moduleName).classLoader)
            } catch (e: ClassNotFoundException) {
                throw InitializationError(e)
            } catch (e: MalformedURLException) {
                throw InitializationError(e)
            } catch (e: NoSuchFieldException) {
                throw InitializationError(e)
            }
        }

        private fun loadFromModuleName(clazz: Class<*>): String {
            val loadFrom = clazz.getAnnotation(LoadFrom::class.java)
            val moduleName = loadFrom?.module ?: "org.fbme.ide.platform"
            return moduleName
        }

        @Throws(MalformedURLException::class, ClassNotFoundException::class, NoSuchFieldException::class)
        fun initializeRunnerEnvironment(moduleName: String) {
            runnerEnvironments.getOrPut(moduleName) {
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
                    .withTestModeOn()
                val environment = IdeaEnvironment(config)
                environment.init()
                System.setProperty("java.awt.headless", "true")
                val repository = MPSModuleRepository.getInstance()
                val parentModule = ModelAccessHelper(repository.modelAccess).runReadAction<ReloadableModule> {
                    val platformModule = repository.modules.first { it.moduleName == moduleName } as ReloadableModule
                    try {
                        platformModule
                            .getClass("org.fbme.ide.iec61499.repository.MpsBridgeImpl")
                            .getMethod("install")
                            .invoke(null)
                    } catch (e: Exception) {
                        throw RuntimeException("Bridge not installed", e)
                    }
                    platformModule
                }
                val classloader = PlatformTestClassloader(parentModule)
                val platformTestClass =
                    Class.forName("org.fbme.ide.platform.testing.PlatformTestBase", true, classloader)
                RunnerEnvironment(
                    environment, classloader, platformTestClass, platformTestClass.getField("environment")
                )
            }
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
}