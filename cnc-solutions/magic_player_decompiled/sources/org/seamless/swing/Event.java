package org.seamless.swing;

/* JADX INFO: loaded from: classes2.dex */
public interface Event<PAYLOAD> {
    void addFiredInController(Controller controller);

    boolean alreadyFired(Controller controller);

    PAYLOAD getPayload();
}
