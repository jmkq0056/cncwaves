package com.stripe.stripeterminal.dagger;

import com.stripe.stripeterminal.internal.common.callable.ProxyOfflineListener;
import dagger.internal.Factory;
import dagger.internal.Preconditions;

/* JADX INFO: loaded from: classes4.dex */
public final class OfflineModule_ProvideProxyOfflineListenerFactory implements Factory<ProxyOfflineListener> {
    private final OfflineModule module;

    public OfflineModule_ProvideProxyOfflineListenerFactory(OfflineModule offlineModule) {
        this.module = offlineModule;
    }

    @Override // javax.inject.Provider
    public ProxyOfflineListener get() {
        return provideProxyOfflineListener(this.module);
    }

    public static OfflineModule_ProvideProxyOfflineListenerFactory create(OfflineModule offlineModule) {
        return new OfflineModule_ProvideProxyOfflineListenerFactory(offlineModule);
    }

    public static ProxyOfflineListener provideProxyOfflineListener(OfflineModule offlineModule) {
        return (ProxyOfflineListener) Preconditions.checkNotNullFromProvides(offlineModule.provideProxyOfflineListener());
    }
}
