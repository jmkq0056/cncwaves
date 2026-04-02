package com.stripe.core.dagger.modules;

import android.bluetooth.BluetoothManager;
import android.content.Context;
import dagger.internal.Factory;
import dagger.internal.Preconditions;
import javax.inject.Provider;

/* JADX INFO: loaded from: classes3.dex */
public final class SystemServiceModule_ProvideBluetoothManagerFactory implements Factory<BluetoothManager> {
    private final Provider<Context> contextProvider;

    public SystemServiceModule_ProvideBluetoothManagerFactory(Provider<Context> provider) {
        this.contextProvider = provider;
    }

    @Override // javax.inject.Provider
    public BluetoothManager get() {
        return provideBluetoothManager(this.contextProvider.get());
    }

    public static SystemServiceModule_ProvideBluetoothManagerFactory create(Provider<Context> provider) {
        return new SystemServiceModule_ProvideBluetoothManagerFactory(provider);
    }

    public static BluetoothManager provideBluetoothManager(Context context) {
        return (BluetoothManager) Preconditions.checkNotNullFromProvides(SystemServiceModule.INSTANCE.provideBluetoothManager(context));
    }
}
