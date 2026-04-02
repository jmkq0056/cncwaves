package com.stripe.jvmcore.storage.dagger;

import dagger.internal.Factory;
import dagger.internal.Preconditions;
import java.util.prefs.Preferences;
import javax.inject.Provider;

/* JADX INFO: loaded from: classes3.dex */
public final class PreferencesModule_ProvideDefaultPreferencesFactory implements Factory<Preferences> {
    private final PreferencesModule module;
    private final Provider<String> namespaceProvider;

    public PreferencesModule_ProvideDefaultPreferencesFactory(PreferencesModule preferencesModule, Provider<String> provider) {
        this.module = preferencesModule;
        this.namespaceProvider = provider;
    }

    @Override // javax.inject.Provider
    public Preferences get() {
        return provideDefaultPreferences(this.module, this.namespaceProvider.get());
    }

    public static PreferencesModule_ProvideDefaultPreferencesFactory create(PreferencesModule preferencesModule, Provider<String> provider) {
        return new PreferencesModule_ProvideDefaultPreferencesFactory(preferencesModule, provider);
    }

    public static Preferences provideDefaultPreferences(PreferencesModule preferencesModule, String str) {
        return (Preferences) Preconditions.checkNotNullFromProvides(preferencesModule.provideDefaultPreferences(str));
    }
}
