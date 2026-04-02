package org.fourthline.cling.support.contentdirectory.callback;

import org.fourthline.cling.controlpoint.ActionCallback;
import org.fourthline.cling.model.action.ActionException;
import org.fourthline.cling.model.action.ActionInvocation;
import org.fourthline.cling.model.meta.Service;
import org.fourthline.cling.model.types.ErrorCode;

/* JADX INFO: loaded from: classes2.dex */
public abstract class GetSystemUpdateID extends ActionCallback {
    public GetSystemUpdateID(Service service) {
        super(new ActionInvocation(service.getAction("GetSystemUpdateID")));
    }

    public abstract void received(ActionInvocation actionInvocation, long j4);

    @Override // org.fourthline.cling.controlpoint.ActionCallback
    public void success(ActionInvocation actionInvocation) {
        boolean z3;
        long jLongValue;
        try {
            jLongValue = Long.valueOf(actionInvocation.getOutput("Id").getValue().toString()).longValue();
            z3 = true;
        } catch (Exception e4) {
            actionInvocation.setFailure(new ActionException(ErrorCode.ACTION_FAILED, "Can't parse GetSystemUpdateID response: " + e4, e4));
            failure(actionInvocation, null);
            z3 = false;
            jLongValue = 0;
        }
        if (z3) {
            received(actionInvocation, jLongValue);
        }
    }
}
