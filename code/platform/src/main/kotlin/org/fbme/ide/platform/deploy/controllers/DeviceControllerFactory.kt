package org.fbme.ide.platform.deploy.controllers

import org.fbme.lib.iec61499.declarations.DeviceDeclaration

interface DeviceControllerFactory {
    fun createFordiacDynamicTypeLoadController(device: DeviceDeclaration): DeviceController
    fun createFordiacController(device: DeviceDeclaration): DeviceController
}