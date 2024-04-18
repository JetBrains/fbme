package org.fbme.ide.integration.fordiac.deploy.controllers

import jetbrains.mps.smodel.tempmodel.TempModuleOptions
import jetbrains.mps.smodel.tempmodel.TemporaryModels
import org.apache.logging.log4j.Level.ERROR
import org.apache.logging.log4j.Level.INFO
import org.apache.logging.log4j.LogManager
import org.apache.logging.log4j.core.LoggerContext
import org.apache.logging.log4j.core.config.Configuration
import org.fbme.ide.platform.testing.FBType.*
import org.fbme.ide.platform.testing.PlatformTestBase
import org.fbme.ide.platform.testing.TypeInfo
import org.fbme.lib.common.Declaration
import org.fbme.lib.iec61499.declarations.BasicFBTypeDeclaration
import org.fbme.lib.iec61499.declarations.CompositeFBTypeDeclaration
import org.fbme.lib.iec61499.declarations.DeviceDeclaration
import org.fbme.lib.iec61499.declarations.SystemDeclaration
import org.fbme.lib.st.expressions.Literal
import org.junit.After
import org.junit.BeforeClass
import org.junit.ClassRule
import org.junit.Test
import org.testcontainers.containers.GenericContainer
import org.testcontainers.containers.wait.strategy.LogMessageWaitStrategy
import org.testcontainers.images.PullPolicy
import org.testcontainers.utility.DockerImageName
import java.time.Duration

class DynamicTypeLoadDeploymentControllerTest : PlatformTestBase() {

    @After
    fun teardown() {
        testAppender.clearLogMessages()
    }

    @Test
    fun `create basic fb type`() {
        testTemplate(
            systemFB = TypeInfo(filePath = "/deploy/SystemDeviceMPS.sys", type = SYSTEM),
            additionalFBs = listOf(TypeInfo(filePath = "/lua/basic/basic_two_algs/BasicTwoAlgsMPS.fbt", BASIC))
        ) { system, declarations ->
            val controller = DynamicTypeLoadDeploymentController(system.devices[0])
            controller.connect()
            controller.createFBType(declarations[0] as BasicFBTypeDeclaration)
            controller.disconnect()
        }
        assert(testAppender.logsOfLevel(ERROR).isEmpty())
        assert(testAppender.logsOfLevel(INFO).isNotEmpty())
    }

    @Test
    fun `create composite fb type with basic and adapter types`() {
        testTemplate(
            systemFB = TypeInfo(filePath = "/deploy/SystemDeviceMPS.sys", type = SYSTEM),
            additionalFBs = listOf(
                TypeInfo(filePath = "/lua/composite/CompositeMPS.fbt", COMPOSITE),
                TypeInfo(filePath = "/lua/basic/adapter/AdaptMPS.adp", type = ADAPTER),
                TypeInfo(filePath = "/lua/composite/BasicBlockMPS.fbt", BASIC),
                TypeInfo(filePath = "/lua/composite/BBMPS.fbt", BASIC),
            )
        ) { system, declarations ->
            val controller = DynamicTypeLoadDeploymentController(system.devices[0])
            controller.connect()
            controller.createFBType(declarations[0] as CompositeFBTypeDeclaration)
            controller.disconnect()
        }
        assert(testAppender.logsOfLevel(ERROR).isEmpty())
        assert(testAppender.logsOfLevel(INFO).isNotEmpty())
    }

    @Test
    fun `create resource`() {
        testTemplate(
            systemFB = TypeInfo(filePath = "/deploy/SystemDeviceMPS.sys", type = SYSTEM)
        ) { system, _ ->
            val device = system.devices[0]
            val controller = DynamicTypeLoadDeploymentController(device)
            controller.connect()
            val resource = device.resources[0]
            controller.createResource(resource)
            controller.disconnect()
        }
        assert(testAppender.logsOfLevel(ERROR).isEmpty())
        assert(testAppender.logsOfLevel(INFO).isNotEmpty())
    }

    @Test
    fun `create basic instance`() {
        testTemplate(
            systemFB = TypeInfo(filePath = "/deploy/SystemDeviceMPS.sys", type = SYSTEM),
            additionalFBs = listOf(
                TypeInfo(filePath = "/lua/basic/basic_two_algs/BasicTwoAlgsMPS.fbt", type = BASIC)
            )
        ) { system, declarations ->
            val device = system.devices[0]
            val controller = DynamicTypeLoadDeploymentController(device)
            controller.connect()
            val resource = device.resources[0]
            controller.createResource(resource)
            controller.createFBInstance(resource, declarations[0] as BasicFBTypeDeclaration)
            controller.disconnect()
        }
        assert(testAppender.logsOfLevel(ERROR).isEmpty())
        assert(testAppender.logsOfLevel(INFO).isNotEmpty())
    }

    @Test
    fun `create composite instance`() {
        testTemplate(
            systemFB = TypeInfo(filePath = "/deploy/SystemDeviceMPS.sys", type = SYSTEM),
            additionalFBs = listOf(
                TypeInfo(filePath = "/lua/composite/CompositeMPS.fbt", COMPOSITE),
                TypeInfo(filePath = "/lua/basic/adapter/AdaptMPS.adp", type = ADAPTER),
                TypeInfo(filePath = "/lua/composite/BasicBlockMPS.fbt", BASIC),
                TypeInfo(filePath = "/lua/composite/BBMPS.fbt", BASIC),
            )
        ) { system, declarations ->
            val device = system.devices[0]
            val controller = DynamicTypeLoadDeploymentController(device)
            controller.connect()
            val resource = device.resources[0]
            controller.createResource(resource)
            controller.createFBInstance(resource, declarations[0] as CompositeFBTypeDeclaration)
            controller.disconnect()
        }
        assert(testAppender.logsOfLevel(ERROR).isEmpty())
        assert(testAppender.logsOfLevel(INFO).isNotEmpty())
    }

