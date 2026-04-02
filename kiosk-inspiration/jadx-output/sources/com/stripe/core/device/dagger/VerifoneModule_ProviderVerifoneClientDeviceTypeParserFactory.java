package com.stripe.core.device.dagger;

import com.stripe.core.device.BuildValues;
import com.stripe.core.device.VerifoneClientDeviceTypeProvider;
import dagger.internal.Factory;
import dagger.internal.Preconditions;
import javax.inject.Provider;

/* JADX INFO: loaded from: classes3.dex */
public final class VerifoneModule_ProviderVerifoneClientDeviceTypeParserFactory implements Factory<VerifoneClientDeviceTypeProvider> {
    private final Provider<BuildValues> buildValuesProvider;

    public VerifoneModule_ProviderVerifoneClientDeviceTypeParserFactory(Provider<BuildValues> provider) {
        this.buildValuesProvider = provider;
    }

    @Override // javax.inject.Provider
    public VerifoneClientDeviceTypeProvider get() {
        return providerVerifoneClientDeviceTypeParser(this.buildValuesProvider.get());
    }

    public static VerifoneModule_ProviderVerifoneClientDeviceTypeParserFactory create(Provider<BuildValues> provider) {
        return new VerifoneModule_ProviderVerifoneClientDeviceTypeParserFactory(provider);
    }

    public static VerifoneClientDeviceTypeProvider providerVerifoneClientDeviceTypeParser(BuildValues buildValues) {
        return (VerifoneClientDeviceTypeProvider) Preconditions.checkNotNullFromProvides(VerifoneModule.INSTANCE.providerVerifoneClientDeviceTypeParser(buildValues));
    }
}
