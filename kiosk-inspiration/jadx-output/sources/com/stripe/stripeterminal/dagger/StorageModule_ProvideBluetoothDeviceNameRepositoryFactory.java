package com.stripe.stripeterminal.dagger;

import com.stripe.jvmcore.storage.SharedPrefs;
import com.stripe.stripeterminal.internal.common.storage.BluetoothDeviceNameRepository;
import dagger.internal.Factory;
import dagger.internal.Preconditions;
import javax.inject.Provider;

/* JADX INFO: loaded from: classes4.dex */
public final class StorageModule_ProvideBluetoothDeviceNameRepositoryFactory implements Factory<BluetoothDeviceNameRepository> {
    private final StorageModule module;
    private final Provider<SharedPrefs> sharedPrefsProvider;

    public StorageModule_ProvideBluetoothDeviceNameRepositoryFactory(StorageModule storageModule, Provider<SharedPrefs> provider) {
        this.module = storageModule;
        this.sharedPrefsProvider = provider;
    }

    @Override // javax.inject.Provider
    public BluetoothDeviceNameRepository get() {
        return provideBluetoothDeviceNameRepository(this.module, this.sharedPrefsProvider.get());
    }

    public static StorageModule_ProvideBluetoothDeviceNameRepositoryFactory create(StorageModule storageModule, Provider<SharedPrefs> provider) {
        return new StorageModule_ProvideBluetoothDeviceNameRepositoryFactory(storageModule, provider);
    }

    public static BluetoothDeviceNameRepository provideBluetoothDeviceNameRepository(StorageModule storageModule, SharedPrefs sharedPrefs) {
        return (BluetoothDeviceNameRepository) Preconditions.checkNotNullFromProvides(storageModule.provideBluetoothDeviceNameRepository(sharedPrefs));
    }
}
