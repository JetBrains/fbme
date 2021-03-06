package org.fbme.ide.richediting.editor;

import jetbrains.mps.editor.runtime.style.InheritableStyleAttribute;
import jetbrains.mps.editor.runtime.style.SimpleStyleAttribute;
import jetbrains.mps.openapi.editor.style.StyleAttribute;
import org.fbme.ide.richediting.viewmodel.NetworkComponentView;
import org.fbme.lib.iec61499.descriptors.FBPortDescriptor;
import org.fbme.lib.iec61499.descriptors.FBTypeDescriptor;
import org.fbme.lib.iec61499.fbnetwork.FBNetwork;
import org.fbme.lib.iec61499.fbnetwork.FunctionBlockDeclarationBase;
import org.fbme.lib.iec61499.instances.NetworkInstance;
import org.fbme.scenes.controllers.SelectionModel;

public class RichEditorStyleAttributes {
    public static final StyleAttribute<FBNetwork> NETWORK = new InheritableStyleAttribute<>("fb-network");
    public static final StyleAttribute<NetworkInstance> NETWORK_INSTANCE = new InheritableStyleAttribute<>("fb-network-instance");
    public static final StyleAttribute<FBPortDescriptor> PORT = new SimpleStyleAttribute<>("fb-port");
    public static final StyleAttribute<FBTypeDescriptor> TYPE = new InheritableStyleAttribute<>("fb-type");
    public static final StyleAttribute<FunctionBlockDeclarationBase> FB = new InheritableStyleAttribute<>("fb-inst");
    public static final StyleAttribute<SelectionModel<NetworkComponentView>> SELECTED_FBS = new InheritableStyleAttribute<>("selected-fbs");

    static {
        NETWORK.register();
        NETWORK_INSTANCE.register();
        PORT.register();
        TYPE.register();
        FB.register();
        SELECTED_FBS.register();
    }
}
