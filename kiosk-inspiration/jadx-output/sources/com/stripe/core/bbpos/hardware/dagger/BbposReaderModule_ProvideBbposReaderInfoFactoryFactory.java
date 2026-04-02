package com.stripe.core.bbpos.hardware.dagger;

import com.stripe.core.bbpos.hardware.BbposReaderInfoFactory;
import com.stripe.core.device.ClientDeviceType;
import dagger.internal.Factory;
import dagger.internal.Preconditions;
import javax.inject.Provider;

/* JADX INFO: loaded from: classes3.dex */
public final class BbposReaderModule_ProvideBbposReaderInfoFactoryFactory implements Factory<BbposReaderInfoFactory> {
    private final Provider<ClientDeviceType> clientDeviceTypeProvider;
    private final Provider<Boolean> isDebugProvider;

    public BbposReaderModule_ProvideBbposReaderInfoFactoryFactory(Provider<Boolean> provider, Provider<ClientDeviceType> provider2) {
        this.isDebugProvider = provider;
        this.clientDeviceTypeProvider = provider2;
    }

    @Override // javax.inject.Provider
    public BbposReaderInfoFactory get() {
        return provideBbposReaderInfoFactory(this.isDebugProvider.get().booleanValue(), this.clientDeviceTypeProvider.get());
    }

    public static BbposReaderModule_ProvideBbposReaderInfoFactoryFactory create(Provider<Boolean> provider, Provider<ClientDeviceType> provider2) {
        return new BbposReaderModule_ProvideBbposReaderInfoFactoryFactory(provider, provider2);
    }

    public static BbposReaderInfoFactory provideBbposReaderInfoFactory(boolean z, ClientDeviceType clientDeviceType) {
        return (BbposReaderInfoFactory) Preconditions.checkNotNullFromProvides(BbposReaderModule.INSTANCE.provideBbposReaderInfoFactory(z, clientDeviceType));
    }
}
