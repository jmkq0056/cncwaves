package com.stripe.stripeterminal.internal.common.connectandupdate;

import com.stripe.core.hardware.ReaderConnectionController;
import dagger.internal.Factory;
import javax.inject.Provider;

/* JADX INFO: loaded from: classes4.dex */
public final class SessionHandler_Factory implements Factory<SessionHandler> {
    private final Provider<ReaderConnectionController> readerConnectionControllerProvider;

    public SessionHandler_Factory(Provider<ReaderConnectionController> provider) {
        this.readerConnectionControllerProvider = provider;
    }

    @Override // javax.inject.Provider
    public SessionHandler get() {
        return newInstance(this.readerConnectionControllerProvider.get());
    }

    public static SessionHandler_Factory create(Provider<ReaderConnectionController> provider) {
        return new SessionHandler_Factory(provider);
    }

    public static SessionHandler newInstance(ReaderConnectionController readerConnectionController) {
        return new SessionHandler(readerConnectionController);
    }
}
