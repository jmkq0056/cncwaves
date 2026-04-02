package org.fourthline.cling.support.model;

import android.support.v4.media.f;
import org.fourthline.cling.model.ServiceReference;

/* JADX INFO: loaded from: classes2.dex */
public class ConnectionInfo {
    public final int avTransportID;
    public final int connectionID;
    public Status connectionStatus;
    public final Direction direction;
    public final int peerConnectionID;
    public final ServiceReference peerConnectionManager;
    public final ProtocolInfo protocolInfo;
    public final int rcsID;

    public enum Direction {
        Output,
        Input;

        public Direction getOpposite() {
            Direction direction = Output;
            return equals(direction) ? Input : direction;
        }
    }

    public enum Status {
        OK,
        ContentFormatMismatch,
        InsufficientBandwidth,
        UnreliableChannel,
        Unknown
    }

    public ConnectionInfo() {
        this(0, 0, 0, null, null, -1, Direction.Input, Status.Unknown);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        ConnectionInfo connectionInfo = (ConnectionInfo) obj;
        if (this.avTransportID != connectionInfo.avTransportID || this.connectionID != connectionInfo.connectionID || this.peerConnectionID != connectionInfo.peerConnectionID || this.rcsID != connectionInfo.rcsID || this.connectionStatus != connectionInfo.connectionStatus || this.direction != connectionInfo.direction) {
            return false;
        }
        ServiceReference serviceReference = this.peerConnectionManager;
        if (serviceReference == null ? connectionInfo.peerConnectionManager != null : !serviceReference.equals(connectionInfo.peerConnectionManager)) {
            return false;
        }
        ProtocolInfo protocolInfo = this.protocolInfo;
        ProtocolInfo protocolInfo2 = connectionInfo.protocolInfo;
        return protocolInfo == null ? protocolInfo2 == null : protocolInfo.equals(protocolInfo2);
    }

    public int getAvTransportID() {
        return this.avTransportID;
    }

    public int getConnectionID() {
        return this.connectionID;
    }

    public synchronized Status getConnectionStatus() {
        return this.connectionStatus;
    }

    public Direction getDirection() {
        return this.direction;
    }

    public int getPeerConnectionID() {
        return this.peerConnectionID;
    }

    public ServiceReference getPeerConnectionManager() {
        return this.peerConnectionManager;
    }

    public ProtocolInfo getProtocolInfo() {
        return this.protocolInfo;
    }

    public int getRcsID() {
        return this.rcsID;
    }

    public int hashCode() {
        int i4 = ((((this.connectionID * 31) + this.rcsID) * 31) + this.avTransportID) * 31;
        ProtocolInfo protocolInfo = this.protocolInfo;
        int iHashCode = (i4 + (protocolInfo != null ? protocolInfo.hashCode() : 0)) * 31;
        ServiceReference serviceReference = this.peerConnectionManager;
        return this.connectionStatus.hashCode() + ((this.direction.hashCode() + ((((iHashCode + (serviceReference != null ? serviceReference.hashCode() : 0)) * 31) + this.peerConnectionID) * 31)) * 31);
    }

    public synchronized void setConnectionStatus(Status status) {
        this.connectionStatus = status;
    }

    public String toString() {
        StringBuilder sbA = f.a("(");
        sbA.append(getClass().getSimpleName());
        sbA.append(") ID: ");
        sbA.append(getConnectionID());
        sbA.append(", Status: ");
        sbA.append(getConnectionStatus());
        return sbA.toString();
    }

    public ConnectionInfo(int i4, int i5, int i6, ProtocolInfo protocolInfo, ServiceReference serviceReference, int i7, Direction direction, Status status) {
        this.connectionStatus = Status.Unknown;
        this.connectionID = i4;
        this.rcsID = i5;
        this.avTransportID = i6;
        this.protocolInfo = protocolInfo;
        this.peerConnectionManager = serviceReference;
        this.peerConnectionID = i7;
        this.direction = direction;
        this.connectionStatus = status;
    }
}
