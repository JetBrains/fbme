package org.fbme.debugger.plugin

import com.intellij.openapi.components.service
import com.intellij.openapi.project.Project
import jetbrains.mps.nodeEditor.MPSColors
import jetbrains.mps.openapi.editor.cells.EditorCell
import org.fbme.ide.iec61499.repository.PlatformElement
import org.fbme.ide.platform.debugger.Watchable
import org.fbme.ide.platform.debugger.WatchablePath
import org.fbme.ide.platform.debugger.WatchedValueListener
import org.fbme.ide.platform.debugger.WatcherFacade
import org.fbme.ide.richediting.editor.RichEditorStyleAttributes
import org.fbme.ide.richediting.inspections.Inspection
import org.fbme.ide.richediting.inspections.NetworkInspector
import org.fbme.ide.richediting.plugin.NetworkObservationKeys
import org.fbme.ide.richediting.viewmodel.FunctionBlockView
import org.fbme.lib.common.Declaration
import org.fbme.lib.iec61499.declarations.BasicFBTypeDeclaration
import org.fbme.lib.iec61499.declarations.ResourceDeclaration
import org.fbme.lib.iec61499.descriptors.FBPortDescriptor
import org.fbme.lib.iec61499.descriptors.FBTypeDescriptor
import org.fbme.lib.iec61499.fbnetwork.FunctionBlockDeclaration
import org.fbme.lib.iec61499.fbnetwork.FunctionBlockDeclarationBase
import org.fbme.lib.iec61499.fbnetwork.PortPath
import org.fbme.lib.iec61499.instances.FunctionBlockInstance
import org.fbme.lib.iec61499.instances.NetworkInstance

