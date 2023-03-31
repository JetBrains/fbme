package org.fbme.smvDebugger.fb2smv.AbstractConverters

import org.fbme.lib.iec61499.declarations.CompositeFBTypeDeclaration
import org.fbme.lib.iec61499.descriptors.FBPortDescriptor
import org.fbme.lib.iec61499.fbnetwork.PortPath

object CFBInfoService {
    fun getConnectedDataPort(fbc: CompositeFBTypeDeclaration, inputDataPort: FBPortDescriptor ):
            PortPath<*>? {
        return fbc.network.dataConnections.firstOrNull()
        {it.targetReference.getTarget()?.portTarget == inputDataPort.declaration}?.sourceReference?.getTarget()

    }

    fun getConnectedEventPort(fbc: CompositeFBTypeDeclaration, inputDataPort: FBPortDescriptor ):
            PortPath<*>? {
        return fbc.network.eventConnections.firstOrNull()
        {it.targetReference.getTarget()?.portTarget == inputDataPort.declaration}?.sourceReference?.getTarget()

    }
}