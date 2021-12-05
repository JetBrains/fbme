package org.fbme.ide.platform.debugger

import jetbrains.mps.project.Project
import jetbrains.mps.util.JDOMUtil
import org.fbme.ide.iec61499.repository.PlatformRepository
import org.fbme.ide.iec61499.repository.PlatformRepositoryProvider
import org.fbme.lib.common.Identifier
import org.fbme.lib.iec61499.declarations.DeviceDeclaration
import org.fbme.lib.iec61499.descriptors.FBPortDescriptor
import org.fbme.lib.iec61499.fbnetwork.EntryKind
import org.fbme.lib.iec61499.fbnetwork.FunctionBlockDeclaration
import org.slf4j.LoggerFactory
import java.io.ByteArrayInputStream
import java.io.IOException

class WatcherFacade private constructor(project: Project) {
    private val devices: MutableMap<Identifier, MutableSet<WatchableData>> = HashMap()
    private val readWatchesListeners: MutableSet<ReadWatchesListener> = mutableSetOf()
    private val watchedValueListeners: MutableMap<WatchableData, MutableSet<WatchedValueListener>> = HashMap()
    private val repository: PlatformRepository
    var thread: Thread? = null

    init {
        repository = PlatformRepositoryProvider.getInstance(project)
    }

    fun watch(watchable: Watchable) {
        val device = watchable.path.root.container as DeviceDeclaration
        val identifier = device.identifier
        try {
            val connection = DevicesFacade.instance?.attach(device)
            if (connection != null) {
                connection.addWatch(watchable)
            } else {
                LOG.error("no connection available for " + device.name)
            }
        } catch (e: IOException) {
            LOG.error("on start watching", e)
        }
        val watchables = devices.computeIfAbsent(identifier) { k: Identifier? -> HashSet() }
        watchables.add(watchable.serialize())
    }

    fun unwatch(watchable: Watchable) {
        val device = watchable.path.root.container as DeviceDeclaration
        val identifier = device.identifier
        try {
            DevicesFacade.instance?.attach(device)?.removeWatch(watchable)
        } catch (e: IOException) {
            LOG.error("on remove watching", e)
        }
        val watchables = devices[identifier] ?: return
        watchables.remove(watchable.serialize())
        if (watchables.isEmpty()) {
            devices.remove(identifier)
        }
    }

    fun isWatched(watchable: Watchable): Boolean {
        val device = watchable.path.root.container as DeviceDeclaration
        val identifier = device.identifier
        return devices[identifier]?.contains(watchable.serialize()) == true
    }

    fun addReadWatchesListener(listener: ReadWatchesListener) {
        readWatchesListeners.add(listener)
    }

    fun addWatchedValueListener(watchable: WatchableData, listener: WatchedValueListener) {
        val listeners = watchedValueListeners.computeIfAbsent(watchable) { HashSet() }
        listeners.add(listener)
    }

    fun removeWatchedValueListener(watchable: WatchableData, listener: WatchedValueListener) {
        val listeners = watchedValueListeners[watchable] ?: return
        listeners.remove(listener)
        if (listeners.isEmpty()) {
            watchedValueListeners.remove(watchable)
        }
    }

    fun start() {
        if (thread == null) {
            thread = watcherThread()
            thread!!.start()
            return
        }
        error("Double initialization")
    }

    fun stop() {
        try {
            if (thread != null) {
                thread!!.interrupt()
                thread!!.join()
                thread = null
                return
            }
            error("Stop of non-initialized")
        } catch (e: InterruptedException) {
            LOG.error("interrupted during stop", e)
            thread = null
        }
    }

    private fun watcherThread(): Thread {
        return Thread {
            try {
                while (!Thread.currentThread().isInterrupted) {
                    repository.mpsRepository.modelAccess.runReadInEDT {
                        for (deviceIdentifier in devices.keys) {
                            try {
                                val device = repository.declarationsScope.findDeviceDeclaration(deviceIdentifier)
                                requireNotNull(device)
                                val connection = DevicesFacade.instance?.attach(device)
                                if (connection != null && connection.isAlive) {
                                    val resolvedWatches: Map<WatchableData, String> = resolveWatches(device, connection.readWatches())

                                    for (listener in readWatchesListeners) {
                                        listener.onReadWatches(resolvedWatches)
                                    }

                                    for ((key, value) in resolvedWatches) {
                                        val listeners: Set<WatchedValueListener> = watchedValueListeners[key]!!
                                        for (listener in listeners) {
                                            listener.onValueChanged(value)
                                        }
                                    }
                                }
                            } catch (e: Throwable) {

                            }
                        }
                    }
                    Thread.sleep(100)
                }
            } catch (e: InterruptedException) {
                Thread.currentThread().interrupt()
            }
        }
    }

    private fun findPort(
        parent: FunctionBlockDeclaration,
        port: String
    ): FBPortDescriptor? {
        return parent.type.eventInputPorts.find { it.name == port }
            ?: parent.type.eventOutputPorts.find { it.name == port }
            ?: parent.type.dataInputPorts.find { it.name == port }
            ?: parent.type.dataOutputPorts.find { it.name == port }
    }

    companion object {
        private val LOG = LoggerFactory.getLogger(WatcherFacade::class.java)
        private val INSTANCES: MutableMap<Project, WatcherFacade> = HashMap()

        @JvmStatic
        @Synchronized
        fun getInstance(project: Project): WatcherFacade? {
            return INSTANCES[project]
        }

        @JvmStatic
        @Synchronized
        fun register(project: Project) {
            assert(!INSTANCES.containsKey(project))
            val facade = WatcherFacade(project)
            facade.start()
            INSTANCES[project] = facade
        }

        @JvmStatic
        @Synchronized
        fun unregister(project: Project) {
            assert(INSTANCES.containsKey(project))
            INSTANCES.remove(project)!!.stop()
        }

        fun resolveWatches(device: DeviceDeclaration, watch: String): Map<WatchableData, String> {
            return try {
                val doc = JDOMUtil.loadDocument(ByteArrayInputStream(watch.toByteArray()))
                val watches: MutableMap<WatchableData, String> = HashMap()
                val watchesElement = doc.rootElement.getChild("Watches")
                for (resourceElement in watchesElement.getChildren("Resource")) {
                    val resourceName = resourceElement.getAttributeValue("name")
                    val resource =
                        device.resources.stream().filter { it.name == resourceName }
                            .findFirst().orElseThrow()
                    for (fbElement in resourceElement.getChildren("FB")) {
                        val fbName = fbElement.getAttributeValue("name")
                        val fb = resource.allFunctionBlocks().stream()
                            .filter { it.name == fbName }
                            .findFirst().orElseThrow()
                        for (portElement in fbElement.getChildren("Port")) {
                            val portName = portElement.getAttributeValue("name")
                            val dataElement = portElement.getChild("Data")
                            if (dataElement != null) {
                                watches[Watchable(WatchablePath(resource, fb), portName).serialize()] =
                                    dataElement.getAttributeValue("value")
                            }
                        }
                    }
                }
                watches
            } catch (e: Throwable) {
                emptyMap()
            }
        }
    }
}