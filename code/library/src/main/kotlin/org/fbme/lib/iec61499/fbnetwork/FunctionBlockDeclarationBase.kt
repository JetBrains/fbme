package org.fbme.lib.iec61499.fbnetwork

import org.fbme.lib.common.ContainedElement
import org.fbme.lib.common.Declaration
import org.fbme.lib.iec61499.declarations.ParameterAssignment
import org.fbme.lib.iec61499.descriptors.FBPortDescriptor
import org.fbme.lib.iec61499.descriptors.FBTypeDescriptor

interface FunctionBlockDeclarationBase : Declaration, ContainedElement {
    val type: FBTypeDescriptor
    val parameters: MutableList<ParameterAssignment>
    fun getPort(descriptor: FBPortDescriptor): PortPath<out Declaration> {
        checkNotNull(descriptor.declaration)
        return PortPath.createPortPath(this, descriptor.connectionKind, descriptor.declaration)
    }

    val ports: Set<PortPath<out Declaration>>
        get() {
            val result: MutableSet<PortPath<out Declaration>> = HashSet()
            val type = type
            generatePorts(result, this, type.eventInputPorts)
            generatePorts(result, this, type.eventOutputPorts)
            generatePorts(result, this, type.dataInputPorts)
            generatePorts(result, this, type.dataOutputPorts)
            generatePorts(result, this, type.socketPorts)
            generatePorts(result, this, type.plugPorts)
            return result
        }
    var x: Int
    var y: Int

    companion object {
        @JvmStatic
        fun generatePorts(
            result: MutableSet<PortPath<out Declaration>>,
            fb: FunctionBlockDeclarationBase,
            ports: List<FBPortDescriptor>
        ) {
            for (port in ports) {
                result.add(fb.getPort(port))
            }
        }
    }
}
