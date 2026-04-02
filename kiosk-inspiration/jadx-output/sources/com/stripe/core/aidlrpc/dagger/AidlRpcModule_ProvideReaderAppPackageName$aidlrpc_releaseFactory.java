package com.stripe.core.aidlrpc.dagger;

import com.stripe.core.aidlrpc.AppPackageName;
import com.stripe.core.device.HardwareManufacturer;
import dagger.internal.Factory;
import dagger.internal.Preconditions;
import javax.inject.Provider;

/* JADX INFO: loaded from: classes3.dex */
public final class AidlRpcModule_ProvideReaderAppPackageName$aidlrpc_releaseFactory implements Factory<AppPackageName.Reader> {
    private final Provider<HardwareManufacturer> hardwareManufacturerProvider;

    public AidlRpcModule_ProvideReaderAppPackageName$aidlrpc_releaseFactory(Provider<HardwareManufacturer> provider) {
        this.hardwareManufacturerProvider = provider;
    }

    @Override // javax.inject.Provider
    public AppPackageName.Reader get() {
        return provideReaderAppPackageName$aidlrpc_release(this.hardwareManufacturerProvider.get());
    }

    public static AidlRpcModule_ProvideReaderAppPackageName$aidlrpc_releaseFactory create(Provider<HardwareManufacturer> provider) {
        return new AidlRpcModule_ProvideReaderAppPackageName$aidlrpc_releaseFactory(provider);
    }

    public static AppPackageName.Reader provideReaderAppPackageName$aidlrpc_release(HardwareManufacturer hardwareManufacturer) {
        return (AppPackageName.Reader) Preconditions.checkNotNullFromProvides(AidlRpcModule.INSTANCE.provideReaderAppPackageName$aidlrpc_release(hardwareManufacturer));
    }
}
