package com.stripe.core.bbpos.dagger;

import com.stripe.core.bbpos.BbposDeviceOtaController;
import com.stripe.core.bbpos.BbposOtaListener;
import com.stripe.core.bbpos.BbposReaderUpdateController;
import com.stripe.core.hardware.updates.ReaderUpdateListener;
import dagger.internal.Factory;
import dagger.internal.Preconditions;
import javax.inject.Provider;

/* JADX INFO: loaded from: classes3.dex */
public final class BbposUpdateModule_ProvideUpdateController$sdk_releaseFactory implements Factory<BbposReaderUpdateController> {
    private final Provider<ReaderUpdateListener> listenerProvider;
    private final Provider<BbposDeviceOtaController> otaControllerProvider;
    private final Provider<BbposOtaListener> otaListenerProvider;

    public BbposUpdateModule_ProvideUpdateController$sdk_releaseFactory(Provider<BbposDeviceOtaController> provider, Provider<ReaderUpdateListener> provider2, Provider<BbposOtaListener> provider3) {
        this.otaControllerProvider = provider;
        this.listenerProvider = provider2;
        this.otaListenerProvider = provider3;
    }

    @Override // javax.inject.Provider
    public BbposReaderUpdateController get() {
        return provideUpdateController$sdk_release(this.otaControllerProvider.get(), this.listenerProvider.get(), this.otaListenerProvider.get());
    }

    public static BbposUpdateModule_ProvideUpdateController$sdk_releaseFactory create(Provider<BbposDeviceOtaController> provider, Provider<ReaderUpdateListener> provider2, Provider<BbposOtaListener> provider3) {
        return new BbposUpdateModule_ProvideUpdateController$sdk_releaseFactory(provider, provider2, provider3);
    }

    public static BbposReaderUpdateController provideUpdateController$sdk_release(BbposDeviceOtaController bbposDeviceOtaController, ReaderUpdateListener readerUpdateListener, BbposOtaListener bbposOtaListener) {
        return (BbposReaderUpdateController) Preconditions.checkNotNullFromProvides(BbposUpdateModule.INSTANCE.provideUpdateController$sdk_release(bbposDeviceOtaController, readerUpdateListener, bbposOtaListener));
    }
}
