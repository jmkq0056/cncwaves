package com.stripe.core.device.dagger;

import com.stripe.core.device.BbposClientDeviceTypeProvider;
import com.stripe.core.device.BuildValues;
import com.stripe.core.device.SerialSupplier;
import dagger.internal.Factory;
import dagger.internal.Preconditions;
import javax.inject.Provider;

/* JADX INFO: loaded from: classes3.dex */
public final class BbposModule_ProvideBbposClientDeviceTypeParserFactory implements Factory<BbposClientDeviceTypeProvider> {
    private final Provider<BuildValues> buildValuesProvider;
    private final Provider<SerialSupplier> serialSupplierProvider;

    public BbposModule_ProvideBbposClientDeviceTypeParserFactory(Provider<SerialSupplier> provider, Provider<BuildValues> provider2) {
        this.serialSupplierProvider = provider;
        this.buildValuesProvider = provider2;
    }

    @Override // javax.inject.Provider
    public BbposClientDeviceTypeProvider get() {
        return provideBbposClientDeviceTypeParser(this.serialSupplierProvider.get(), this.buildValuesProvider.get());
    }

    public static BbposModule_ProvideBbposClientDeviceTypeParserFactory create(Provider<SerialSupplier> provider, Provider<BuildValues> provider2) {
        return new BbposModule_ProvideBbposClientDeviceTypeParserFactory(provider, provider2);
    }

    public static BbposClientDeviceTypeProvider provideBbposClientDeviceTypeParser(SerialSupplier serialSupplier, BuildValues buildValues) {
        return (BbposClientDeviceTypeProvider) Preconditions.checkNotNullFromProvides(BbposModule.INSTANCE.provideBbposClientDeviceTypeParser(serialSupplier, buildValues));
    }
}
