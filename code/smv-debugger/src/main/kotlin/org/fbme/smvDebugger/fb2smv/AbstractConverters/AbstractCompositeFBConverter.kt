package org.fbme.smvDebugger.fb2smv.AbstractConverters

import org.fbme.lib.iec61499.descriptors.FBTypeDescriptor

interface AbstractCompositeFBConverter {
    fun generateFBsInstances(fb: FBTypeDescriptor, buf: StringBuilder)
    fun generateLocalFBsInstances(fb: FBTypeDescriptor, buf: StringBuilder)
    fun generateInternalDataConnections(fb: FBTypeDescriptor, buf: StringBuilder)
    fun generateLocalFBsEventOutputsUpdate(fb: FBTypeDescriptor, buf: StringBuilder)
    fun generateDispatcher(fb: FBTypeDescriptor, buf: StringBuilder)
    fun generateInternalEventConnections(fb: FBTypeDescriptor, buf: StringBuilder)
    fun generateFooter(fb: FBTypeDescriptor, buf: StringBuilder)
}