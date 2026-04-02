package com.stripe.stripeterminal.internal.common.dagger;

import com.stripe.core.device.BbposClientDeviceTypeProvider;
import com.stripe.core.device.BuildValues;
import com.stripe.core.device.ClientDeviceTypeProvider;
import com.stripe.core.device.EmulatorClientDeviceTypeProvider;
import com.stripe.core.device.VerifoneClientDeviceTypeProvider;
import dagger.internal.Factory;
import dagger.internal.Preconditions;
import javax.inject.Provider;

/* JADX INFO: loaded from: classes4.dex */
public final class DeviceTypeModule_ProvideClientDeviceTypeParserFactory implements Factory<ClientDeviceTypeProvider> {
    private final Provider<BbposClientDeviceTypeProvider> bbposClientDeviceTypeParserProvider;
    private final Provider<BuildValues> buildValuesProvider;
    private final Provider<EmulatorClientDeviceTypeProvider> emulatorClientDeviceTypeParserProvider;
    private final Provider<VerifoneClientDeviceTypeProvider> verifoneClientDeviceTypeParserProvider;

    public DeviceTypeModule_ProvideClientDeviceTypeParserFactory(Provider<BuildValues> provider, Provider<EmulatorClientDeviceTypeProvider> provider2, Provider<BbposClientDeviceTypeProvider> provider3, Provider<VerifoneClientDeviceTypeProvider> provider4) {
        this.buildValuesProvider = provider;
        this.emulatorClientDeviceTypeParserProvider = provider2;
        this.bbposClientDeviceTypeParserProvider = provider3;
        this.verifoneClientDeviceTypeParserProvider = provider4;
    }

    @Override // javax.inject.Provider
    public ClientDeviceTypeProvider get() {
        return provideClientDeviceTypeParser(this.buildValuesProvider.get(), this.emulatorClientDeviceTypeParserProvider.get(), this.bbposClientDeviceTypeParserProvider.get(), this.verifoneClientDeviceTypeParserProvider.get());
    }

    public static DeviceTypeModule_ProvideClientDeviceTypeParserFactory create(Provider<BuildValues> provider, Provider<EmulatorClientDeviceTypeProvider> provider2, Provider<BbposClientDeviceTypeProvider> provider3, Provider<VerifoneClientDeviceTypeProvider> provider4) {
        return new DeviceTypeModule_ProvideClientDeviceTypeParserFactory(provider, provider2, provider3, provider4);
    }

    public static ClientDeviceTypeProvider provideClientDeviceTypeParser(BuildValues buildValues, EmulatorClientDeviceTypeProvider emulatorClientDeviceTypeProvider, BbposClientDeviceTypeProvider bbposClientDeviceTypeProvider, VerifoneClientDeviceTypeProvider verifoneClientDeviceTypeProvider) {
        return (ClientDeviceTypeProvider) Preconditions.checkNotNullFromProvides(DeviceTypeModule.INSTANCE.provideClientDeviceTypeParser(buildValues, emulatorClientDeviceTypeProvider, bbposClientDeviceTypeProvider, verifoneClientDeviceTypeProvider));
    }
}
