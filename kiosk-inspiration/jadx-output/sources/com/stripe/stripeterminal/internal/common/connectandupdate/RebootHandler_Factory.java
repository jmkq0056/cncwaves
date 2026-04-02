package com.stripe.stripeterminal.internal.common.connectandupdate;

import com.stripe.core.hardware.ReaderConnectionController;
import dagger.internal.Factory;
import javax.inject.Provider;

/* JADX INFO: loaded from: classes4.dex */
public final class RebootHandler_Factory implements Factory<RebootHandler> {
    private final Provider<ReaderConnectionController> readerConnectionControllerProvider;

    public RebootHandler_Factory(Provider<ReaderConnectionController> provider) {
        this.readerConnectionControllerProvider = provider;
    }

    @Override // javax.inject.Provider
    public RebootHandler get() {
        return newInstance(this.readerConnectionControllerProvider.get());
    }

    public static RebootHandler_Factory create(Provider<ReaderConnectionController> provider) {
        return new RebootHandler_Factory(provider);
    }

    public static RebootHandler newInstance(ReaderConnectionController readerConnectionController) {
        return new RebootHandler(readerConnectionController);
    }
}
