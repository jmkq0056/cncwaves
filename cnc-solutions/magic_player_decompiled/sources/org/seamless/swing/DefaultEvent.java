package org.seamless.swing;

import java.util.HashSet;
import java.util.Set;

/* JADX INFO: loaded from: classes2.dex */
public class DefaultEvent<PAYLOAD> implements Event {
    public Set<Controller> firedInControllers = new HashSet();
    public PAYLOAD payload;

    public DefaultEvent() {
    }

    @Override // org.seamless.swing.Event
    public void addFiredInController(Controller controller) {
        this.firedInControllers.add(controller);
    }

    @Override // org.seamless.swing.Event
    public boolean alreadyFired(Controller controller) {
        return this.firedInControllers.contains(controller);
    }

    @Override // org.seamless.swing.Event
    public PAYLOAD getPayload() {
        return this.payload;
    }

    public void setPayload(PAYLOAD payload) {
        this.payload = payload;
    }

    public DefaultEvent(PAYLOAD payload) {
        this.payload = payload;
    }
}
