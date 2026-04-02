package org.fourthline.cling.controlpoint.event;

import org.fourthline.cling.controlpoint.ActionCallback;

/* JADX INFO: loaded from: classes2.dex */
public class ExecuteAction {
    public ActionCallback callback;

    public ExecuteAction(ActionCallback actionCallback) {
        this.callback = actionCallback;
    }

    public ActionCallback getCallback() {
        return this.callback;
    }
}
