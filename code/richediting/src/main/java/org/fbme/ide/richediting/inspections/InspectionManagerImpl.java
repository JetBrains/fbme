package org.fbme.ide.richediting.inspections;

import jetbrains.mps.openapi.editor.EditorComponent;
import jetbrains.mps.openapi.editor.extensions.EditorExtension;
import org.fbme.lib.common.Declaration;
import org.fbme.lib.iec61499.ecc.ECC;
import org.fbme.lib.iec61499.ecc.StateTransition;
import org.fbme.lib.iec61499.fbnetwork.FBNetworkConnection;
import org.fbme.lib.iec61499.fbnetwork.PortPath;
import org.fbme.lib.iec61499.instances.NetworkInstance;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

import java.awt.*;
import java.util.HashMap;
import java.util.Map;

public class InspectionManagerImpl implements InspectionManager {

    private static final Map<EditorComponent, InspectionManagerImpl> INSTANCES = new HashMap<>();


    public static final EditorExtension EDITOR_EXTENSION = new EditorExtension() {
        public boolean isApplicable(@NotNull EditorComponent ec) {
            return true;
        }

        public void install(@NotNull EditorComponent ec) {
            INSTANCES.put(ec, new InspectionManagerImpl());
        }

        public void uninstall(@NotNull EditorComponent ec) {
            InspectionManagerImpl manager = INSTANCES.remove(ec);
            for (MyNetworkInspector provider : manager.myNetworkInspectors.values()) {
                provider.dispose();
            }
            for (MyECCInspector provider : manager.myECCInspectors.values()) {
                provider.dispose();
            }
        }
    };

    public static InspectionManager getInstance(@NotNull EditorComponent ec) {
        return INSTANCES.get(ec);
    }

    private final Map<NetworkInstance, NetworkInspectionsFacility> myNetworkInspectionFacilities = new HashMap<>();
    private final Map<NetworkInstance, MyNetworkInspector> myNetworkInspectors = new HashMap<>();

    private final Map<ECC, ECCInspectionsFacility> myECCInspectionFacilities = new HashMap<>();
    private final Map<ECC, MyECCInspector> myECCInspectors = new HashMap<>();


    @Override
    public void registerNetwork(@NotNull NetworkInstance network, @NotNull NetworkInspectionsFacility facility) {
        myNetworkInspectionFacilities.put(network, facility);
        MyNetworkInspector current = myNetworkInspectors.get(network);
        if (current != null) {
            facility.install();
        }
    }

    @Override
    public void unregisterNetwork(@NotNull NetworkInstance network) {
        NetworkInspectionsFacility facility = myNetworkInspectionFacilities.remove(network);
        MyNetworkInspector current = myNetworkInspectors.get(network);
        if (current != null) {
            facility.uninstall();
        }
    }

    @Nullable
    @Override
    public NetworkInspector installInspector(@NotNull NetworkInstance network, @NotNull Runnable onDispose) {
        NetworkInspectionsFacility facility = myNetworkInspectionFacilities.get(network);
        if (facility != null) {
            MyNetworkInspector previos = myNetworkInspectors.get(network);
            if (previos != null) {
                previos.dispose();
            } else {
                facility.install();
            }
            MyNetworkInspector res = new MyNetworkInspector(network, onDispose);
            myNetworkInspectors.put(network, res);
            return res;
        }
        return null;
    }

    @Override
    public void disposeInspector(@NotNull NetworkInstance network) {
        MyNetworkInspector inspector = myNetworkInspectors.get(network);
        if (inspector != null) {
            inspector.dispose();
            myNetworkInspectors.remove(network);
            myNetworkInspectionFacilities.get(network).uninstall();
        }
    }

    @Override
    public void registerECC(@NotNull ECC ecc, @NotNull ECCInspectionsFacility facility) {
        myECCInspectionFacilities.put(ecc, facility);
    }

    @Override
    public void unregisterECC(@NotNull ECC ecc) {
        myECCInspectionFacilities.remove(ecc);
    }

    @Nullable
    @Override
    public ECCInspector installInspector(@NotNull ECC ecc, @NotNull Runnable onDispose) {
        ECCInspectionsFacility facility = myECCInspectionFacilities.get(ecc);
        if (facility != null) {
            facility.clear();
            MyECCInspector previous = myECCInspectors.get(ecc);
            if (previous != null) {
                previous.dispose();
            }

            MyECCInspector res = new MyECCInspector(ecc, onDispose);
            myECCInspectors.put(ecc, res);
            return res;
        }
        return null;
    }

    @Override
    public void disposeInspector(@NotNull ECC ecc) {
        MyECCInspector inspector = myECCInspectors.get(ecc);
        if (inspector != null) {
            inspector.dispose();
        }
    }

    private class MyNetworkInspector implements NetworkInspector {

        @NotNull
        private final NetworkInstance myInstance;

        @NotNull
        private final Runnable myDisposer;

        public MyNetworkInspector(@NotNull NetworkInstance network, @NotNull Runnable disposer) {
            myInstance = network;
            myDisposer = disposer;
        }

        @Override
        public void setInspectionForPort(@NotNull PortPath<?> port, @Nullable Inspection inspection) {
            NetworkInspectionsFacility facility = myNetworkInspectionFacilities.get(myInstance);
            if (facility != null) {
                facility.setInspectionForPort(port, inspection);
            }
        }

        @Override
        public void setInspectionForComponent(@NotNull Declaration component, @Nullable Inspection inspection) {
            NetworkInspectionsFacility facility = myNetworkInspectionFacilities.get(myInstance);
            if (facility != null) {
                facility.setInspectionForComponent(component, inspection);
            }
        }

        @Override
        public void setHighlightingForConnection(@NotNull FBNetworkConnection connection, @Nullable Color color) {
            NetworkInspectionsFacility facility = myNetworkInspectionFacilities.get(myInstance);
            if (facility != null) {
                facility.setHighlightingForConnection(connection, color);
            }
        }

        @Override
        public void clear() {
            NetworkInspectionsFacility facility = myNetworkInspectionFacilities.get(myInstance);
            if (facility != null) {
                facility.clear();
            }
        }

        public void dispose() {
            clear();
            myDisposer.run();
        }
    }

    private class MyECCInspector implements ECCInspector {

        @NotNull
        private final ECC myEcc;

        @NotNull
        private final Runnable myDisposer;

        public MyECCInspector(@NotNull ECC ecc, @NotNull Runnable disposer) {
            myEcc = ecc;
            myDisposer = disposer;
        }

        @Override
        public void highlightTransition(@NotNull StateTransition transition, @Nullable Color color) {
            ECCInspectionsFacility facility = myECCInspectionFacilities.get(myEcc);
            if (facility != null) {
                facility.setHighlightingForTransition(transition, color);
            }
        }

        @Override
        public void clear() {
            ECCInspectionsFacility facility = myECCInspectionFacilities.get(myEcc);
            if (facility != null) {
                facility.clear();
            }
        }

        public void dispose() {
            clear();
            myDisposer.run();
        }
    }
}
