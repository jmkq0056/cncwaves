package com.stripe.jvmcore.storage;

import dagger.internal.Factory;
import javax.inject.Provider;

/* JADX INFO: loaded from: classes3.dex */
public final class SharedPrefs_Factory implements Factory<SharedPrefs> {
    private final Provider<KeyValueStore> keyValueStoreProvider;

    public SharedPrefs_Factory(Provider<KeyValueStore> provider) {
        this.keyValueStoreProvider = provider;
    }

    @Override // javax.inject.Provider
    public SharedPrefs get() {
        return newInstance(this.keyValueStoreProvider.get());
    }

    public static SharedPrefs_Factory create(Provider<KeyValueStore> provider) {
        return new SharedPrefs_Factory(provider);
    }

    public static SharedPrefs newInstance(KeyValueStore keyValueStore) {
        return new SharedPrefs(keyValueStore);
    }
}
