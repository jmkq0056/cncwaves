package com.stripe.core.device.dagger;

import com.stripe.core.device.BuildValues;
import com.stripe.core.device.EmulatorClientDeviceTypeProvider;
import dagger.internal.Factory;
import dagger.internal.Preconditions;
import javax.inject.Provider;

/* JADX INFO: loaded from: classes3.dex */
public final class EmulatorModule_ProvideEmulatorClientDeviceTypeParserFactory implements Factory<EmulatorClientDeviceTypeProvider> {
    private final Provider<BuildValues> buildValuesProvider;

    public EmulatorModule_ProvideEmulatorClientDeviceTypeParserFactory(Provider<BuildValues> provider) {
        this.buildValuesProvider = provider;
    }

    @Override // javax.inject.Provider
    public EmulatorClientDeviceTypeProvider get() {
        return provideEmulatorClientDeviceTypeParser(this.buildValuesProvider.get());
    }

    public static EmulatorModule_ProvideEmulatorClientDeviceTypeParserFactory create(Provider<BuildValues> provider) {
        return new EmulatorModule_ProvideEmulatorClientDeviceTypeParserFactory(provider);
    }

    public static EmulatorClientDeviceTypeProvider provideEmulatorClientDeviceTypeParser(BuildValues buildValues) {
        return (EmulatorClientDeviceTypeProvider) Preconditions.checkNotNullFromProvides(EmulatorModule.INSTANCE.provideEmulatorClientDeviceTypeParser(buildValues));
    }
}
