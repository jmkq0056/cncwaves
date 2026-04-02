package org.fourthline.cling.support.igd.callback;

import org.fourthline.cling.controlpoint.ActionCallback;
import org.fourthline.cling.controlpoint.ControlPoint;
import org.fourthline.cling.model.action.ActionInvocation;
import org.fourthline.cling.model.meta.Service;
import org.fourthline.cling.model.types.UnsignedIntegerTwoBytes;
import org.fourthline.cling.support.model.PortMapping;

/* JADX INFO: loaded from: classes2.dex */
public abstract class PortMappingEntryGet extends ActionCallback {
    public PortMappingEntryGet(Service service, long j4) {
        this(service, null, j4);
    }

    @Override // org.fourthline.cling.controlpoint.ActionCallback
    public void success(ActionInvocation actionInvocation) {
        success(new PortMapping(actionInvocation.getOutputMap()));
    }

    public abstract void success(PortMapping portMapping);

    public PortMappingEntryGet(Service service, ControlPoint controlPoint, long j4) {
        super(new ActionInvocation(service.getAction("GetGenericPortMappingEntry")), controlPoint);
        getActionInvocation().setInput("NewPortMappingIndex", new UnsignedIntegerTwoBytes(j4));
    }
}
