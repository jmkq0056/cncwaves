package com.stripe.jvmcore.storage;

import dagger.internal.Factory;
import java.util.prefs.Preferences;
import javax.inject.Provider;

/* JADX INFO: loaded from: classes3.dex */
public final class DefaultKeyValueStore_Factory implements Factory<DefaultKeyValueStore> {
    private final Provider<Preferences> preferencesProvider;

    public DefaultKeyValueStore_Factory(Provider<Preferences> provider) {
        this.preferencesProvider = provider;
    }

    @Override // javax.inject.Provider
    public DefaultKeyValueStore get() {
        return newInstance(this.preferencesProvider.get());
    }

    public static DefaultKeyValueStore_Factory create(Provider<Preferences> provider) {
        return new DefaultKeyValueStore_Factory(provider);
    }

    public static DefaultKeyValueStore newInstance(Preferences preferences) {
        return new DefaultKeyValueStore(preferences);
    }
}
