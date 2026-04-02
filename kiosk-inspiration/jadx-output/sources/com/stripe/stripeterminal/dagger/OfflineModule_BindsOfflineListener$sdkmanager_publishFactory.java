package com.stripe.stripeterminal.dagger;

import com.stripe.stripeterminal.external.callable.OfflineListener;
import com.stripe.stripeterminal.internal.common.callable.ProxyOfflineListener;
import dagger.internal.Factory;
import dagger.internal.Preconditions;
import javax.inject.Provider;

/* JADX INFO: loaded from: classes4.dex */
public final class OfflineModule_BindsOfflineListener$sdkmanager_publishFactory implements Factory<OfflineListener> {
    private final OfflineModule module;
    private final Provider<ProxyOfflineListener> proxyOfflineListenerProvider;

    public OfflineModule_BindsOfflineListener$sdkmanager_publishFactory(OfflineModule offlineModule, Provider<ProxyOfflineListener> provider) {
        this.module = offlineModule;
        this.proxyOfflineListenerProvider = provider;
    }

    @Override // javax.inject.Provider
    public OfflineListener get() {
        return bindsOfflineListener$sdkmanager_publish(this.module, this.proxyOfflineListenerProvider.get());
    }

    public static OfflineModule_BindsOfflineListener$sdkmanager_publishFactory create(OfflineModule offlineModule, Provider<ProxyOfflineListener> provider) {
        return new OfflineModule_BindsOfflineListener$sdkmanager_publishFactory(offlineModule, provider);
    }

    public static OfflineListener bindsOfflineListener$sdkmanager_publish(OfflineModule offlineModule, ProxyOfflineListener proxyOfflineListener) {
        return (OfflineListener) Preconditions.checkNotNullFromProvides(offlineModule.bindsOfflineListener$sdkmanager_publish(proxyOfflineListener));
    }
}
