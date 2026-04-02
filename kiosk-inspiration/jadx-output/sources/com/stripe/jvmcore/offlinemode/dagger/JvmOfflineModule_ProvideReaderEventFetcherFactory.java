package com.stripe.jvmcore.offlinemode.dagger;

import com.stripe.jvmcore.offlinemode.readerevent.DefaultReaderEventFetcher;
import dagger.internal.Factory;
import dagger.internal.Preconditions;

/* JADX INFO: loaded from: classes3.dex */
public final class JvmOfflineModule_ProvideReaderEventFetcherFactory implements Factory<DefaultReaderEventFetcher> {
    private final JvmOfflineModule module;

    public JvmOfflineModule_ProvideReaderEventFetcherFactory(JvmOfflineModule jvmOfflineModule) {
        this.module = jvmOfflineModule;
    }

    @Override // javax.inject.Provider
    public DefaultReaderEventFetcher get() {
        return provideReaderEventFetcher(this.module);
    }

    public static JvmOfflineModule_ProvideReaderEventFetcherFactory create(JvmOfflineModule jvmOfflineModule) {
        return new JvmOfflineModule_ProvideReaderEventFetcherFactory(jvmOfflineModule);
    }

    public static DefaultReaderEventFetcher provideReaderEventFetcher(JvmOfflineModule jvmOfflineModule) {
        return (DefaultReaderEventFetcher) Preconditions.checkNotNullFromProvides(jvmOfflineModule.provideReaderEventFetcher());
    }
}
