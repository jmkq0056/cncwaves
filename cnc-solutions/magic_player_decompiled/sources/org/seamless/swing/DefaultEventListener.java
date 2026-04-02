package org.seamless.swing;

/* JADX INFO: loaded from: classes2.dex */
public interface DefaultEventListener<PAYLOAD> extends EventListener<DefaultEvent<PAYLOAD>> {
    void handleEvent(DefaultEvent<PAYLOAD> defaultEvent);
}
