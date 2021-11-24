package org.fbme.debugger

import androidx.compose.runtime.mutableStateListOf
import androidx.compose.runtime.mutableStateMapOf
import androidx.compose.runtime.mutableStateOf
import androidx.compose.ui.focus.FocusRequester
import androidx.compose.ui.text.AnnotatedString
import androidx.compose.ui.text.input.TextFieldValue
import jetbrains.mps.lang.smodel.generator.smodelAdapter.SPropertyOperations
import jetbrains.mps.project.Project
import org.apache.log4j.Level
import org.fbme.ide.platform.debugger.DeviceConnection
import org.fbme.ide.platform.debugger.DevicesFacade
import org.fbme.ide.platform.debugger.Watchable
import org.fbme.lib.iec61499.declarations.DeviceDeclaration
import org.fbme.lib.iec61499.declarations.ResourceDeclaration
import org.fbme.lib.iec61499.declarations.SystemDeclaration
import java.io.IOException
import javax.swing.JComponent

class Debugger private constructor(private val project: Project) {
    private val watchables = mutableStateMapOf<Watchable, AnnotatedString>()
    private val searchWatchables = mutableStateOf(TextFieldValue())
    private val states = mutableStateListOf<StateData>()
    private val searchStates = mutableStateOf(TextFieldValue())
    private val inspections = mutableMapOf<Watchable, InspectionProvider>()
    private val devices = mutableMapOf<DeviceDeclaration, DeviceData>()

    data class DeviceData(
        val system: SystemDeclaration?,
        val systemName: String?,
        val name: String,
        val resources: Map<ResourceDeclaration, ResourceData>
    )

    data class ResourceData(
        val name: String
    )

    data class StateData(
        val watchable: Watchable,
        val oldValue: String?,
        val newValue: String,
        val watchables: Map<Watchable, AnnotatedString>
    ) {
        internal val focusRequester = FocusRequester()
        override fun toString(): String {
            return watchable.name + ": " + (oldValue ?: "???") + " -> " + newValue
        }
    }

    fun watch(watchable: Watchable, inspectionProvider: InspectionProvider) {
        if (!watchables.contains(watchable)) {
            watchables[watchable] = AnnotatedString("???")
            inspections[watchable] = inspectionProvider
        }
    }

    fun stopWatch(watchable: Watchable) {
        if (watchables.contains(watchable)) {
            watchables.remove(watchable)
        }
    }

    fun isWatched(watchable: Watchable): Boolean {
        return watchables.contains(watchable)
    }

    @Synchronized
    fun setValueForWatchable(watchable: Watchable, newValue: String) {
        val oldValue = watchables[watchable]
        if (oldValue?.text != newValue) {
            watchables[watchable] = AnnotatedString(newValue)
            states.add(
                index = 0,
                StateData(
                    watchable = watchable,
                    oldValue = oldValue?.text,
                    newValue = newValue,
                    watchables = watchables.toMap()
                )
            )
        }
    }

    fun deployResource(device: DeviceDeclaration, resource: ResourceDeclaration) {
        project.modelAccess.runReadAction {
            try {
                val connection = DevicesFacade.instance!!.attach(device)
                if (connection != null) {
                    connection.deployResource(resource)
                    val debugger = getInstance(project)
                    val watchables = debugger!!.getWatched()
                    for (watchable in watchables) {
                        connection.addWatch(watchable)
                    }
                } else {
                     error("Can't connect to device")
                }
            } catch (e: IOException) {
                DevicesFacade.instance!!.invalidate(device)
                error("On resource deployment: " + e.message)
            }
        }
    }

    fun addDevices(deviceDeclarations: Set<DeviceDeclaration>) {
        for (deviceDeclaration in deviceDeclarations) {
            devices[deviceDeclaration] = DeviceData(
                name = deviceDeclaration.name,
                system = deviceDeclaration.container,
                systemName = deviceDeclaration.container?.name,
                resources = deviceDeclaration.resources.associateWith { resource ->
                    ResourceData(name = resource.name)
                },
            )
        }
    }

    fun getWatched(): Set<Watchable> {
        return watchables.keys
    }

    fun getDebuggerTab(): JComponent {
        return debuggerPanel(states, searchStates, inspections, watchables, searchWatchables, this)
    }

    fun getDevicesTab(): JComponent {
        return devicesPanel(devices, this)
    }

    fun clear() {
        watchables.clear()
        searchWatchables.value = TextFieldValue()
        states.clear()
        searchStates.value = TextFieldValue()
        inspections.clear()
    }

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