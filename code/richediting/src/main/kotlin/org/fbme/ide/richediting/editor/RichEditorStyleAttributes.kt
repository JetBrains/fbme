package org.fbme.ide.richediting.editor

import jetbrains.mps.editor.runtime.style.InheritableStyleAttribute
import jetbrains.mps.editor.runtime.style.SimpleStyleAttribute
import jetbrains.mps.nodeEditor.cells.EditorCell_Collection
import jetbrains.mps.openapi.editor.style.StyleAttribute
import org.fbme.ide.richediting.adapters.ecc.cell.ActionBlock
import org.fbme.ide.richediting.inspections.NetworkInspectionsFacility
import org.fbme.ide.richediting.viewmodel.NetworkComponentView
import org.fbme.lib.iec61499.declarations.AlgorithmDeclaration
import org.fbme.lib.iec61499.declarations.EventDeclaration
import org.fbme.lib.iec61499.descriptors.FBPortDescriptor
import org.fbme.lib.iec61499.descriptors.FBTypeDescriptor
import org.fbme.lib.iec61499.ecc.ECC
import org.fbme.lib.iec61499.ecc.StateAction
import org.fbme.lib.iec61499.ecc.StateDeclaration
import org.fbme.lib.iec61499.fbnetwork.FBNetwork
import org.fbme.lib.iec61499.fbnetwork.FunctionBlockDeclarationBase
import org.fbme.lib.iec61499.instances.NetworkInstance
import org.fbme.scenes.controllers.SceneViewpoint
import org.fbme.scenes.controllers.SelectionModel
import org.fbme.scenes.controllers.components.ComponentsFacility
import org.fbme.scenes.controllers.diagram.ConnectionsFacility
import org.fbme.scenes.controllers.diagram.DiagramFacility

object RichEditorStyleAttributes {
    @JvmField
    val NETWORK: StyleAttribute<FBNetwork> = InheritableStyleAttribute("fb-network")

    @JvmField
    val NETWORK_INSTANCE: StyleAttribute<NetworkInstance> = InheritableStyleAttribute("fb-network-instance")

    @JvmField
    val PORT: StyleAttribute<FBPortDescriptor> = SimpleStyleAttribute("fb-port")

    @JvmField
    val TYPE: StyleAttribute<FBTypeDescriptor> = InheritableStyleAttribute("fb-type")

    @JvmField
    val FB: StyleAttribute<FunctionBlockDeclarationBase> = InheritableStyleAttribute("fb-inst")

    @JvmField
    val SELECTED_FBS: StyleAttribute<SelectionModel<NetworkComponentView>> = InheritableStyleAttribute("selected-fbs")

    @JvmField
    val STATE_ACTION: StyleAttribute<StateAction> = InheritableStyleAttribute("state-action")

    @JvmField
    val ACTIONS: StyleAttribute<MutableList<ActionBlock>> = InheritableStyleAttribute("action-block")

    @JvmField
    val STATE_DECLARATION: StyleAttribute<StateDeclaration> = InheritableStyleAttribute("state-declaration")

    @JvmField
    val DIAGRAM_FACILITY: StyleAttribute<DiagramFacility<*, *, *, *>> =
        InheritableStyleAttribute("diagram-facility")

    @JvmField
    val COMPONENTS_FACILITY: StyleAttribute<ComponentsFacility<*, *>> =
        InheritableStyleAttribute("components-facility")

    @JvmField
    val CONNECTIONS_FACILITY: StyleAttribute<ConnectionsFacility<*, *, *, *, *>> =
        InheritableStyleAttribute("connections-facility")

    @JvmField
    val INSPECTIONS_FACILITY: StyleAttribute<NetworkInspectionsFacility> =
        InheritableStyleAttribute("inspections-facility")

    @JvmField
    val VIEWPOINT: StyleAttribute<SceneViewpoint> = InheritableStyleAttribute("viewpoint")

    @JvmField
    val ECC: StyleAttribute<ECC> = InheritableStyleAttribute("ecc", null)

    init {
        NETWORK.register()
        NETWORK_INSTANCE.register()
        PORT.register()
        TYPE.register()
        FB.register()
        SELECTED_FBS.register()
        STATE_ACTION.register()
        ACTIONS.register()
        STATE_DECLARATION.register()
        DIAGRAM_FACILITY.register()
        COMPONENTS_FACILITY.register()
        CONNECTIONS_FACILITY.register()
        INSPECTIONS_FACILITY.register()
        VIEWPOINT.register()
        ECC.register()
    }
}
