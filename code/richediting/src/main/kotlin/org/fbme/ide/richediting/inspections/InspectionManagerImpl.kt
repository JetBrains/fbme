package org.fbme.ide.richediting.inspections

import jetbrains.mps.openapi.editor.EditorComponent
import jetbrains.mps.openapi.editor.extensions.EditorExtension
import org.fbme.lib.common.Declaration
import org.fbme.lib.iec61499.ecc.ECC
import org.fbme.lib.iec61499.ecc.StateTransition
import org.fbme.lib.iec61499.fbnetwork.FBNetworkConnection
import org.fbme.lib.iec61499.fbnetwork.PortPath
import org.fbme.lib.iec61499.instances.NetworkInstance
import java.awt.Color

class InspectionManagerImpl : InspectionManager {
    private val myNetworkInspectionFacilities: MutableMap<NetworkInstance, NetworkInspectionsFacility> = HashMap()
    private val myNetworkInspectors: MutableMap<NetworkInstance, MyNetworkInspector> = HashMap()
    private val myECCInspectionFacilities: MutableMap<ECC, ECCInspectionsFacility> = HashMap()
    private val myECCInspectors: MutableMap<ECC, MyECCInspector> = HashMap()
    override fun registerNetwork(network: NetworkInstance, facility: NetworkInspectionsFacility) {
        myNetworkInspectionFacilities[network] = facility
        val current = myNetworkInspectors[network]
        if (current != null) {
            facility.install()
        }
    }

    override fun unregisterNetwork(network: NetworkInstance) {
        val facility = myNetworkInspectionFacilities.remove(network)
        val current = myNetworkInspectors[network]
        if (current != null) {
            facility!!.uninstall()
        }
    }

    override fun installInspector(network: NetworkInstance, onDispose: Runnable): NetworkInspector? {
        val facility = myNetworkInspectionFacilities[network]
        if (facility != null) {
            val previos = myNetworkInspectors[network]
            if (previos != null) {
                previos.dispose()
            } else {
                facility.install()
            }
            val res = MyNetworkInspector(network, onDispose)
            myNetworkInspectors[network] = res
            return res
        }
        return null
    }

    override fun disposeInspector(network: NetworkInstance) {
        val inspector = myNetworkInspectors[network]
        if (inspector != null) {
            inspector.dispose()
            myNetworkInspectors.remove(network)
            myNetworkInspectionFacilities[network]!!.uninstall()
        }
    }

    override fun registerECC(ecc: ECC, facility: ECCInspectionsFacility) {
        myECCInspectionFacilities[ecc] = facility
    }

    override fun unregisterECC(ecc: ECC) {
        myECCInspectionFacilities.remove(ecc)
    }

    override fun installInspector(ecc: ECC, onDispose: Runnable): ECCInspector? {
        val facility = myECCInspectionFacilities[ecc]
        if (facility != null) {
            facility.clear()
            val previous = myECCInspectors[ecc]
            previous?.dispose()
            val res = MyECCInspector(ecc, onDispose)
            myECCInspectors[ecc] = res
            return res
        }
        return null
    }

    override fun disposeInspector(ecc: ECC) {
        val inspector = myECCInspectors[ecc]
        inspector?.dispose()
    }

    private inner class MyNetworkInspector(private val myInstance: NetworkInstance, private val myDisposer: Runnable) :
        NetworkInspector {
        override fun setInspectionForPort(port: PortPath<*>, inspection: Inspection?) {
            val facility = myNetworkInspectionFacilities[myInstance]
            facility?.setInspectionForPort(port, inspection)
        }

        override fun setInspectionForComponent(component: Declaration, inspection: Inspection?) {
            val facility = myNetworkInspectionFacilities[myInstance]
            facility?.setInspectionForComponent(component, inspection)
        }

        override fun setHighlightingForConnection(connection: FBNetworkConnection, color: Color?) {
            val facility = myNetworkInspectionFacilities[myInstance]
            facility?.setHighlightingForConnection(connection, color)
        }

        override fun clear() {
            val facility = myNetworkInspectionFacilities[myInstance]
            facility?.clear()
        }

        fun dispose() {
            clear()
            myDisposer.run()
        }
    }

    private inner class MyECCInspector(private val myEcc: ECC, private val myDisposer: Runnable) : ECCInspector {
        override fun highlightTransition(transition: StateTransition, color: Color?) {
            val facility = myECCInspectionFacilities[myEcc]
            facility?.setHighlightingForTransition(transition, color)
        }

        override fun clear() {
            val facility = myECCInspectionFacilities[myEcc]
            facility?.clear()
        }

        fun dispose() {
            clear()
            myDisposer.run()
        }
    }

    companion object {
        private val INSTANCES: MutableMap<EditorComponent, InspectionManagerImpl> = HashMap()

        @JvmField
        val EDITOR_EXTENSION: EditorExtension = object : EditorExtension {
            override fun isApplicable(ec: EditorComponent): Boolean {
                return true
            }

            override fun install(ec: EditorComponent) {
                INSTANCES[ec] =
                    InspectionManagerImpl()
            }

            override fun uninstall(ec: EditorComponent) {
                val manager = INSTANCES.remove(ec)
                for (provider in manager!!.myNetworkInspectors.values) {
                    provider.dispose()
                }
                for (provider in manager.myECCInspectors.values) {
                    provider.dispose()
                }
            }
        }

        @JvmStatic
        fun getInstance(ec: EditorComponent): InspectionManager? {
            return INSTANCES[ec]
        }
    }
}
