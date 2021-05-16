package org.fbme.ide.richediting.viewmodel;

import org.fbme.ide.iec61499.repository.PlatformElement;
import org.fbme.lib.common.Declaration;
import org.fbme.lib.iec61499.fbnetwork.EndpointCoordinate;
import org.fbme.lib.iec61499.fbnetwork.EntryKind;
import org.fbme.lib.iec61499.fbnetwork.FBNetwork;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.mps.openapi.model.SNode;

import java.util.List;

public class InterfaceEndpointView implements NetworkComponentView, NetworkPortView {
    private final FBNetwork network;
    private final EndpointCoordinate endpointCoordinate;
    private final int myPosition;
    private final EntryKind myKind;
    private final boolean myIsSource;
    private final SNode myAssociatedNode;
    @NotNull
    private final Declaration myTarget;
    private final String myName;

    public InterfaceEndpointView(FBNetwork network, EndpointCoordinate endpointCoordinate, int position, EntryKind kind, boolean isSource, @NotNull Declaration target) {
        this.network = network;
        this.endpointCoordinate = endpointCoordinate;
        myPosition = position;
        myKind = kind;
        myIsSource = isSource;
        myTarget = target;
        myName = target.getName();
        myAssociatedNode = ((PlatformElement) target).getNode();
    }

    public int getX() {
        return endpointCoordinate.getX();
    }

    public int getY() {
        return endpointCoordinate.getY();
    }

    public void setX(int x) {
        endpointCoordinate.setX(x);
        if (endpointCoordinate.getContainer() == null) {
            endpointCoordinate.getPortReference().setPath(List.of(myTarget.getIdentifier()));
//            endpointCoordinate.getPortReference().setFQName(myName);
            network.getEndpointCoordinates().add(endpointCoordinate);
        }
    }

    public void setY(int y) {
        endpointCoordinate.setY(y);
        if (endpointCoordinate.getContainer() == null) {
            endpointCoordinate.getPortReference().setPath(List.of(myTarget.getIdentifier()));
//            endpointCoordinate.getPortReference().setFQName(myName);
            network.getEndpointCoordinates().add(endpointCoordinate);
        }
    }

    @NotNull
    @Override
    public NetworkComponentView getComponent() {
        return this;
    }

    @Override
    public boolean isEditable() {
        return true;
    }

    @NotNull
    public EntryKind getKind() {
        return myKind;
    }

    public int getPosition() {
        return myPosition;
    }

    public String getName() {
        return myName;
    }

    public boolean isSource() {
        return myIsSource;
    }

    public Declaration getTarget() {
        return myTarget;
    }

    public SNode getAssociatedNode() {
        return myAssociatedNode;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) {
            return true;
        }
        if (!(o instanceof InterfaceEndpointView)) {
            return false;
        }

        InterfaceEndpointView that = (InterfaceEndpointView) o;
        return myPosition == that.myPosition &&
                myKind == that.myKind &&
                myIsSource == that.myIsSource;
    }

    @Override
    public int hashCode() {
        int result = 0;
        result = 31 * result + myPosition;
        result = 31 * result + myKind.hashCode();
        result = 31 * result + (myIsSource ? 1 : 0);
        return result;
    }
}
