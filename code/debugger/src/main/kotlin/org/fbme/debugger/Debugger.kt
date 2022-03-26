package org.fbme.debugger

import androidx.compose.runtime.mutableStateListOf
import androidx.compose.runtime.mutableStateMapOf
import androidx.compose.runtime.mutableStateOf
import androidx.compose.ui.awt.ComposePanel
import androidx.compose.ui.focus.FocusRequester
import androidx.compose.ui.text.input.TextFieldValue
import jetbrains.mps.project.Project
import org.fbme.debugger.common.ui.tree.NavigableNode
import org.fbme.debugger.common.ui.tree.NavigableTreeNode
import org.fbme.debugger.common.ui.tree.TreeNode
import org.fbme.debugger.ui.*
import org.fbme.ide.iec61499.repository.PlatformRepositoryProvider
import org.fbme.ide.platform.debugger.*
import org.fbme.lib.common.Declaration
import org.fbme.lib.iec61499.declarations.*
import org.fbme.lib.iec61499.fbnetwork.EntryKind
import org.fbme.lib.iec61499.fbnetwork.FunctionBlockDeclaration
import java.io.IOException
import javax.swing.JComponent

class Debugger private constructor(private val project: Project) {
//    val watchables = mutableStateMapOf<Watchable, String?>()
//    val watchableNodes = mutableStateListOf<NavigableNode>()
//    val searchWatchables = mutableStateOf(TextFieldValue())
//    val selectedWatchableNode = mutableStateOf<NavigableNode?>(null)
//    val watchablePathTypes = mutableMapOf<FunctionBlockDeclaration, Declaration?>()
//    val states = mutableStateListOf<StateData>()
//    val searchStates = mutableStateOf(TextFieldValue())
//    val selectedState = mutableStateOf<StateData?>(null)
//    val inspections = mutableMapOf<Watchable, InspectionProvider>()
//    val devices = mutableMapOf<DeviceDeclaration, DeviceData>()
//    val deployNodes = mutableStateListOf<NavigableNode>()
//    val deploySelectedNode = mutableStateOf<NavigableNode?>(null)
//    val watcherFacade = WatcherFacade.getInstance(project)
//
//    private val debugPanel: ComposePanel by lazy { debugPanel(this) }
//    private val deployPanel: ComposePanel by lazy { deployPanel(this) }
//
//    private val readWatchesListener = object : ReadWatchesListener {
//        @Synchronized
//        override fun onReadWatches(watches: Map<WatchableData, String>) {
//            val repository = PlatformRepositoryProvider.getInstance(project)
//            val newWatches = watches.mapKeys { it.key.resolve(repository) }
//
//            val changes = mutableMapOf<Watchable, Pair<String?, String?>>()
//            val currentWatches = states.firstOrNull()?.watches ?: watchables
//            if (currentWatches.isNotEmpty()) {
//                for ((watchable, oldValue) in currentWatches) {
//                    val newValue = newWatches[watchable] ?: continue
//                    if (newValue != oldValue) {
//                        changes[watchable] = Pair(oldValue, newValue)
//                    }
//                }
//            }
//
//            if (changes.isNotEmpty()) {
//                states.add(
//                    0,
//                    StateData(
//                        changes = changes,
//                        watches = newWatches
//                    )
//                )
//            }
//        }
//    }
//
//    init {
//        watcherFacade?.addReadWatchesListener(readWatchesListener)
//    }
//
//    data class DeviceData(
//        val system: SystemDeclaration?,
//        val systemName: String?,
//        val name: String,
//        val resources: Map<ResourceDeclaration, ResourceData>
//    )
//
//    data class ResourceData(
//        val name: String
//    )
//
//    data class StateData(
//        val changes: Map<Watchable, Pair<String?, String?>>,
//        val watches: Map<Watchable, String?>
//    ) {
//        val timestamp = getCurrentDateTime()
//        internal val focusRequester = FocusRequester()
//
//        val label = "${changes.size} changes at ${timestamp.toString("dd.MM.yyyy, HH:mm:ss.SSS")}"
//    }
//
//    @Synchronized
//    fun watch(watchable: Watchable, inspectionProvider: InspectionProvider) {
//        if (!watchables.contains(watchable)) {
//            val value = null
//            watchables[watchable] = value
//            inspections[watchable] = inspectionProvider
//
//            val fbTypes = mutableMapOf<FunctionBlockDeclaration, Declaration?>()
//            val fbs = watchable.path.path
//            project.modelAccess.runReadAction {
//                for (fb in fbs) {
//                    fbTypes[fb] = fb.type.declaration
//                }
//            }
//            watchablePathTypes.putAll(fbTypes)
//
//            val currentParentNodes = mutableListOf<NavigableTreeNode>()
//
//            val watchableParents: List<Declaration> = listOf(watchable.path.root, *watchable.path.path)
//            val watchableParentNames: List<String> = watchable.fqName.split('.').dropLast(1)
//
//            var currentParentNode: NavigableNode? = null
//            var i = 0
//            while (i < watchableParents.size) {
//                val currentWatchableParent = watchableParents[i]
//                val currentParentName = watchableParentNames[i]
//
//                val parentIndex = watchableNodes.indexOfFirst { node ->
//                    (node as? WatchablesTreeNodes.NodeWithDeclaration)?.declaration === currentWatchableParent
//                }
//                var parentNode = watchableNodes.getOrNull(parentIndex) as? TreeNode
//                if (parentNode == null) {
//                    parentNode = when (currentWatchableParent) {
//                        is ResourceDeclaration -> WatchablesTreeNodes.ResourceNode(
//                            declaration = currentWatchableParent,
//                            name = currentParentName
//                        )
//                        is FunctionBlockDeclaration -> {
//                            when (watchablePathTypes[currentWatchableParent]) {
//                                is CompositeFBTypeDeclaration -> WatchablesTreeNodes.CompositeFBNode(
//                                    parent = currentParentNodes[i - 1] as WatchablesTreeNodes.CompositeFBParentNode,
//                                    declaration = currentWatchableParent,
//                                    name = currentParentName
//                                )
//                                is BasicFBTypeDeclaration -> WatchablesTreeNodes.BasicFBNode(
//                                    parent = currentParentNodes[i - 1] as WatchablesTreeNodes.BasicFBParentNode,
//                                    declaration = currentWatchableParent,
//                                    name = currentParentName
//                                )
//                                else -> error("Unexpected type declaration")
//                            }
//                        }
//                        else -> error("Unexpected parent declaration")
//                    }
//                    val prevParentNode = currentParentNodes.getOrNull(i - 1)
//                    insertNode(prevParentNode, parentNode)
//                }
//                if (i < currentParentNodes.size) {
//                    currentParentNodes[i] = parentNode
//                } else {
//                    currentParentNodes.add(parentNode)
//                }
//                i++
//            }
//            val portDescriptor = watchable.portDescriptor!!
//            val parentNode = currentParentNodes[i - 1] as WatchablesTreeNodes.FBNode
//            val node = WatchablesTreeNodes.PortNode(
//                parent = parentNode,
//                watchable = watchable,
//                isEvent = when (portDescriptor.connectionKind) {
//                    EntryKind.EVENT -> true
//                    EntryKind.DATA -> false
//                    EntryKind.ADAPTER -> error("Unexpected connection kind")
//                },
//                isInput = portDescriptor.isInput
//            )
//            insertNode(parentNode, node)
//        }
//    }
//
//    private fun insertNode(parent: NavigableTreeNode?, node: NavigableNode) {
//        if (parent == null) {
//            watchableNodes += node
//        } else {
//            val indexOfParent = watchableNodes.indexOf(parent)
//            val parentDepth = parent.depth
//            var curInd = indexOfParent + 1
//            var curDepth = watchableNodes.getOrNull(curInd)?.depth
//            while (curDepth != null && curDepth > parentDepth) {
//                curInd++
//                curDepth = watchableNodes.getOrNull(curInd)?.depth
//            }
//            watchableNodes.add(curInd, node)
//        }
//    }
//
//    @Synchronized
//    fun stopWatch(watchable: Watchable) {
//        if (watchables.contains(watchable)) {
//            watchables.remove(watchable)
//        }
//        val parents = HashSet<Declaration>()
//        for (w in watchables.keys) {
//            val watchableParents: List<Declaration> = listOf(w.path.root, *w.path.path)
//            parents.addAll(watchableParents)
//        }
//        val toDelete = mutableListOf<NavigableNode>()
//        for (node in watchableNodes) {
//            val isNeeded = when (node) {
//                is WatchablesTreeNodes.ResourceNode -> parents.contains(node.declaration)
//                is WatchablesTreeNodes.FBNode -> parents.contains(node.declaration)
//                is WatchablesTreeNodes.PortNode -> watchables.contains(node.watchable)
//                else -> error("Unexpected type of node")
//            }
//            if (!isNeeded) {
//                toDelete += node
//            }
//        }
//        for (node in toDelete) {
//            watchableNodes.remove(node)
//        }
//    }
//
//    fun isWatched(watchable: Watchable): Boolean {
//        return watchables.contains(watchable)
//    }
//
//    @Synchronized
//    fun setValueForWatchable(watchable: Watchable, newValue: String) {
//        val oldValue = watchables[watchable]
//        if (oldValue != newValue) {
//            watchables[watchable] = newValue
//        }
//    }
//
//    @Synchronized
//    fun deployResource(device: DeviceDeclaration, resource: ResourceDeclaration) {
//        project.modelAccess.runReadAction {
//            try {
//                val connection = DevicesFacade.instance!!.attach(device)
//                if (connection != null) {
//                    connection.deployResource(resource)
//                    for (watchable in getWatched()) {
//                        connection.addWatch(watchable)
//                    }
//                } else {
//                    error("Can't connect to device")
//                }
//            } catch (e: IOException) {
//                DevicesFacade.instance!!.invalidate(device)
//                error("On resource deployment: " + e.message)
//            }
//        }
//    }
//
//    @Synchronized
//    fun stopResource(device: DeviceDeclaration, resource: ResourceDeclaration) {
//        project.modelAccess.runReadAction {
//            try {
//                val connection = DevicesFacade.instance!!.attach(device)
//                if (connection != null) {
//                    connection.killResource(resource)
//                    connection.deleteResource(resource)
//                } else {
//                    error("Can't connect to device")
//                }
//            } catch (e: IOException) {
//                DevicesFacade.instance!!.invalidate(device)
//                error("On resource stopping: " + e.message)
//            }
//        }
//    }
//
//    @Synchronized
//    fun killResource(device: DeviceDeclaration, resource: ResourceDeclaration) {
//        project.modelAccess.runReadAction {
//            try {
//                val connection = DevicesFacade.instance!!.attach(device)
//                if (connection != null) {
//                    connection.killResource(resource)
//                } else {
//                    error("Can't connect to device")
//                }
//            } catch (e: IOException) {
//                DevicesFacade.instance!!.invalidate(device)
//                error("On resource killing: " + e.message)
//            }
//        }
//    }
//
//    @Synchronized
//    fun deleteResource(device: DeviceDeclaration, resource: ResourceDeclaration) {
//        project.modelAccess.runReadAction {
//            try {
//                val connection = DevicesFacade.instance!!.attach(device)
//                if (connection != null) {
//                    connection.deleteResource(resource)
//                } else {
//                    error("Can't connect to device")
//                }
//            } catch (e: IOException) {
//                DevicesFacade.instance!!.invalidate(device)
//                error("On resource deleting: " + e.message)
//            }
//        }
//    }
//
//    fun addDevices(deviceDeclarations: Set<DeviceDeclaration>) {
//        for (deviceDeclaration in deviceDeclarations) {
//            devices[deviceDeclaration] = DeviceData(
//                name = deviceDeclaration.name,
//                system = deviceDeclaration.container,
//                systemName = deviceDeclaration.container?.name,
//                resources = deviceDeclaration.resources.associateWith { resource ->
//                    ResourceData(name = resource.name)
//                },
//            )
//        }
//        var currentSystem: SystemDeclaration? = null
//        var currentSystemNode: DeploymentTreeNodes.SystemNode? = null
//        val devices = devices.toList().sortedBy { it.second.systemName!! }
//        for ((device, deviceData) in devices) {
//            val system = deviceData.system!!
//            if (currentSystem != system) {
//                currentSystemNode = DeploymentTreeNodes.SystemNode(system, deviceData.systemName!!)
//                deployNodes += currentSystemNode
//                currentSystem = system
//            }
//            val deviceNode = DeploymentTreeNodes.DeviceNode(currentSystemNode!!, device, deviceData.name)
//            deployNodes += deviceNode
//            for ((resource, resourceData) in deviceData.resources) {
//                deployNodes += DeploymentTreeNodes.ResourceNode(deviceNode, resource, resourceData.name)
//            }
//        }
//    }
//
//    fun getWatched(): Set<Watchable> {
//        return watchables.keys
//    }
//
//    fun getDebuggerTab(): JComponent {
//        return debugPanel
//    }
//
//    fun getDevicesTab(): JComponent {
//        return deployPanel
//    }
//
//    fun clear() {
//        states.clear()
//        selectedState.value = null
//        for (watchable in watchables.keys) {
//            watchables[watchable] = null
//        }
//    }

    companion object {
        private val instances: MutableMap<Project, Debugger> = mutableMapOf()

        @Synchronized
        fun getInstance(project: Project): Debugger? = instances[project]

        @Synchronized
        fun register(project: Project) {
            check(!instances.containsKey(project))
            val debugger = Debugger(project)
            instances.putIfAbsent(project, debugger)
        }

        @Synchronized
        fun unregister(project: Project) {
            check(instances.containsKey(project))
            instances.remove(project)
        }
    }
}