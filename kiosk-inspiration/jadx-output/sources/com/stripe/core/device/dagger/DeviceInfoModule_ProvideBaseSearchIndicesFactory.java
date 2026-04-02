package com.stripe.core.device.dagger;

import com.stripe.core.device.SerialSupplier;
import com.stripe.jvmcore.logging.BaseSearchIndicesProvider;
import dagger.internal.Factory;
import dagger.internal.Preconditions;
import javax.inject.Provider;

/* JADX INFO: loaded from: classes3.dex */
public final class DeviceInfoModule_ProvideBaseSearchIndicesFactory implements Factory<BaseSearchIndicesProvider> {
    private final Provider<SerialSupplier> serialSupplierProvider;

    public DeviceInfoModule_ProvideBaseSearchIndicesFactory(Provider<SerialSupplier> provider) {
        this.serialSupplierProvider = provider;
    }

    @Override // javax.inject.Provider
    public BaseSearchIndicesProvider get() {
        return provideBaseSearchIndices(this.serialSupplierProvider.get());
    }

    public static DeviceInfoModule_ProvideBaseSearchIndicesFactory create(Provider<SerialSupplier> provider) {
        return new DeviceInfoModule_ProvideBaseSearchIndicesFactory(provider);
    }

    public static BaseSearchIndicesProvider provideBaseSearchIndices(SerialSupplier serialSupplier) {
        return (BaseSearchIndicesProvider) Preconditions.checkNotNullFromProvides(DeviceInfoModule.INSTANCE.provideBaseSearchIndices(serialSupplier));
    }
}
