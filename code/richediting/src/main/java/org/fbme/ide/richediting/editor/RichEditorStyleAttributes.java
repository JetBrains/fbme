package org.fbme.ide.richediting.editor;

import jetbrains.mps.editor.runtime.style.InheritableStyleAttribute;
import jetbrains.mps.editor.runtime.style.SimpleStyleAttribute;
import jetbrains.mps.nodeEditor.cells.EditorCell_Collection;
import jetbrains.mps.openapi.editor.EditorContext;
import jetbrains.mps.openapi.editor.style.StyleAttribute;
import org.fbme.ide.richediting.adapters.ecc.cell.ActionBlock;
import org.fbme.ide.richediting.adapters.fbnetwork.FBConnectionCursor;
import org.fbme.ide.richediting.adapters.fbnetwork.FBConnectionPath;
import org.fbme.ide.richediting.adapters.fbnetwork.MagneticNetworkManager;
import org.fbme.ide.richediting.viewmodel.NetworkComponentView;
import org.fbme.ide.richediting.viewmodel.NetworkConnectionView;
import org.fbme.ide.richediting.viewmodel.NetworkPortView;
import org.fbme.lib.iec61499.IEC61499Factory;
import org.fbme.lib.iec61499.declarations.AlgorithmDeclaration;
import org.fbme.lib.iec61499.declarations.EventDeclaration;
import org.fbme.lib.iec61499.descriptors.FBPortDescriptor;
import org.fbme.lib.iec61499.descriptors.FBTypeDescriptor;
import org.fbme.lib.iec61499.ecc.ECC;
import org.fbme.lib.iec61499.ecc.StateAction;
import org.fbme.lib.iec61499.ecc.StateDeclaration;
import org.fbme.lib.iec61499.fbnetwork.FBNetwork;
import org.fbme.lib.iec61499.fbnetwork.FunctionBlockDeclarationBase;
import org.fbme.lib.iec61499.instances.NetworkInstance;
import org.fbme.scenes.controllers.SceneViewpoint;
import org.fbme.scenes.controllers.SelectionModel;
import org.fbme.scenes.controllers.components.ComponentsFacility;
import org.fbme.scenes.controllers.diagram.ConnectionsFacility;
import org.fbme.scenes.controllers.diagram.DiagramFacility;

import java.awt.*;

import java.util.List;

public class RichEditorStyleAttributes {
    public static final StyleAttribute<FBNetwork> NETWORK = new InheritableStyleAttribute<>("fb-network");
    public static final StyleAttribute<NetworkInstance> NETWORK_INSTANCE = new InheritableStyleAttribute<>("fb-network-instance");
    public static final StyleAttribute<FBPortDescriptor> PORT = new SimpleStyleAttribute<>("fb-port");
    public static final StyleAttribute<FBTypeDescriptor> TYPE = new InheritableStyleAttribute<>("fb-type");
    public static final StyleAttribute<FunctionBlockDeclarationBase> FB = new InheritableStyleAttribute<>("fb-inst");
    public static final StyleAttribute<SelectionModel<NetworkComponentView>> SELECTED_FBS = new InheritableStyleAttribute<>("selected-fbs");
    public static final StyleAttribute<StateAction> ALGORITHMS = new InheritableStyleAttribute<>("algo");
    public static final StyleAttribute<StateAction> OUTPUTS = new InheritableStyleAttribute<>("outputs");
    public static final StyleAttribute<List<AlgorithmDeclaration>> ALL_ALGORITHMS = new InheritableStyleAttribute<>("all-outputs");
    public static final StyleAttribute<List<EventDeclaration>> ALL_OUTPUTS = new InheritableStyleAttribute<>("all-outputs");
    public static final StyleAttribute<EditorCell_Collection> STATE_COLLECTION = new InheritableStyleAttribute<>("state-collection");
    public static final StyleAttribute<List<ActionBlock>> ACTIONS = new InheritableStyleAttribute<>("action-block");
    public static final StyleAttribute<StateDeclaration> STATE_DECLARATION = new InheritableStyleAttribute<>("state-declaration");
    public static final StyleAttribute<EditorContext> EDITOR_CONTEXT = new InheritableStyleAttribute<>("editor-context");
    public static final StyleAttribute<IEC61499Factory> FACTORY_DECLARATION = new InheritableStyleAttribute<>("factory-declaration");
    public static final StyleAttribute<DiagramFacility<NetworkComponentView, NetworkPortView, NetworkConnectionView, Point>> DIAGRAM_FACILITY = new InheritableStyleAttribute<>("diagram-facility");
    public static final StyleAttribute<ComponentsFacility<NetworkComponentView, Point>> COMPONENTS_FACILITY = new InheritableStyleAttribute<>("components-facility");
    public static final StyleAttribute<ConnectionsFacility<NetworkComponentView, NetworkPortView, NetworkConnectionView, FBConnectionCursor, FBConnectionPath>> CONNECTIONS_FACILITY = new InheritableStyleAttribute<>("connections-facility");
    public static final StyleAttribute<SceneViewpoint> VIEWPOINT = new InheritableStyleAttribute<>("viewpoint");
    public static final StyleAttribute<MagneticNetworkManager> MAGNETIC_NETWORK_MANAGER = new InheritableStyleAttribute<>("magnetic-network-manager");

    static {
        NETWORK.register();
        NETWORK_INSTANCE.register();
        PORT.register();
        TYPE.register();
        FB.register();
        SELECTED_FBS.register();
        ALGORITHMS.register();
        OUTPUTS.register();
        ALL_ALGORITHMS.register();
        ALL_OUTPUTS.register();
        STATE_COLLECTION.register();
        ACTIONS.register();
        STATE_DECLARATION.register();
        EDITOR_CONTEXT.register();
        FACTORY_DECLARATION.register();
        DIAGRAM_FACILITY.register();
        COMPONENTS_FACILITY.register();
        CONNECTIONS_FACILITY.register();
        VIEWPOINT.register();
        MAGNETIC_NETWORK_MANAGER.register();
    }
}
