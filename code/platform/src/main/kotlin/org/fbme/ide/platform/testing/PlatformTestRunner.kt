package org.fbme.ide.platform.testing

import jetbrains.mps.module.ReloadableModule
import jetbrains.mps.smodel.MPSModuleRepository
import jetbrains.mps.smodel.ModelAccessHelper
import jetbrains.mps.tool.environment.Environment
import jetbrains.mps.tool.environment.EnvironmentConfig
import jetbrains.mps.tool.environment.MpsEnvironment
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
import java.util.stream.StreamSupport

class PlatformTestRunner(clazz: Class<*>) : BlockJUnit4ClassRunner(loadFromCustomClassloader(clazz)) {
    override fun withBefores(method: FrameworkMethod, target: Any, statement: Statement): Statement {
        val original = super.withBefores(method, target, statement)
        return object : Statement() {
            @Throws(Throwable::class)
            override fun evaluate() {
                if (ourRunnerEnvironment!!.platformTestClass.isInstance(target)) {
                    ourRunnerEnvironment!!.platformTestEnvironmentField[target] =
                        ourRunnerEnvironment!!.environment
                }
                original.evaluate()
            }
        }
    }

    // Runs junit tests in a separate thread using the custom class loader
    override fun run(notifier: RunNotifier) {
        val runnable = Runnable { super.run(notifier) }
        val thread = Thread(runnable)
        thread.contextClassLoader = ourRunnerEnvironment!!.classLoader
        thread.start()
        try {
            thread.join()
        } catch (e: InterruptedException) {
            throw RuntimeException(e)
        }
    }

    private class RunnerEnvironment(
        val environment: Environment,
        val classLoader: PlatformTestClassloader,
        val platformTestClass: Class<*>,
        val platformTestEnvironmentField: Field
    )

    private class PlatformTestClassloader(private val myParentModule: ReloadableModule) : URLClassLoader(
        arrayOf(
            File("build/classes/java/test").toURI().toURL(),
            File("build/resources/test").toURI().toURL()
        ),
        null
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
        @Volatile
        private var ourRunnerEnvironment: RunnerEnvironment? = null

        @Throws(InitializationError::class)
        private fun loadFromCustomClassloader(clazz: Class<*>): Class<*> {
            return try {
                initializeRunnerEnvironment()
                Class.forName(clazz.name, true, ourRunnerEnvironment!!.classLoader)
            } catch (e: ClassNotFoundException) {
                throw InitializationError(e)
            } catch (e: MalformedURLException) {
                throw InitializationError(e)
            } catch (e: NoSuchFieldException) {
                throw InitializationError(e)
            }
        }

        @Throws(MalformedURLException::class, ClassNotFoundException::class, NoSuchFieldException::class)
        private fun initializeRunnerEnvironment() {
            if (ourRunnerEnvironment == null) {
                synchronized(PlatformTestRunner::class.java) {
                    if (ourRunnerEnvironment == null) {
                        val config = EnvironmentConfig.defaultConfig()
                            .addLib("build/artifacts/fbme_platform/fbme.platform/languages")
                            .addLib(
                                Path.of("../library/build/artifacts/fbme_library/fbme.library/languages")
                                    .toAbsolutePath().normalize().toString()
                            )
                            .setCreatePluginClassLoaders(false)
                            .withTestModeOn()
                        val environment = MpsEnvironment(config)
                        environment.init()
                        val repository = MPSModuleRepository.getInstance()
                        val parentModule = ModelAccessHelper(repository.modelAccess).runReadAction<ReloadableModule> {
                            val platformModule = StreamSupport.stream(repository.modules.spliterator(), false)
                                .filter { it.moduleName == "org.fbme.ide.platform" }
                                .findFirst().orElseThrow() as ReloadableModule
                            try {
                                platformModule.getClass("org.fbme.ide.iec61499.repository.MpsBridgeImpl")
                                    .getMethod("install").invoke(null)
                            } catch (e: Exception) {
                                throw RuntimeException("Bridge not installed", e)
                            }
                            platformModule
                        }
                        val classloader = PlatformTestClassloader(parentModule)
                        val platformTestClass =
                            Class.forName("org.fbme.ide.platform.testing.PlatformTestBase", true, classloader)
                        ourRunnerEnvironment = RunnerEnvironment(
                            environment,
                            classloader,
                            platformTestClass,
                            platformTestClass.getField("environment")
                        )
                    }
                }
            }
        }
    }
}