class NetworkWatchActions(
    private val resourceDeclaration: ResourceDeclaration,
    editorCell: EditorCell,
    project: Project,
) {
    private val watchers = project.service<WatcherFacade>()

    private val style = editorCell.style

    private val resourceNode get() = (resourceDeclaration as PlatformElement).node

    val networkInstance: NetworkInstance?
        get() = style.get(RichEditorStyleAttributes.NETWORK_INSTANCE)

    val functionBlock: FunctionBlockDeclarationBase? = style.get(RichEditorStyleAttributes.FB)

    val port: PortPath<out Declaration>?
        get() {
            val portDescriptor: FBPortDescriptor = style.get(RichEditorStyleAttributes.PORT) ?: return null
            return PortPath.createPortPath(functionBlock, portDescriptor.connectionKind, portDescriptor.declaration!!)
        }

    val selectedFunctionBlocks: Sequence<FunctionBlockDeclarationBase>
        get() {
            val selectedComponents =
                style.get(RichEditorStyleAttributes.SELECTED_FBS)?.selectedComponents ?: emptyList()
            return selectedComponents
                .asSequence()
                .filterIsInstance<FunctionBlockView>()
                .map { it.component }
        }


    fun highlightEventConnections() {
        // to test highlight connections only, TODO write normal tests
        val inspector: NetworkInspector = inspector ?: return
        val networkInstance: NetworkInstance = networkInstance ?: return
        for (connection in networkInstance.networkDeclaration.eventConnections) {
            inspector.setHighlightingForConnection(connection, MPSColors.YELLOW)
        }
    }

    fun hasPortToWatch(): Boolean {
        if (inspector == null) {
            return false
        }
        val port: PortPath<*>? = port
        return port != null && getPortListener(port) == null
    }

    fun hasWatchedPort(): Boolean {
        if (inspector == null) {
            return false
        }
        val port: PortPath<*>? = port
        return port != null && getPortListener(port) != null
    }

    fun portToWatch(): String =
        style.get(RichEditorStyleAttributes.PORT).name

    fun hasWatchedFunctionBlock(): Boolean =
        inspector != null && functionBlock != null && functionBlock.ports.any { getPortListener(it) != null }

    fun hasWatchedFunctionBlocksInSelection(): Boolean =
        inspector != null && selectedFunctionBlocks.any { it.ports.any { getPortListener(it) != null } }

    fun hasFunctionBlockToWatch(): Boolean =
        inspector != null && functionBlock != null && functionBlock.ports.any { getPortListener(it) == null }

    fun hasFunctionBlocskToWatchInSelection(): Boolean =
        inspector != null && selectedFunctionBlocks.any { it.ports.any { getPortListener(it) == null } }

    fun unwatchSelectedFunctionBlocks() {
        for (functionBlock in selectedFunctionBlocks) {
            unwatchFunctionBlock(functionBlock)
        }
    }

    fun unwatchFunctionBlock() {
        unwatchFunctionBlock(functionBlock ?: return)
    }

    private fun unwatchFunctionBlock(functionBlock: FunctionBlockDeclarationBase) {
        val provider: NetworkInspector = inspector ?: return
        for (port in functionBlock.ports) {
            val listener: WatchedValueListener = getPortListener(port) ?: continue
            val watchable = Watchable(createWatchablePath(functionBlock), port.portTarget.name)
            watchers.unwatch(watchable)
            watchers.removeWatchedValueListener(watchable.serialize(), listener)
            provider.setInspectionForPort(port, null)
            setPortListener(port, null)
        }
    }

    fun watchSelectedFunctionBlocks() {
        for (functionBlock in selectedFunctionBlocks) {
            watchFunctionBlock(functionBlock)
        }
    }

    fun watchFunctionBlock() {
        watchFunctionBlock(functionBlock as FunctionBlockDeclaration)
    }

    private fun watchFunctionBlock(functionBlock: FunctionBlockDeclarationBase) {
        val provider: NetworkInspector = inspector ?: return
        for (port in functionBlock.ports) {
            if (getPortListener(port) != null) {
                continue
            }
            val portName: String = port.portTarget.name
            val watchable = Watchable(createWatchablePath(functionBlock), portName)
            val type: FBTypeDescriptor = functionBlock.type
            if (watchable.portDescriptor == null) {
                val eventInputPorts: List<FBPortDescriptor> = type.eventInputPorts
                findPortDescriptor(eventInputPorts, portName, watchable)
            }
            if (watchable.portDescriptor == null) {
                val eventOutputPorts: List<FBPortDescriptor> = type.eventOutputPorts
                findPortDescriptor(eventOutputPorts, portName, watchable)
            }
            if (watchable.portDescriptor == null) {
                val dataInputPorts: List<FBPortDescriptor> = type.dataInputPorts
                findPortDescriptor(dataInputPorts, portName, watchable)
            }
            if (watchable.portDescriptor == null) {
                val dataOutputPorts: List<FBPortDescriptor> = type.dataOutputPorts
                findPortDescriptor(dataOutputPorts, portName, watchable)
            }
            val listener = object : WatchedValueListener {
                override fun onValueChanged(newValue: String) {
                    provider.setInspectionForPort(port, Inspection(newValue))
                }
            }
            watchers.watch(watchable)
            watchers.addWatchedValueListener(watchable.serialize(), listener)
            setPortListener(port, listener)
        }
    }

    private fun findPortDescriptor(ports: List<FBPortDescriptor>, portName: String, watchable: Watchable) {
        for (portDescriptor in ports) {
            if (portDescriptor.name === portName) {
                watchable.portDescriptor = portDescriptor
                break
            }
        }
    }

    fun createWatchablePath(): WatchablePath {
        return createWatchablePath(functionBlock as FunctionBlockDeclaration)
    }

    private fun createWatchablePath(fb: FunctionBlockDeclarationBase): WatchablePath {
        var networkInstance: NetworkInstance = style.get(RichEditorStyleAttributes.NETWORK_INSTANCE)
        val nestedList: MutableList<FunctionBlockDeclarationBase> = arrayListOf()
        var parentInstance: FunctionBlockInstance? = networkInstance.parent as? FunctionBlockInstance
        while (parentInstance != null) {
            val functionBlock: FunctionBlockDeclaration = parentInstance.declaration as FunctionBlockDeclaration
            nestedList += functionBlock
            networkInstance = parentInstance.parent
            parentInstance = networkInstance.parent as? FunctionBlockInstance
        }
        val pathList: MutableList<FunctionBlockDeclarationBase> = arrayListOf()
        pathList += nestedList.reversed()
        pathList += fb
        return WatchablePath(resourceDeclaration, pathList)
    }

    fun createWatchableForPort(): Watchable {
        val portDescriptor: FBPortDescriptor = style.get(RichEditorStyleAttributes.PORT)
        val watchable = Watchable(createWatchablePath(), portDescriptor.name)
        watchable.portDescriptor = portDescriptor
        return watchable
    }

    fun createWatchableForEcc(): Watchable {
        return Watchable(createWatchablePath(), "\$ECC")
    }

    fun watchPort() {
        val provider: NetworkInspector = inspector ?: return
        val port: PortPath<*> = port ?: return
        val watchable = createWatchableForPort()
        val listener = WatchedValueListener { newValue -> provider.setInspectionForPort(port, Inspection(newValue)) }
        watchers.watch(watchable)
        watchers.addWatchedValueListener(watchable.serialize(), listener)
        setPortListener(port, listener)
    }

    fun unwatchPort() {
        val provider: NetworkInspector = inspector ?: return
        val watchable = createWatchableForPort()
        val port: PortPath<*> = port ?: return
        watchers.unwatch(watchable)
        getPortListener(port)?.let { watchers.removeWatchedValueListener(watchable.serialize(), it) }
        provider.setInspectionForPort(port, null)
        setPortListener(port, null)
    }

    fun hasEccToWatch(): Boolean {
        if (inspector == null) {
            return false
        }
        val fb: FunctionBlockDeclarationBase = style.get(RichEditorStyleAttributes.FB) ?: return false
        return fb.type.declaration is BasicFBTypeDeclaration && getECCStateListener(fb) == null
    }

    fun hasWatchedEcc(): Boolean {
        if (inspector == null) {
            return false
        }
        val fb: FunctionBlockDeclarationBase = style.get(RichEditorStyleAttributes.FB) ?: return false
        return fb.type.declaration is BasicFBTypeDeclaration && getECCStateListener(fb) != null
    }

    fun watchEcc() {
        val inspector: NetworkInspector = inspector ?: return
        val watchable = createWatchableForEcc()
        val fb: FunctionBlockDeclarationBase = style.get(RichEditorStyleAttributes.FB)
        val listener = WatchedValueListener { newValue ->
            inspector.setInspectionForComponent(fb, Inspection("State: $newValue"))
        }
        watchers.watch(watchable)
        watchers.addWatchedValueListener(watchable.serialize(), listener)
        setECCStateListener(fb, listener)
    }

    fun unwatchEcc() {
        val provider: NetworkInspector = inspector ?: return
        val watchable = createWatchableForEcc()
        val fb: FunctionBlockDeclarationBase = style.get(RichEditorStyleAttributes.FB)
        watchers.unwatch(watchable)
        getECCStateListener(fb)?.let { watchers.removeWatchedValueListener(watchable.serialize(), it) }
        provider.setInspectionForComponent(fb, null)
        setECCStateListener(fb, null)
    }

    var inspector: NetworkInspector?
        get() = networkInstance?.let { NetworkObservationKeys.inspector(it) as? NetworkInspector }
        set(inspector) {
            networkInstance?.let { resourceNode.putUserObject(NetworkObservationKeys.inspector(it), inspector) }
        }

    fun getPortListener(port: PortPath<*>): WatchedValueListener? {
        val key = NetworkObservationKeys.portListener(networkInstance ?: return null, port)
        return resourceNode.getUserObject(key) as? WatchedValueListener
    }

    fun setPortListener(port: PortPath<*>, listener: WatchedValueListener?) {
        val key = NetworkObservationKeys.portListener(networkInstance ?: return, port)
        resourceNode.putUserObject(key, listener)
    }

    fun getECCStateListener(fb: FunctionBlockDeclarationBase): WatchedValueListener? {
        val key = NetworkObservationKeys.eccStateListener(networkInstance ?: return null, fb)
        return resourceNode.getUserObject(key) as? WatchedValueListener
    }

    fun setECCStateListener(fb: FunctionBlockDeclarationBase, listener: WatchedValueListener?) {
        val key = NetworkObservationKeys.eccStateListener(networkInstance ?: return, fb)
        resourceNode.putUserObject(key, listener)
    }
}
