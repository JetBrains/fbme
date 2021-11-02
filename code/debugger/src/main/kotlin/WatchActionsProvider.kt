package org.fbme.debugger

import jetbrains.mps.openapi.editor.cells.EditorCell
import jetbrains.mps.project.Project
import org.fbme.ide.iec61499.repository.PlatformRepositoryProvider
import org.fbme.ide.platform.debugger.Watchable
import org.fbme.ide.platform.debugger.WatchablePath
import org.fbme.ide.richediting.editor.RichEditorStyleAttributes
import org.fbme.lib.common.Declaration
import org.fbme.lib.iec61499.declarations.ResourceDeclaration
import org.fbme.lib.iec61499.descriptors.FBPortDescriptor
import org.fbme.lib.iec61499.fbnetwork.FunctionBlockDeclaration
import org.fbme.lib.iec61499.fbnetwork.PortPath
import org.fbme.lib.iec61499.fbnetwork.PortPath.Companion.createPortPath
import org.fbme.lib.iec61499.instances.FunctionBlockInstance

class WatchActionsProvider(
    private val cell: EditorCell,
    private val resourceDeclaration: ResourceDeclaration,
    project: Project
) {
    private val style = cell.style
    private val repository = PlatformRepositoryProvider.getInstance(project)
    private val debugger = Debugger.getInstance(project)!!

    private val fb: FunctionBlockDeclaration? = style.get(RichEditorStyleAttributes.FB) as? FunctionBlockDeclaration
    private val port: FBPortDescriptor? = style.get(RichEditorStyleAttributes.PORT)

    fun isFB() = fb != null && port == null
    fun isPort() = fb != null && port != null

    fun isWatchable(): Boolean {
        return fb != null
    }

    fun getName(): String {
        check(isWatchable())
        return port?.name ?: fb!!.name
    }

    fun watch() {
        check(isWatchable())
        when {
            isPort() -> {
                checkNotNull(fb)
                checkNotNull(port)
                watchPort(fb, port)
            }
            isFB() -> {
                checkNotNull(fb)
                watchFB(fb)
            }
        }
    }

    private fun watchFB(fb: FunctionBlockDeclaration) {
        for (port in fb.ports) {
            val watchable = Watchable(createWatchablePath(fb), port.portTarget.name)
            debugger.watch(watchable)
        }
    }

    private fun watchPort(fb: FunctionBlockDeclaration, port: FBPortDescriptor) {
        val watchable = createWatchableForPort(fb, port)
        debugger.watch(watchable)
    }

    private fun getPort(): PortPath<out Declaration> {
        checkNotNull(port)
        return createPortPath(fb, port.connectionKind, port.declaration!!)
    }

    private fun createWatchableForPort(fb: FunctionBlockDeclaration, port: FBPortDescriptor): Watchable {
        return Watchable(createWatchablePath(fb), port.name)
    }

    private fun createWatchablePath(fb: FunctionBlockDeclaration): WatchablePath {
        var networkInstance = style.get(RichEditorStyleAttributes.NETWORK_INSTANCE)

        val nestedList = mutableListOf<FunctionBlockDeclaration>()
        var parentInstance = networkInstance.parent as? FunctionBlockInstance;
        while (parentInstance != null) {
            val functionBlock = parentInstance.declaration as FunctionBlockDeclaration
            nestedList.add(functionBlock)
            networkInstance = parentInstance.parent
            parentInstance = networkInstance.parent as? FunctionBlockInstance
        }
        val path = nestedList.reversed().plus(fb).toTypedArray()

        return WatchablePath(resourceDeclaration, *path)
    }
}