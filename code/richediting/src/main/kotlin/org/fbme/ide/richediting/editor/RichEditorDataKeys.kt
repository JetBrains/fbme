package org.fbme.ide.richediting.editor

import com.intellij.ide.DataManager
import com.intellij.openapi.actionSystem.CommonDataKeys
import com.intellij.openapi.actionSystem.DataContext
import com.intellij.openapi.actionSystem.DataKey
import jetbrains.mps.nodeEditor.EditorComponent
import jetbrains.mps.openapi.editor.EditorContext
import org.fbme.lib.iec61499.declarations.AlgorithmDeclaration
import org.fbme.lib.iec61499.declarations.ApplicationDeclaration
import org.fbme.lib.iec61499.declarations.DeviceDeclaration
import org.fbme.lib.iec61499.declarations.ResourceDeclaration
import org.fbme.lib.iec61499.instances.NetworkInstance

object RichEditorDataKeys : CommonDataKeys() {
    @JvmField
    val NETWORK_INSTANCE = DataKey.create<NetworkInstance?>("fbnetwork-instance")

    @JvmField
    val ALGORITHM = DataKey.create<AlgorithmDeclaration?>("algorithm-node")

    @JvmField
    val APPLICATION = DataKey.create<ApplicationDeclaration?>("application-node")

    @JvmField
    val DEVICE = DataKey.create<DeviceDeclaration?>("device-node")

    @JvmField
    val RESOURCE = DataKey.create<ResourceDeclaration?>("resource-node")

    @JvmStatic
    fun contextNetworkInstance(context: EditorContext): NetworkInstance? {
        return ideaDataContext(context).getData(NETWORK_INSTANCE)
    }

    @JvmStatic
    fun contextAlogithm(context: EditorContext): AlgorithmDeclaration? {
        return ideaDataContext(context).getData(ALGORITHM)
    }

    @JvmStatic
    fun contextApplication(context: EditorContext): ApplicationDeclaration? {
        return ideaDataContext(context).getData(APPLICATION)
    }

    @JvmStatic
    fun contextDevice(context: EditorContext): DeviceDeclaration? {
        return ideaDataContext(context).getData(DEVICE)
    }

    @JvmStatic
    fun contextResource(context: EditorContext): ResourceDeclaration? {
        return ideaDataContext(context).getData(RESOURCE)
    }

    private fun ideaDataContext(context: EditorContext): DataContext {
        return DataManager.getInstance()
            .getDataContext((context.editorComponent as EditorComponent).externalComponent.parent)
    }
}
