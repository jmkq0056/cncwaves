package com.stripe.core.transaction;

import com.stripe.jvmcore.storage.SharedPrefs;
import dagger.internal.Factory;
import javax.inject.Provider;

/* JADX INFO: loaded from: classes3.dex */
public final class SettingsRepository_Factory implements Factory<SettingsRepository> {
    private final Provider<SharedPrefs> sharedPrefsProvider;

    public SettingsRepository_Factory(Provider<SharedPrefs> provider) {
        this.sharedPrefsProvider = provider;
    }

    @Override // javax.inject.Provider
    public SettingsRepository get() {
        return newInstance(this.sharedPrefsProvider.get());
    }

    public static SettingsRepository_Factory create(Provider<SharedPrefs> provider) {
        return new SettingsRepository_Factory(provider);
    }

    public static SettingsRepository newInstance(SharedPrefs sharedPrefs) {
        return new SettingsRepository(sharedPrefs);
    }
}
