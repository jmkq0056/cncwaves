package com.stripe.stripeterminal.internal.common.connectandupdate;

import com.stripe.core.hardware.ReaderConnectionController;
import dagger.internal.Factory;
import javax.inject.Provider;

/* JADX INFO: loaded from: classes4.dex */
public final class DisconnectHandler_Factory implements Factory<DisconnectHandler> {
    private final Provider<ReaderConnectionController> readerConnectionControllerProvider;

    public DisconnectHandler_Factory(Provider<ReaderConnectionController> provider) {
        this.readerConnectionControllerProvider = provider;
    }

    @Override // javax.inject.Provider
    public DisconnectHandler get() {
        return newInstance(this.readerConnectionControllerProvider.get());
    }

    public static DisconnectHandler_Factory create(Provider<ReaderConnectionController> provider) {
        return new DisconnectHandler_Factory(provider);
    }

    public static DisconnectHandler newInstance(ReaderConnectionController readerConnectionController) {
        return new DisconnectHandler(readerConnectionController);
    }
}
