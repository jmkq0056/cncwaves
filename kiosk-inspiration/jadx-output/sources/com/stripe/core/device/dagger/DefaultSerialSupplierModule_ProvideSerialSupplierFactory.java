package com.stripe.core.device.dagger;

import com.stripe.core.device.BuildValues;
import com.stripe.core.device.SerialSupplier;
import dagger.internal.Factory;
import dagger.internal.Preconditions;
import javax.inject.Provider;

/* JADX INFO: loaded from: classes3.dex */
public final class DefaultSerialSupplierModule_ProvideSerialSupplierFactory implements Factory<SerialSupplier> {
    private final Provider<BuildValues> buildValuesProvider;

    public DefaultSerialSupplierModule_ProvideSerialSupplierFactory(Provider<BuildValues> provider) {
        this.buildValuesProvider = provider;
    }

    @Override // javax.inject.Provider
    public SerialSupplier get() {
        return provideSerialSupplier(this.buildValuesProvider.get());
    }

    public static DefaultSerialSupplierModule_ProvideSerialSupplierFactory create(Provider<BuildValues> provider) {
        return new DefaultSerialSupplierModule_ProvideSerialSupplierFactory(provider);
    }

    public static SerialSupplier provideSerialSupplier(BuildValues buildValues) {
        return (SerialSupplier) Preconditions.checkNotNullFromProvides(DefaultSerialSupplierModule.INSTANCE.provideSerialSupplier(buildValues));
    }
}
