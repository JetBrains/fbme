package org.fbme.ide.richediting.editor;

import com.intellij.ide.DataManager;
import com.intellij.openapi.actionSystem.CommonDataKeys;
import com.intellij.openapi.actionSystem.DataContext;
import com.intellij.openapi.actionSystem.DataKey;
import jetbrains.mps.nodeEditor.EditorComponent;
import jetbrains.mps.openapi.editor.EditorContext;
import org.fbme.lib.iec61499.declarations.AlgorithmDeclaration;
import org.fbme.lib.iec61499.declarations.ApplicationDeclaration;
import org.fbme.lib.iec61499.declarations.DeviceDeclaration;
import org.fbme.lib.iec61499.declarations.ResourceDeclaration;
import org.fbme.lib.iec61499.instances.NetworkInstance;
import org.jetbrains.annotations.NotNull;

public class RichEditorDataKeys extends CommonDataKeys {

    public static final DataKey<NetworkInstance> NETWORK_INSTANCE = DataKey.create("fbnetwork-instance");
    public static final DataKey<AlgorithmDeclaration> ALGORITHM = DataKey.create("algorithm-node");
    public static final DataKey<ApplicationDeclaration> APPLICATION = DataKey.create("application-node");
    public static final DataKey<DeviceDeclaration> DEVICE = DataKey.create("device-node");
    public static final DataKey<ResourceDeclaration> RESOURCE = DataKey.create("resource-node");


    public static NetworkInstance contextNetworkInstance(@NotNull EditorContext context) {
        return ideaDataContext(context).getData(NETWORK_INSTANCE);
    }

    public static AlgorithmDeclaration contextAlogithm(@NotNull EditorContext context) {
        return ideaDataContext(context).getData(ALGORITHM);
    }

    public static ApplicationDeclaration contextApplication(@NotNull EditorContext context) {
        return ideaDataContext(context).getData(APPLICATION);
    }

    public static DeviceDeclaration contextDevice(@NotNull EditorContext context) {
        return ideaDataContext(context).getData(DEVICE);
    }

    public static ResourceDeclaration contextResource(@NotNull EditorContext context) {
        return ideaDataContext(context).getData(RESOURCE);
    }

    private static DataContext ideaDataContext(EditorContext context) {
        return DataManager.getInstance().getDataContext(((EditorComponent) context.getEditorComponent()).getExternalComponent().getParent());
    }
}
