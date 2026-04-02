package org.fourthline.cling.support.connectionmanager.callback;

import org.fourthline.cling.controlpoint.ActionCallback;
import org.fourthline.cling.controlpoint.ControlPoint;
import org.fourthline.cling.model.ServiceReference;
import org.fourthline.cling.model.action.ActionInvocation;
import org.fourthline.cling.model.meta.Service;
import org.fourthline.cling.support.model.ConnectionInfo;
import org.fourthline.cling.support.model.ProtocolInfo;

/* JADX INFO: loaded from: classes2.dex */
public abstract class PrepareForConnection extends ActionCallback {
    public PrepareForConnection(Service service, ProtocolInfo protocolInfo, ServiceReference serviceReference, int i4, ConnectionInfo.Direction direction) {
        this(service, null, protocolInfo, serviceReference, i4, direction);
    }

    public abstract void received(ActionInvocation actionInvocation, int i4, int i5, int i6);

    @Override // org.fourthline.cling.controlpoint.ActionCallback
    public void success(ActionInvocation actionInvocation) {
        received(actionInvocation, ((Integer) actionInvocation.getOutput("ConnectionID").getValue()).intValue(), ((Integer) actionInvocation.getOutput("RcsID").getValue()).intValue(), ((Integer) actionInvocation.getOutput("AVTransportID").getValue()).intValue());
    }

    public PrepareForConnection(Service service, ControlPoint controlPoint, ProtocolInfo protocolInfo, ServiceReference serviceReference, int i4, ConnectionInfo.Direction direction) {
        super(new ActionInvocation(service.getAction("PrepareForConnection")), controlPoint);
        getActionInvocation().setInput("RemoteProtocolInfo", protocolInfo.toString());
        getActionInvocation().setInput("PeerConnectionManager", serviceReference.toString());
        getActionInvocation().setInput("PeerConnectionID", Integer.valueOf(i4));
        getActionInvocation().setInput("Direction", direction.toString());
    }
}
