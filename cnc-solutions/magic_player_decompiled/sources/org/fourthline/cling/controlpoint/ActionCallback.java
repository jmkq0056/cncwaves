package org.fourthline.cling.controlpoint;

import android.support.v4.media.f;
import android.support.v4.media.g;
import org.fourthline.cling.model.action.ActionException;
import org.fourthline.cling.model.action.ActionInvocation;
import org.fourthline.cling.model.message.UpnpResponse;
import org.fourthline.cling.model.message.control.IncomingActionResponseMessage;
import org.fourthline.cling.model.meta.LocalService;
import org.fourthline.cling.model.meta.RemoteService;
import org.fourthline.cling.model.meta.Service;
import org.fourthline.cling.protocol.sync.SendingAction;

/* JADX INFO: loaded from: classes2.dex */
public abstract class ActionCallback implements Runnable {
    public final ActionInvocation actionInvocation;
    public ControlPoint controlPoint;

    public static final class Default extends ActionCallback {
        public Default(ActionInvocation actionInvocation, ControlPoint controlPoint) {
            super(actionInvocation, controlPoint);
        }

        @Override // org.fourthline.cling.controlpoint.ActionCallback
        public void failure(ActionInvocation actionInvocation, UpnpResponse upnpResponse, String str) {
        }

        @Override // org.fourthline.cling.controlpoint.ActionCallback
        public void success(ActionInvocation actionInvocation) {
        }
    }

    public ActionCallback(ActionInvocation actionInvocation, ControlPoint controlPoint) {
        this.actionInvocation = actionInvocation;
        this.controlPoint = controlPoint;
    }

    public String createDefaultFailureMessage(ActionInvocation actionInvocation, UpnpResponse upnpResponse) {
        ActionException failure = actionInvocation.getFailure();
        String string = "Error: ";
        if (failure != null) {
            StringBuilder sbA = f.a("Error: ");
            sbA.append(failure.getMessage());
            string = sbA.toString();
        }
        if (upnpResponse == null) {
            return string;
        }
        StringBuilder sbA2 = g.a(string, " (HTTP response was: ");
        sbA2.append(upnpResponse.getResponseDetails());
        sbA2.append(")");
        return sbA2.toString();
    }

    public void failure(ActionInvocation actionInvocation, UpnpResponse upnpResponse) {
        failure(actionInvocation, upnpResponse, createDefaultFailureMessage(actionInvocation, upnpResponse));
    }

    public abstract void failure(ActionInvocation actionInvocation, UpnpResponse upnpResponse, String str);

    public ActionInvocation getActionInvocation() {
        return this.actionInvocation;
    }

    public synchronized ControlPoint getControlPoint() {
        return this.controlPoint;
    }

    @Override // java.lang.Runnable
    public void run() {
        Service service = this.actionInvocation.getAction().getService();
        if (service instanceof LocalService) {
            ((LocalService) service).getExecutor(this.actionInvocation.getAction()).execute(this.actionInvocation);
            if (this.actionInvocation.getFailure() != null) {
                failure(this.actionInvocation, null);
                return;
            } else {
                success(this.actionInvocation);
                return;
            }
        }
        if (service instanceof RemoteService) {
            if (getControlPoint() == null) {
                throw new IllegalStateException("Callback must be executed through ControlPoint");
            }
            RemoteService remoteService = (RemoteService) service;
            try {
                SendingAction sendingActionCreateSendingAction = getControlPoint().getProtocolFactory().createSendingAction(this.actionInvocation, remoteService.getDevice().normalizeURI(remoteService.getControlURI()));
                sendingActionCreateSendingAction.run();
                IncomingActionResponseMessage outputMessage = sendingActionCreateSendingAction.getOutputMessage();
                if (outputMessage == null) {
                    failure(this.actionInvocation, null);
                } else if (outputMessage.getOperation().isFailed()) {
                    failure(this.actionInvocation, outputMessage.getOperation());
                } else {
                    success(this.actionInvocation);
                }
            } catch (IllegalArgumentException unused) {
                ActionInvocation actionInvocation = this.actionInvocation;
                StringBuilder sbA = f.a("bad control URL: ");
                sbA.append(remoteService.getControlURI());
                failure(actionInvocation, null, sbA.toString());
            }
        }
    }

    public synchronized ActionCallback setControlPoint(ControlPoint controlPoint) {
        this.controlPoint = controlPoint;
        return this;
    }

    public abstract void success(ActionInvocation actionInvocation);

    public String toString() {
        StringBuilder sbA = f.a("(ActionCallback) ");
        sbA.append(this.actionInvocation);
        return sbA.toString();
    }

    public ActionCallback(ActionInvocation actionInvocation) {
        this.actionInvocation = actionInvocation;
    }
}
