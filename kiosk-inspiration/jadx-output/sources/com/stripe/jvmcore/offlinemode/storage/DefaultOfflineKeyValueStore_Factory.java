package com.stripe.jvmcore.offlinemode.storage;

import com.stripe.jvmcore.storage.KeyValueStore;
import dagger.internal.Factory;
import javax.inject.Provider;

/* JADX INFO: loaded from: classes3.dex */
public final class DefaultOfflineKeyValueStore_Factory implements Factory<DefaultOfflineKeyValueStore> {
    private final Provider<KeyValueStore> keyValueStoreProvider;

    public DefaultOfflineKeyValueStore_Factory(Provider<KeyValueStore> provider) {
        this.keyValueStoreProvider = provider;
    }

    @Override // javax.inject.Provider
    public DefaultOfflineKeyValueStore get() {
        return newInstance(this.keyValueStoreProvider.get());
    }

    public static DefaultOfflineKeyValueStore_Factory create(Provider<KeyValueStore> provider) {
        return new DefaultOfflineKeyValueStore_Factory(provider);
    }

    public static DefaultOfflineKeyValueStore newInstance(KeyValueStore keyValueStore) {
        return new DefaultOfflineKeyValueStore(keyValueStore);
    }
}
