package com.stripe.stripeterminal.internal.common.connectandupdate;

import com.stripe.core.hardware.ReaderConnectionController;
import dagger.internal.Factory;
import javax.inject.Provider;

/* JADX INFO: loaded from: classes4.dex */
public final class ConnectHandler_Factory implements Factory<ConnectHandler> {
    private final Provider<ReaderConnectionController> readerConnectionControllerProvider;

    public ConnectHandler_Factory(Provider<ReaderConnectionController> provider) {
        this.readerConnectionControllerProvider = provider;
    }

    @Override // javax.inject.Provider
    public ConnectHandler get() {
        return newInstance(this.readerConnectionControllerProvider.get());
    }

    public static ConnectHandler_Factory create(Provider<ReaderConnectionController> provider) {
        return new ConnectHandler_Factory(provider);
    }

    public static ConnectHandler newInstance(ReaderConnectionController readerConnectionController) {
        return new ConnectHandler(readerConnectionController);
    }
}
