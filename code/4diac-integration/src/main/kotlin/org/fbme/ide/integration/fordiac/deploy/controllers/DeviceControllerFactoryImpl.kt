package org.fbme.ide.integration.fordiac.deploy.controllers

import org.fbme.ide.platform.deploy.controllers.DeviceController
import org.fbme.ide.platform.deploy.controllers.DeviceControllerFactory
import org.fbme.lib.iec61499.declarations.DeviceDeclaration

class DeviceControllerFactoryImpl : DeviceControllerFactory {
    override fun createFordiacDynamicTypeLoadController(device: DeviceDeclaration): DeviceController =
        DynamicTypeLoadDeploymentController(device)

    override fun createFordiacController(device: DeviceDeclaration): DeviceController =
        DeploymentController(device)
}
