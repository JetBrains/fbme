package org.fbme.ide.richediting.inspections

import org.fbme.lib.iec61499.ecc.ECC
import org.fbme.lib.iec61499.instances.NetworkInstance

interface InspectionManager {
    fun registerNetwork(network: NetworkInstance, facility: NetworkInspectionsFacility)
    fun unregisterNetwork(network: NetworkInstance)
    fun registerECC(ecc: ECC, facility: ECCInspectionsFacility)
    fun unregisterECC(ecc: ECC)
    fun installInspector(network: NetworkInstance, onDispose: Runnable): NetworkInspector?
    fun installInspector(ecc: ECC, onDispose: Runnable): ECCInspector?
    fun disposeInspector(network: NetworkInstance)
    fun disposeInspector(ecc: ECC)
}
