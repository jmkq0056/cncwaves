package com.stripe.core.dagger.modules;

import android.content.Context;
import android.media.AudioManager;
import dagger.internal.Factory;
import dagger.internal.Preconditions;
import javax.inject.Provider;

/* JADX INFO: loaded from: classes3.dex */
public final class SystemServiceModule_ProvideAudioManagerFactory implements Factory<AudioManager> {
    private final Provider<Context> contextProvider;

    public SystemServiceModule_ProvideAudioManagerFactory(Provider<Context> provider) {
        this.contextProvider = provider;
    }

    @Override // javax.inject.Provider
    public AudioManager get() {
        return provideAudioManager(this.contextProvider.get());
    }

    public static SystemServiceModule_ProvideAudioManagerFactory create(Provider<Context> provider) {
        return new SystemServiceModule_ProvideAudioManagerFactory(provider);
    }

    public static AudioManager provideAudioManager(Context context) {
        return (AudioManager) Preconditions.checkNotNullFromProvides(SystemServiceModule.INSTANCE.provideAudioManager(context));
    }
}
