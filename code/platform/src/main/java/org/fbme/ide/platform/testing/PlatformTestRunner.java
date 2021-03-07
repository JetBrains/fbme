package org.fbme.ide.platform.testing;

import jetbrains.mps.module.ReloadableModule;
import jetbrains.mps.smodel.MPSModuleRepository;
import jetbrains.mps.smodel.ModelAccessHelper;
import jetbrains.mps.tool.environment.Environment;
import jetbrains.mps.tool.environment.EnvironmentConfig;
import jetbrains.mps.tool.environment.MpsEnvironment;
import org.junit.runner.notification.RunNotifier;
import org.junit.runners.BlockJUnit4ClassRunner;
import org.junit.runners.model.FrameworkMethod;
import org.junit.runners.model.InitializationError;
import org.junit.runners.model.Statement;

import java.io.File;
import java.lang.reflect.Field;
import java.net.MalformedURLException;
import java.net.URL;
import java.net.URLClassLoader;
import java.nio.file.Path;
import java.util.Objects;
import java.util.stream.StreamSupport;

public class PlatformTestRunner extends BlockJUnit4ClassRunner {

    private static volatile RunnerEnvironment ourRunnerEnvironment;

    public PlatformTestRunner(Class<?> clazz) throws InitializationError {
        super(loadFromCustomClassloader(clazz));
    }

    private static Class<?> loadFromCustomClassloader(Class<?> clazz) throws InitializationError {
        try {
            initializeRunnerEnvironment();
            return Class.forName(clazz.getName(), true, ourRunnerEnvironment.classLoader);
        } catch (ClassNotFoundException | MalformedURLException | NoSuchFieldException e) {
            throw new InitializationError(e);
        }
    }

    private static void initializeRunnerEnvironment() throws MalformedURLException, ClassNotFoundException, NoSuchFieldException {
        if (ourRunnerEnvironment == null) {
            synchronized (PlatformTestRunner.class) {
                if (ourRunnerEnvironment == null) {
                    String[] additionalLibs = System.getProperty("org.fbme.testing.additionalLibs", "").split(";");
                    String moduleName = System.getProperty("org.fbme.testing.module");

                    EnvironmentConfig config = EnvironmentConfig.defaultConfig()
                            .addLib(Path.of("../platform/build/artifacts/fbme_platform/fbme.platform/languages").toAbsolutePath().normalize().toString())
                            .addLib(Path.of("../library/build/artifacts/fbme_library/fbme.library/languages").toAbsolutePath().normalize().toString())
                            .setCreatePluginClassLoaders(false)
                            .withTestModeOn();
                    for (String lib: additionalLibs) {
                        config.addLib(lib);
                    }
                    MpsEnvironment environment = new MpsEnvironment(config);
                    environment.init();

                    MPSModuleRepository repository = MPSModuleRepository.getInstance();
                    ReloadableModule parentModule = new ModelAccessHelper(repository.getModelAccess()).runReadAction(() -> {
                        ReloadableModule platformModule = (ReloadableModule) StreamSupport.stream(repository.getModules().spliterator(), false)
                                .filter(it -> Objects.equals(it.getModuleName(), moduleName))
                                .findFirst().orElseThrow();
                        try {
                            platformModule.getClass("org.fbme.ide.iec61499.repository.MpsBridgeImpl").getMethod("install").invoke(null);
                        } catch (Exception e) {
                            throw new RuntimeException("Bridge not installed", e);
                        }
                        return platformModule;
                    });

                    PlatformTestClassloader classloader = new PlatformTestClassloader(parentModule);

                    Class<?> platformTestClass =
                            Class.forName("org.fbme.ide.platform.testing.PlatformTestBase", true, classloader);
                    ourRunnerEnvironment = new RunnerEnvironment(
                            environment,
                            classloader,
                            platformTestClass,
                            platformTestClass.getField("myEnvironment")
                    );
                }
            }
        }
    }

    @Override
    protected Statement withBefores(FrameworkMethod method, Object target, Statement statement) {
        Statement original = super.withBefores(method, target, statement);
        return new Statement() {
            @Override
            public void evaluate() throws Throwable {
                if (ourRunnerEnvironment.platformTestClass.isInstance(target)) {
                    ourRunnerEnvironment.platformTestEnvironmentField.set(target, ourRunnerEnvironment.environment);
                }
                original.evaluate();
            }
        };
    }

    // Runs junit tests in a separate thread using the custom class loader
    @Override
    public void run(final RunNotifier notifier) {
        Runnable runnable = () -> {
            super.run(notifier);
        };
        Thread thread = new Thread(runnable);
        thread.setContextClassLoader(ourRunnerEnvironment.classLoader);
        thread.start();
        try {
            thread.join();
        } catch (InterruptedException e) {
            throw new RuntimeException(e);
        }
    }

    private static class RunnerEnvironment {
        private final Environment environment;
        private final PlatformTestClassloader classLoader;
        private final Class<?> platformTestClass;
        private final Field platformTestEnvironmentField;

        public RunnerEnvironment(Environment environment, PlatformTestClassloader classLoader, Class<?> platformTestClass, Field platformTestEnvironmentField) {
            this.environment = environment;
            this.classLoader = classLoader;
            this.platformTestClass = platformTestClass;
            this.platformTestEnvironmentField = platformTestEnvironmentField;
        }
    }

    private static class PlatformTestClassloader extends URLClassLoader {

        private final ReloadableModule myParentModule;

        public PlatformTestClassloader(ReloadableModule parentModule) throws MalformedURLException {
            super(
                    new URL[]{
                            new File("build/classes/java/test").toURI().toURL(),
                            new File("build/resources/test").toURI().toURL()
                    },
                    null
            );
            myParentModule = parentModule;
        }

        @Override
        public Class<?> loadClass(String name) throws ClassNotFoundException {
            try {
                return super.loadClass(name);
            } catch (ClassNotFoundException ignored) {
            }
            return myParentModule.getClass(name);
        }
    }
}