    @Test
    fun `start resource`() {
        testTemplate(
            systemFB = TypeInfo(filePath = "/deploy/SystemDeviceMPS.sys", type = SYSTEM),
            additionalFBs = listOf(
                TypeInfo(filePath = "/lua/composite/CompositeMPS.fbt", COMPOSITE),
                TypeInfo(filePath = "/lua/basic/adapter/AdaptMPS.adp", type = ADAPTER),
                TypeInfo(filePath = "/lua/composite/BasicBlockMPS.fbt", BASIC),
                TypeInfo(filePath = "/lua/composite/BBMPS.fbt", BASIC),
            )
        ) { system, declarations ->
            val device = system.devices[0]
            val controller = DynamicTypeLoadDeploymentController(device)
            controller.connect()
            val resource = device.resources[0]
            controller.createResource(resource)
            controller.createFBInstance(resource, declarations[0] as CompositeFBTypeDeclaration)
            controller.startResource(resource)
            controller.deleteResource(resource)
            controller.disconnect()
        }
        assert(testAppender.logsOfLevel(ERROR).isEmpty())
        assert(testAppender.logsOfLevel(INFO).isNotEmpty())
    }

    @Test
    fun `elevator app`() { // fixme: not working even in 4diac ide...
        testTemplate(
            systemFB = TypeInfo(filePath = "/lua/elevator/System.sys", type = SYSTEM),
            additionalFBs = listOf(
                TypeInfo(filePath = "/lua/elevator/Elevator.fbt", type = COMPOSITE),
                TypeInfo(filePath = "/lua/elevator/BasicControlTS.fbt", BASIC),
                TypeInfo(filePath = "/lua/elevator/BasicControlTS5.fbt", type = BASIC),
                TypeInfo(filePath = "/lua/elevator/ControlTS.fbt", type = COMPOSITE),
                TypeInfo(filePath = "/lua/elevator/DelayDoor.fbt", type = BASIC),
                TypeInfo(filePath = "/lua/elevator/Door.fbt", type = BASIC),
                TypeInfo(filePath = "/lua/elevator/DoorModel.fbt", type = COMPOSITE),
                TypeInfo(filePath = "/lua/elevator/DoorSensor.fbt", type = BASIC),
                TypeInfo(filePath = "/lua/elevator/LiftModel.fbt", type = BASIC),
                TypeInfo(filePath = "/lua/elevator/LiftSensor.fbt", type = BASIC),
                TypeInfo(filePath = "/lua/elevator/Model.fbt", type = COMPOSITE),
                TypeInfo(filePath = "/lua/elevator/Sensors.fbt", type = COMPOSITE),
            )
        ) { system, declarations ->
            val device = system.devices[0]
            val controller = DynamicTypeLoadDeploymentController(device)
            controller.connect()
            val resource = device.resources[0]
            controller.createResource(resource)
            controller.createFBInstance(resource, declarations[0] as CompositeFBTypeDeclaration)
            controller.disconnect()
        }
        assert(testAppender.logsOfLevel(ERROR).isEmpty())
        assert(testAppender.logsOfLevel(INFO).isNotEmpty())
    }


    // test container changes host and port in runtime
    private fun updateAddressAndPortInDevice(device: DeviceDeclaration) {
        val mgrId = "${forte.host}:${forte.getMappedPort(PORT)}"
        (device.parameters.first { it.parameterReference.presentation == "MGR_ID" }.value
                as Literal<String>).updateValue(mgrId)
    }

    private fun Literal<String>.updateValue(newValue: String) {
        value = newValue
    }

    private fun testTemplate(
        systemFB: TypeInfo,
        additionalFBs: List<TypeInfo> = listOf(),
        test: (SystemDeclaration, List<Declaration>) -> Unit
    ) {
        project.repository.modelAccess.runWriteAction {
            val model = TemporaryModels.getInstance().create(false, false, "tmp", TempModuleOptions.forDefaultModule())

            val system = model.addType(systemFB) as SystemDeclaration
            require(system.devices.isNotEmpty())
            val parsedFBTypes = model.addTypes(additionalFBs)

            updateAddressAndPortInDevice(system.devices[0])

            test(system, parsedFBTypes)
        }
    }

    companion object {
        private const val PORT = 61499
        private lateinit var logConfig: Configuration
        private lateinit var testAppender: TestAppender

        @ClassRule
        @JvmField
        val forte: GenericContainer<*> = GenericContainer(DockerImageName.parse("tuojianlyu/forte:vv"))
            .withExposedPorts(PORT)
            .withImagePullPolicy(PullPolicy.alwaysPull())
            .waitingFor(
                LogMessageWaitStrategy().withRegEx(".*FORTE is up and running.*")
                    .withStartupTimeout(Duration.ofMinutes(2))
            )

        @BeforeClass
        @JvmStatic
        fun setUp() {
            val context = LogManager.getContext(false) as LoggerContext
            logConfig = context.configuration
            // no need to output test log data to stdout
            logConfig.rootLogger.removeAppender("ConsoleAppender")
            testAppender = logConfig.appenders["TestAppender"] as TestAppender
        }
    }
}
